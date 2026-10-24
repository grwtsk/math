# summable_jacobiTheta₂_term_fderiv_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4b9e90d-a65c-2a85-ca8b-fec4eb7056e3",
  "kind": "lemma",
  "lexical_name": "summable_jacobiTheta₂_term_fderiv_iff",
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
  "slug": "summable-jacobitheta-term-fderiv-iff--80ed4238e634c0e0123ab673",
  "source": {
    "blob": "fff7edb82ee71ebadce8dce2f842269bc7169126",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 200,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80ed4238e634c0e0123ab673bba9554076c11123f569c0717322ec62c22d8683",
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

Occurrence: `result:d4b9e90d-a65c-2a85-ca8b-fec4eb7056e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma summable_jacobiTheta₂_term_fderiv_iff (z τ : ℂ) :
    Summable (jacobiTheta₂_term_fderiv · z τ) ↔ 0 < im τ := by
  constructor
  · rw [← summable_jacobiTheta₂_term_iff (z := z)]
    intro h
    have := h.norm
    refine this.of_norm_bounded_eventually _ ?_
    have : ∀ᶠ (n : ℤ) in cofinite, n ≠ 0 :=
      Int.cofinite_eq ▸ (mem_sup.mpr ⟨eventually_ne_atBot 0, eventually_ne_atTop 0⟩)
    filter_upwards [this] with n hn
    refine le_trans ?_ (norm_jacobiTheta₂_term_fderiv_ge n z τ)
    apply le_mul_of_one_le_left (norm_nonneg _)
    refine one_le_pi_div_two.trans (mul_le_mul_of_nonneg_left ?_ pi_pos.le)
    refine (by norm_num : 2⁻¹ ≤ (1 : ℝ)).trans ?_
    rw [one_le_sq_iff_one_le_abs, ← Int.cast_abs, abs_abs, ← Int.cast_one, Int.cast_le]
    exact Int.one_le_abs hn
  · intro hτ
    refine ((summable_pow_mul_jacobiTheta₂_term_bound
      |z.im| hτ 2).mul_left (3 * π)).of_norm_bounded _ (fun n ↦ ?_)
    refine (norm_jacobiTheta₂_term_fderiv_le n z τ).trans
      (?_ : 3 * π * |n| ^ 2 * ‖jacobiTheta₂_term n z τ‖ ≤ _)
    simp_rw [mul_assoc (3 * π)]
    refine mul_le_mul_of_nonneg_left ?_ (mul_pos (by norm_num : 0 < (3 : ℝ)) pi_pos).le
    refine mul_le_mul_of_nonneg_left ?_ (pow_nonneg (Int.cast_nonneg.mpr (abs_nonneg _)) _)
    exact norm_jacobiTheta₂_term_le hτ le_rfl le_rfl n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fff7edb82ee71ebadce8dce2f842269bc7169126` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
