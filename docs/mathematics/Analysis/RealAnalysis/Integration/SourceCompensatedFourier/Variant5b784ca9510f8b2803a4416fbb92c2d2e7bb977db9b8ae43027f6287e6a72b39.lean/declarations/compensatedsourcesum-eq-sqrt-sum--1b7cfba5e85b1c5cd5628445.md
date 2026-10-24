# compensatedSourceSum_eq_sqrt_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6f61e43-63fe-63ff-dfd9-1de83d186d81",
  "kind": "theorem",
  "lexical_name": "compensatedSourceSum_eq_sqrt_sum",
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
  "slug": "compensatedsourcesum-eq-sqrt-sum--1b7cfba5e85b1c5cd5628445",
  "source": {
    "blob": "b8c9f99a1c30e0fee0fa4a8fcb1cf3fd3c3d818c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 147,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant5b784ca9510f8b2803a4416fbb92c2d2e7bb977db9b8ae43027f6287e6a72b39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b7cfba5e85b1c5cd56284452a7a558a0d4e6f9ebfbbbdd6a002000011035356",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant5b784ca9510f8b2803a4416fbb92c2d2e7bb977db9b8ae43027f6287e6a72b39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6f61e43-63fe-63ff-dfd9-1de83d186d81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedSourceSum_eq_sqrt_sum (A : ℝ) :
    compensatedSourceSum A = ∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊,
      (ArithmeticFunction.vonMangoldt n - 1) *
        sourceCorrelation explicitSecondDerivative A (Real.log n) / Real.sqrt n := by
  unfold compensatedSourceSum primePowerInventory
  apply Finset.sum_congr rfl
  intro n hn
  rw [exponentialTest_log _ n (by have := (Finset.mem_Icc.mp hn).1; omega)]
  ring

/-- Literal standard density with no angular measure prefactor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant5b784ca9510f8b2803a4416fbb92c2d2e7bb977db9b8ae43027f6287e6a72b39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant5b784ca9510f8b2803a4416fbb92c2d2e7bb977db9b8ae43027f6287e6a72b39.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8c9f99a1c30e0fee0fa4a8fcb1cf3fd3c3d818c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
