# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ShiftedMatrixGuardAttempt02.Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `261fe003f823aff3c01e126ce6c94a629c5532bc` · SHA-256 `eacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.Matrix.PosDef
import Mathlib.Tactic

set_option pp.proofs false

/-! Research guard for issue 238. Codex AI authored this scratch source.
The finite real matrix is genuine. The final form adapter is explicitly conditional;
no localized Weil operator, infinite-dimensional spectral theorem or RH is asserted.
-/

open Matrix Unitary

namespace ContinuousResearch.ShiftedMatrixGuard

variable {n : Type*} [Fintype n] [DecidableEq n]

def shifted (A : Matrix n n ℝ) (lam : ℝ) : Matrix n n ℝ :=
  A - lam • (1 : Matrix n n ℝ)

noncomputable def bottom [Nonempty n] {A : Matrix n n ℝ} (hA : A.IsHermitian) : ℝ :=
  Finset.univ.inf' Finset.univ_nonempty hA.eigenvalues

theorem bottom_le_eigenvalue [Nonempty n] {A : Matrix n n ℝ}
    (hA : A.IsHermitian) (i : n) : bottom hA ≤ hA.eigenvalues i := by
  exact Finset.inf'_le _ (Finset.mem_univ i)

theorem le_bottom_iff [Nonempty n] {A : Matrix n n ℝ}
    (hA : A.IsHermitian) (r : ℝ) : r ≤ bottom hA ↔ ∀ i, r ≤ hA.eigenvalues i := by
  simp [bottom, Finset.le_inf'_iff]

theorem source_positive_iff_bottom_nonneg [Nonempty n] {A : Matrix n n ℝ}
    (hA : A.IsHermitian) : A.PosSemidef ↔ 0 ≤ bottom hA := by
  rw [hA.posSemidef_iff_eigenvalues_nonneg, le_bottom_iff]
  rfl

theorem shifted_eq_spectral_conjugate {A : Matrix n n ℝ}
    (hA : A.IsHermitian) (lam : ℝ) :
    shifted A lam = conjStarAlgAut ℝ _ hA.eigenvectorUnitary
      (diagonal (fun i => hA.eigenvalues i - lam)) := by
  have hdiag : diagonal (fun i => hA.eigenvalues i - lam) =
      diagonal hA.eigenvalues - lam • (1 : Matrix n n ℝ) := by
    ext i j
    by_cases hij : i = j <;> simp [hij]
  rw [hdiag, map_sub, map_smul]
  simp only [map_one]
  simpa [shifted, Function.comp_def] using congrArg
    (fun M : Matrix n n ℝ => M - lam • (1 : Matrix n n ℝ)) hA.spectral_theorem

theorem shifted_positive_of_le_bottom [Nonempty n] {A : Matrix n n ℝ}
    (hA : A.IsHermitian) {lam : ℝ} (hlam : lam ≤ bottom hA) :
    (shifted A lam).PosSemidef := by
  rw [shifted_eq_spectral_conjugate hA]
  rw [conjStarAlgAut_apply]
  apply isUnit_coe.posSemidef_star_right_conjugate_iff.mpr
  exact posSemidef_diagonal_iff.mpr fun i => sub_nonneg.mpr
    (hlam.trans (bottom_le_eigenvalue hA i))

theorem shifted_positive_of_lt_bottom [Nonempty n] {A : Matrix n n ℝ}
    (hA : A.IsHermitian) {lam : ℝ} (hlam : lam < bottom hA) :
    (shifted A lam).PosSemidef :=
  shifted_positive_of_le_bottom hA hlam.le

theorem shifted_strict_positive_of_lt_bottom [Nonempty n] {A : Matrix n n ℝ}
    (hA : A.IsHermitian) {lam : ℝ} (hlam : lam < bottom hA) :
    (shifted A lam).PosDef := by
  rw [shifted_eq_spectral_conjugate hA]
  rw [conjStarAlgAut_apply]
  apply isUnit_coe.posDef_star_right_conjugate_iff.mpr
  exact posDef_diagonal_iff.mpr fun i => sub_pos.mpr
    (hlam.trans_le (bottom_le_eigenvalue hA i))

theorem shifted_quadratic_exact (A : Matrix n n ℝ) (lam : ℝ) (x : n → ℝ) :
    x ⬝ᵥ (shifted A lam *ᵥ x) = x ⬝ᵥ (A *ᵥ x) - lam * (x ⬝ᵥ x) := by
  simp [shifted, sub_mulVec, smul_mulVec, dotProduct_sub, dotProduct_smul]

theorem source_positive_of_shift_positive_and_nonnegative_shift
    {A : Matrix n n ℝ} {lam : ℝ} (hshift : (shifted A lam).PosSemidef)
    (hlam : 0 ≤ lam) : A.PosSemidef := by
  have hscalar : (lam • (1 : Matrix n n ℝ)).PosSemidef := by
    convert (posSemidef_diagonal_iff.mpr (fun _ : n => hlam)) using 1
    ext i j
    by_cases hij : i = j <;> simp [hij]
  simpa [shifted] using hshift.add hscalar

theorem negative_one_shifted_by_negative_two :
    shifted (- (1 : Matrix (Fin 1) (Fin 1) ℝ)) (-2) = 1 := by
  ext i j
  fin_cases i
  fin_cases j
  norm_num [shifted]

theorem negative_one_has_positive_shift :
    (shifted (- (1 : Matrix (Fin 1) (Fin 1) ℝ)) (-2)).PosSemidef := by
  rw [negative_one_shifted_by_negative_two]
  convert (posSemidef_diagonal_iff.mpr (fun _ : Fin 1 => (show (0:ℝ) ≤ 1 by norm_num))) using 1
  simp

theorem negative_one_source_not_positive :
    ¬ (- (1 : Matrix (Fin 1) (Fin 1) ℝ)).PosSemidef := by
  intro h
  have hbad := h.dotProduct_mulVec_nonneg (fun _ => 1)
  norm_num [dotProduct, Matrix.mulVec] at hbad

theorem no_unconditional_shift_descent :
    ¬ (∀ (A : Matrix (Fin 1) (Fin 1) ℝ) (lam : ℝ),
      (shifted A lam).PosSemidef → A.PosSemidef) := by
  intro h
  exact negative_one_source_not_positive
    (h _ _ negative_one_has_positive_shift)

theorem conditional_form_shift_coercive {V : Type*} (Q N : V → ℝ)
    {gamma lam : ℝ} (hbottom : ∀ v, gamma * N v ≤ Q v)
    (hlam : lam < gamma) (hnorm : ∀ v, 0 ≤ N v) (v : V) :
    (gamma - lam) * N v ≤ Q v - lam * N v ∧ 0 ≤ Q v - lam * N v := by
  have h := hbottom v
  have hprod := mul_nonneg (sub_nonneg.mpr hlam.le) (hnorm v)
  constructor <;> nlinarith

theorem conditional_form_source_positive_of_nonnegative_shift
    {V : Type*} (Q N : V → ℝ) {lam : ℝ} (hlam : 0 ≤ lam)
    (hnorm : ∀ v, 0 ≤ N v) (hshift : ∀ v, 0 ≤ Q v - lam * N v) :
    ∀ v, 0 ≤ Q v := by
  intro v
  have hprod := mul_nonneg hlam (hnorm v)
  have h := hshift v
  linarith

end ContinuousResearch.ShiftedMatrixGuard

#print ContinuousResearch.ShiftedMatrixGuard.shifted
#print axioms ContinuousResearch.ShiftedMatrixGuard.shifted
#print ContinuousResearch.ShiftedMatrixGuard.bottom
#print axioms ContinuousResearch.ShiftedMatrixGuard.bottom
#print ContinuousResearch.ShiftedMatrixGuard.bottom_le_eigenvalue
#print axioms ContinuousResearch.ShiftedMatrixGuard.bottom_le_eigenvalue
#print ContinuousResearch.ShiftedMatrixGuard.le_bottom_iff
#print axioms ContinuousResearch.ShiftedMatrixGuard.le_bottom_iff
#print ContinuousResearch.ShiftedMatrixGuard.source_positive_iff_bottom_nonneg
#print axioms ContinuousResearch.ShiftedMatrixGuard.source_positive_iff_bottom_nonneg
#print ContinuousResearch.ShiftedMatrixGuard.shifted_eq_spectral_conjugate
#print axioms ContinuousResearch.ShiftedMatrixGuard.shifted_eq_spectral_conjugate
#print ContinuousResearch.ShiftedMatrixGuard.shifted_positive_of_le_bottom
#print axioms ContinuousResearch.ShiftedMatrixGuard.shifted_positive_of_le_bottom
#print ContinuousResearch.ShiftedMatrixGuard.shifted_positive_of_lt_bottom
#print axioms ContinuousResearch.ShiftedMatrixGuard.shifted_positive_of_lt_bottom
#print ContinuousResearch.ShiftedMatrixGuard.shifted_strict_positive_of_lt_bottom
#print axioms ContinuousResearch.ShiftedMatrixGuard.shifted_strict_positive_of_lt_bottom
#print ContinuousResearch.ShiftedMatrixGuard.shifted_quadratic_exact
#print axioms ContinuousResearch.ShiftedMatrixGuard.shifted_quadratic_exact
#print ContinuousResearch.ShiftedMatrixGuard.source_positive_of_shift_positive_and_nonnegative_shift
#print axioms ContinuousResearch.ShiftedMatrixGuard.source_positive_of_shift_positive_and_nonnegative_shift
#print ContinuousResearch.ShiftedMatrixGuard.negative_one_shifted_by_negative_two
#print axioms ContinuousResearch.ShiftedMatrixGuard.negative_one_shifted_by_negative_two
#print ContinuousResearch.ShiftedMatrixGuard.negative_one_has_positive_shift
#print axioms ContinuousResearch.ShiftedMatrixGuard.negative_one_has_positive_shift
#print ContinuousResearch.ShiftedMatrixGuard.negative_one_source_not_positive
#print axioms ContinuousResearch.ShiftedMatrixGuard.negative_one_source_not_positive
#print ContinuousResearch.ShiftedMatrixGuard.no_unconditional_shift_descent
#print axioms ContinuousResearch.ShiftedMatrixGuard.no_unconditional_shift_descent
#print ContinuousResearch.ShiftedMatrixGuard.conditional_form_shift_coercive
#print axioms ContinuousResearch.ShiftedMatrixGuard.conditional_form_shift_coercive
#print ContinuousResearch.ShiftedMatrixGuard.conditional_form_source_positive_of_nonnegative_shift
#print axioms ContinuousResearch.ShiftedMatrixGuard.conditional_form_source_positive_of_nonnegative_shift
```
