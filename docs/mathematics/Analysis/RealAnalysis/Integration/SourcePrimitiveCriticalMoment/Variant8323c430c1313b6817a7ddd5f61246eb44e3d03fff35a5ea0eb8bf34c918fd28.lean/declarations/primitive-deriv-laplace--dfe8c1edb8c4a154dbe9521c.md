# primitive_deriv_laplace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c966fdd-6fcb-a372-feb7-2aac84883d84",
  "kind": "theorem",
  "lexical_name": "primitive_deriv_laplace",
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
  "slug": "primitive-deriv-laplace--dfe8c1edb8c4a154dbe9521c",
  "source": {
    "blob": "4e60ea0babd5700f24860b61edd9176c76bac2ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 61,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variant8323c430c1313b6817a7ddd5f61246eb44e3d03fff35a5ea0eb8bf34c918fd28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfe8c1edb8c4a154dbe9521c0fa1e6049531f0e6b5880c094bc78a3d3200cb64",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variant8323c430c1313b6817a7ddd5f61246eb44e3d03fff35a5ea0eb8bf34c918fd28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c966fdd-6fcb-a372-feb7-2aac84883d84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem primitive_deriv_laplace {A : ℝ} (hA : 0 < A) (σ : ℝ) :
    (∫ x : ℝ, Real.exp (σ * x) * deriv (normalizedPrimitiveBump A) x) =
      -σ * ∫ x : ℝ, Real.exp (σ * x) * normalizedPrimitiveBump A x :=
  weighted_deriv_integral ((normalizedPrimitiveBump_contDiff hA).of_le (by norm_num))
    (normalizedPrimitiveBump_hasCompactSupport hA) σ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variant8323c430c1313b6817a7ddd5f61246eb44e3d03fff35a5ea0eb8bf34c918fd28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variant8323c430c1313b6817a7ddd5f61246eb44e3d03fff35a5ea0eb8bf34c918fd28.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e60ea0babd5700f24860b61edd9176c76bac2ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
