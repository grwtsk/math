# hermForm_gt_on_range_truncPos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d91f2ad-1891-1b93-bf37-65aa6eecfbfe",
  "kind": "theorem",
  "lexical_name": "hermForm_gt_on_range_truncPos",
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
  "slug": "hermform-gt-on-range-truncpos--05184c83c390cb84cbc211b3",
  "source": {
    "blob": "12a8ff2a1aa06d53d6659ae1272c87d869f80d29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 223,
    "path": "GRWTSK/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05184c83c390cb84cbc211b329ff6e38cad9871d652e0fe4f1b5ebff96aea070",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d91f2ad-1891-1b93-bf37-65aa6eecfbfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hermForm_gt_on_range_truncPos {A : Matrix n n 𝕜} (hA : A.IsHermitian)
    (θ : ℝ) :
    ∀ x ∈ LinearMap.range (specMap hA (fun t => (t - θ)⁺)).mulVecLin, x ≠ 0 →
      θ * ∑ i, ‖x i‖ ^ 2 < hermForm A x := by
  rintro _ ⟨y, rfl⟩ hne
  set U : Matrix n n 𝕜 := ↑hA.eigenvectorUnitary
  set g : ℝ → ℝ := fun t => (t - θ)⁺
  set z := (specMap hA g).mulVecLin y with hz_def
  change z ≠ 0 at hne
  set d := star U *ᵥ y with hd_def
  -- `c := Uᴴz = diag(g∘λ)·d`, so `cᵢ = g(λᵢ)·dᵢ`, vanishing where `λᵢ ≤ θ`.
  have hc_eq : star U *ᵥ z = fun i => ((g (hA.eigenvalues i) : ℝ) : 𝕜) * d i := by
    have hz' : z = specMap hA g *ᵥ y := rfl
    rw [hz']; unfold specMap
    rw [conjStarAlgAut_apply, Matrix.mulVec_mulVec, ← mul_assoc, ← mul_assoc,
      Unitary.star_mul_self_of_mem hA.eigenvectorUnitary.2, one_mul,
      ← Matrix.mulVec_mulVec, ← hd_def]
    funext i
    simp only [mulVec, diagonal_dotProduct]
  -- `hermForm A z = ∑ᵢ λᵢ·(g(λᵢ))²·‖dᵢ‖²` and `‖z‖² = ∑ᵢ (g(λᵢ))²·‖dᵢ‖²`.
  have hformA : hermForm A z
      = ∑ i, hA.eigenvalues i * (g (hA.eigenvalues i)) ^ 2 * ‖d i‖ ^ 2 := by
    have hAz : A *ᵥ z = specMap hA id *ᵥ z := by rw [specMap_id]
    unfold hermForm
    rw [hAz, hermForm_specMap hA id z, hc_eq]
    refine sum_congr rfl fun i _ => ?_
    simp only [id_eq, norm_mul, mul_pow, RCLike.norm_ofReal, sq_abs]
    ring
  have hnormz : ∑ i, ‖z i‖ ^ 2
      = ∑ i, (g (hA.eigenvalues i)) ^ 2 * ‖d i‖ ^ 2 := by
    rw [← sum_normSq_unitary_mulVec hA z, hc_eq]
    refine sum_congr rfl fun i _ => ?_
    simp only [norm_mul, mul_pow, RCLike.norm_ofReal, sq_abs]
  rw [hformA, hnormz, mul_sum]
  -- Termwise: `(λᵢ − θ)·g(λᵢ)²·‖dᵢ‖² ≥ 0`, with strict `>` at some `i`.
  rw [← sub_pos, ← sum_sub_distrib]
  have hterm_nn : ∀ i, 0 ≤ hA.eigenvalues i * (g (hA.eigenvalues i))^2 * ‖d i‖^2
      - θ * ((g (hA.eigenvalues i))^2 * ‖d i‖^2) := by
    intro i
    have heq : hA.eigenvalues i * (g (hA.eigenvalues i))^2 * ‖d i‖^2
        - θ * ((g (hA.eigenvalues i))^2 * ‖d i‖^2)
        = (hA.eigenvalues i - θ) * ((g (hA.eigenvalues i))^2 * ‖d i‖^2) := by ring
    rw [heq]
    rcases le_or_gt (hA.eigenvalues i) θ with h | h
    · simp [g, posPart_eq_zero.mpr (sub_nonpos.mpr h)]
    · exact mul_nonneg (sub_nonneg.mpr h.le) (mul_nonneg (sq_nonneg _) (sq_nonneg _))
  refine sum_pos' (fun i _ => hterm_nn i) ?_
  -- `z ≠ 0 ⟹ Uᴴz ≠ 0 ⟹ some cᵢ ≠ 0`, and that `i` has `λᵢ > θ`.
  have hUinj : Function.Injective (star U *ᵥ ·) := by
    intro a b hab
    have hab' : star U *ᵥ a = star U *ᵥ b := hab
    have : (U * star U) *ᵥ a = (U * star U) *ᵥ b := by
      rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, hab']
    rwa [Unitary.mul_star_self_of_mem hA.eigenvectorUnitary.2, one_mulVec,
      one_mulVec] at this
  have hc_ne : (fun i => ((g (hA.eigenvalues i) : ℝ) : 𝕜) * d i) ≠ 0 := by
    rw [← hc_eq]
    exact fun h => hne (hUinj (h.trans (mulVec_zero _).symm))
  obtain ⟨i, hi⟩ := Function.ne_iff.mp hc_ne
  refine ⟨i, mem_univ i, ?_⟩
  simp only [Pi.zero_apply, mul_ne_zero_iff, RCLike.ofReal_ne_zero] at hi
  have hevi : θ < hA.eigenvalues i := by
    by_contra h
    exact hi.1 (posPart_eq_zero.mpr (sub_nonpos.mpr (not_lt.mp h)))
  have hgi : 0 < (g (hA.eigenvalues i)) ^ 2 := by
    refine pow_pos ?_ 2
    simp only [g]; rw [posPart_eq_self.mpr (sub_nonneg.mpr hevi.le)]; linarith
  have hdi : 0 < ‖d i‖ ^ 2 := pow_pos (norm_pos_iff.mpr hi.2) 2
  have heq : hA.eigenvalues i * (g (hA.eigenvalues i))^2 * ‖d i‖^2
      - θ * ((g (hA.eigenvalues i))^2 * ‖d i‖^2)
      = (hA.eigenvalues i - θ) * ((g (hA.eigenvalues i))^2 * ‖d i‖^2) := by ring
  rw [heq]
  exact mul_pos (sub_pos.mpr hevi) (mul_pos hgi hdi)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12a8ff2a1aa06d53d6659ae1272c87d869f80d29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
