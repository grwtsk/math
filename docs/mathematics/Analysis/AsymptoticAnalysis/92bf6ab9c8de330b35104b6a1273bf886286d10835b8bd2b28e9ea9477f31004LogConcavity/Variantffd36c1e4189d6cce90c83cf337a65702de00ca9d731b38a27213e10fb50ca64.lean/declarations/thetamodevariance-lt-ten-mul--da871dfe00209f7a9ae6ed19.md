# thetaModeVariance_lt_ten_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71d58bf0-1442-108d-5526-0ef77f85f362",
  "kind": "lemma",
  "lexical_name": "thetaModeVariance_lt_ten_mul",
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
  "slug": "thetamodevariance-lt-ten-mul--da871dfe00209f7a9ae6ed19",
  "source": {
    "blob": "c1eaf5a74df8721a31306e3208c86453b37b58da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 226,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da871dfe00209f7a9ae6ed19024e80c99058c98ac49a9620a8ae884d7ebe7d60",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71d58bf0-1442-108d-5526-0ef77f85f362`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma thetaModeVariance_lt_ten_mul {t : ℝ} (ht : 0 ≤ t) :
    thetaModeVariance t < 10*thetaModeA t := by
  let A := thetaModeA t
  let b : ℕ → ℝ := fun m => ((m:ℝ)+2)^8 * Real.exp (-A*(((m:ℝ)+2)^2-1))
  have hA : 3 ≤ A := (thetaModeA_gt_three ht).le
  have hb : Summable b := thetaGaussianTail_summable hA
  have hbound : ∀ m, thetaModeWeight (m+1) t *
      (thetaModeScore (m+1) t-thetaModeScore 0 t)^2 ≤ (50*A^2)*b m := by
    intro m
    simpa [b, A, Nat.cast_add, Nat.cast_one, add_assoc] using
      thetaModeWeight_center_sq_le (m+1) ht
  have hv := weighted_variance_le_tail_bound (thetaModeWeight_summable t)
    (thetaModeWeight_score_summable ht) (thetaModeWeight_score_sq_summable ht)
    (thetaModeWeight_sum_one ht) hb (50*A^2) hbound
  have hgauss : A*(∑' m, b m) < 1/5 := thetaGaussianTail_mul_lt_one_fifth hA
  have hpos : 0 < 50*A := by dsimp [A]; linarith [thetaModeA_gt_three ht]
  have hh := mul_lt_mul_of_pos_left hgauss hpos
  change thetaModeVariance t ≤ 50*A^2*(∑' m, b m) at hv
  change thetaModeVariance t < 10*A
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1eaf5a74df8721a31306e3208c86453b37b58da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
