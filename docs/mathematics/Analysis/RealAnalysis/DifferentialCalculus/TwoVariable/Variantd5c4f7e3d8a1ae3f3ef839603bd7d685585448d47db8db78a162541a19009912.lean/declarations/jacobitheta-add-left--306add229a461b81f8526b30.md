# jacobiTheta₂'_add_left'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79ade9c2-cbcc-57d5-1570-844722f7b9f5",
  "kind": "lemma",
  "lexical_name": "jacobiTheta₂'_add_left'",
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
  "slug": "jacobitheta-add-left--306add229a461b81f8526b30",
  "source": {
    "blob": "fff7edb82ee71ebadce8dce2f842269bc7169126",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 439,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:306add229a461b81f8526b3001710ddde14a5fbb154448e01fa16cf5fe4677c9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79ade9c2-cbcc-57d5-1570-844722f7b9f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma jacobiTheta₂'_add_left' (z τ : ℂ) :
    jacobiTheta₂' (z + τ) τ =
      cexp (-π * I * (τ + 2 * z)) * (jacobiTheta₂' z τ - 2 * π * I * jacobiTheta₂ z τ) := by
  rcases le_or_lt τ.im 0 with hτ | hτ
  · simp_rw [jacobiTheta₂_undef _ hτ, jacobiTheta₂'_undef _ hτ, mul_zero, sub_zero, mul_zero]
  have (n : ℤ) : jacobiTheta₂'_term n (z + τ) τ =
      cexp (-π * I * (τ + 2 * z)) * (jacobiTheta₂'_term (n + 1) z τ -
      2 * π * I * jacobiTheta₂_term (n + 1) z τ) := by
    simp only [jacobiTheta₂'_term, jacobiTheta₂_term]
    conv_rhs => rw [← sub_mul, mul_comm, mul_assoc, ← Complex.exp_add, Int.cast_add, Int.cast_one,
      mul_add, mul_one, add_sub_cancel_right]
    congr 2
    ring
  rw [jacobiTheta₂', funext this, tsum_mul_left, ← (Equiv.subRight (1 : ℤ)).tsum_eq]
  simp only [jacobiTheta₂, jacobiTheta₂', Equiv.subRight_apply, sub_add_cancel,
    (hasSum_jacobiTheta₂'_term z hτ).summable.tsum_sub
    ((hasSum_jacobiTheta₂_term z hτ).summable.mul_left _), tsum_mul_left]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fff7edb82ee71ebadce8dce2f842269bc7169126` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
