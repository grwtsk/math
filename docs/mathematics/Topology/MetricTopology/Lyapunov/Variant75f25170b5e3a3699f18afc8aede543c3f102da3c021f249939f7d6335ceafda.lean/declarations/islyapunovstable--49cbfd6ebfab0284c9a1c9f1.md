# isLyapunovStable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:034bbd3d-9d08-8f86-ca64-9213b2b030c1",
  "kind": "theorem",
  "lexical_name": "isLyapunovStable",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "islyapunovstable--49cbfd6ebfab0284c9a1c9f1",
  "source": {
    "blob": "2563b66d7fc5561e628c9eede47d31f0bbc42c4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 99,
    "path": "GRWTSK/Topology/MetricTopology/Lyapunov/Variant75f25170b5e3a3699f18afc8aede543c3f102da3c021f249939f7d6335ceafda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49cbfd6ebfab0284c9a1c9f14f6456f4a910613d7450e7317d73797cce69aec8",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Lyapunov/Variant75f25170b5e3a3699f18afc8aede543c3f102da3c021f249939f7d6335ceafda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:034bbd3d-9d08-8f86-ca64-9213b2b030c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLyapunovStable :
    IsLyapunovStable operator fixedPoint := by
  intro ε ε_positive
  obtain ⟨δ, δ_positive, entersSublevel⟩ :=
    Mathematics.Operational.LocalQuadraticLyapunovCertificate.local_sublevel
      certificate ε ε_positive
  refine ⟨δ, δ_positive, ?_⟩
  intro state stateClose iteration
  obtain ⟨state_mem, initialSublevel⟩ :=
    entersSublevel state stateClose
  have iter_mem :=
    certificate.iterate_mem state_mem iteration
  have energyBound :
      certificate.lowerConstant *
          dist ((operator.step^[iteration]) state)
            fixedPoint.point ^ 2 <
        certificate.lowerConstant * ε ^ 2 := by
    calc
      certificate.lowerConstant *
            dist ((operator.step^[iteration]) state)
              fixedPoint.point ^ 2
          ≤ certificate.energy
              ((operator.step^[iteration]) state) :=
        certificate.lower_bound _ iter_mem
      _ ≤ certificate.energy state :=
        certificate.energy_iterate_le state_mem iteration
      _ ≤ certificate.upperConstant *
            dist state fixedPoint.point ^ 2 :=
        certificate.upper_bound state state_mem
      _ < certificate.lowerConstant * ε ^ 2 :=
        initialSublevel
  have squaredDistance :
      dist ((operator.step^[iteration]) state)
          fixedPoint.point ^ 2 < ε ^ 2 :=
    by
      nlinarith [certificate.lowerConstant_positive]
  exact
    (sq_lt_sq₀ dist_nonneg ε_positive.le).mp
      squaredDistance

end LocalQuadraticLyapunovCertificate

end Mathematics.Operational
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Lyapunov/Variant75f25170b5e3a3699f18afc8aede543c3f102da3c021f249939f7d6335ceafda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Lyapunov/Variant75f25170b5e3a3699f18afc8aede543c3f102da3c021f249939f7d6335ceafda.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2563b66d7fc5561e628c9eede47d31f0bbc42c4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
