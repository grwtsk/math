# hessian_null_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1488c5f-e02b-5a7e-fdc6-14935a660cfd",
  "kind": "theorem",
  "lexical_name": "hessian_null_iff",
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
  "slug": "hessian-null-iff--88dfa541b3e93d405cc917b2",
  "source": {
    "blob": "304b4ee3febd5f90f2f06d2ec3061616b7376220",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 91,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/PositiveAtlasFiniteAveraging/Variantff6f9a95643378b5972f2ad48313742ca977a7d9e6f7e9a7f3eeef5bc5d8adda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88dfa541b3e93d405cc917b2e5a8d18c0d694cb8e387bcd856015efc53037786",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/PositiveAtlasFiniteAveraging/Variantff6f9a95643378b5972f2ad48313742ca977a7d9e6f7e9a7f3eeef5bc5d8adda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1488c5f-e02b-5a7e-fdc6-14935a660cfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hessian_null_iff (theta u : ℝ) :
    fderiv ℝ (fderiv ℝ twoSampleFamily.logPartition) theta u u = 0 ↔ u = 0 := by
  rw [twoSampleFamily.iterated_fderiv_logPartition_eq_covariance]
  change (twoSampleFamily.covarianceForm theta).IsNull u ↔ u = 0
  rw [twoSampleFamily.covariance_null_iff_constant_statistics]
  constructor
  · intro h
    have h01 := h 0 1
    simpa [twoSampleFamily] using h01.symm
  · rintro rfl
    intro i j
    simp

/-- Changing the parameter does not change this exact finite Hessian null space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/PositiveAtlasFiniteAveraging/Variantff6f9a95643378b5972f2ad48313742ca977a7d9e6f7e9a7f3eeef5bc5d8adda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/PositiveAtlasFiniteAveraging/Variantff6f9a95643378b5972f2ad48313742ca977a7d9e6f7e9a7f3eeef5bc5d8adda.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `304b4ee3febd5f90f2f06d2ec3061616b7376220` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
