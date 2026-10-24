# isLyapunovStable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3fb7650474b39fee0768ad121118d2ca76985c99",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/22747df8921a82e05f88e5b1c367f0d7947d4169fdd2448842d8c033fbd8c0cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2fd852e-2fa3-b440-1a91-bc05f6ad2198",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:794ffed5-43a3-3658-749e-0b7ef04f4c63",
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
  "slug": "islyapunovstable--84e4a181a29a816f2efbc4f7",
  "source": {
    "blob": "3fb7650474b39fee0768ad121118d2ca76985c99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 91,
    "path": "GRWTSK/Topology/MetricTopology/Lyapunov/Variant22747df8921a82e05f88e5b1c367f0d7947d4169fdd2448842d8c033fbd8c0cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84e4a181a29a816f2efbc4f799a6b2bcd90e376dbf5e61d10263bb51b6a84e98",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Lyapunov/Variant22747df8921a82e05f88e5b1c367f0d7947d4169fdd2448842d8c033fbd8c0cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:794ffed5-43a3-3658-749e-0b7ef04f4c63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–133.

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

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Lyapunov/Variant22747df8921a82e05f88e5b1c367f0d7947d4169fdd2448842d8c033fbd8c0cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Lyapunov/Variant22747df8921a82e05f88e5b1c367f0d7947d4169fdd2448842d8c033fbd8c0cd.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fb7650474b39fee0768ad121118d2ca76985c99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
