# Complete source: GRWTSK.Spectral.MatrixCountComparison

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88de4aff802aae87fbf78dd2b6f080e2ac222df8` · SHA-256 `c65afde3dfe53277304478433735c3822b49f3f9b2e45d7c67281247a11a4cdd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Finite-dimensional spectral theorem and dimension facts are imported from Mathlib;
upstream authorship and licenses remain preserved. -/
import Mathlib.Analysis.Matrix.Spectrum
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Dimension.Constructions
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Spectral.MatrixCountComparison

open scoped RealInnerProductSpace
open Matrix

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

/-- Inclusive finite eigenvalue count, retaining multiplicity by eigenbasis index. -/
def eigenvalueCut {A : Matrix ι ι ℝ} (hA : A.IsHermitian) (E : ℝ) : Finset ι :=
  Finset.univ.filter (fun i => hA.eigenvalues i ≤ E)

def eigenvalueCount {A : Matrix ι ι ℝ} (hA : A.IsHermitian) (E : ℝ) : ℕ :=
  (eigenvalueCut hA E).card

/-- The inclusive count is the filtered characteristic-root multiset, retaining
multiplicity even when several eigenvalues coincide. -/
theorem eigenvalueCount_eq_roots_card {A : Matrix ι ι ℝ} (hA : A.IsHermitian) (E : ℝ) :
    eigenvalueCount hA E = (A.charpoly.roots.filter (fun x => x ≤ E)).card := by
  have h := congrArg (fun s : Multiset ℝ => (s.filter (fun x => x ≤ E)).card)
    hA.roots_charpoly_eq_eigenvalues
  simpa only [eigenvalueCount, eigenvalueCut, Multiset.filter_map,
    RCLike.ofReal_real_eq_id, Function.id_comp, Multiset.card_map,
    Finset.card_def, id_eq, ← Finset.filter_val, Function.comp_def] using h.symm

theorem eigenvalueCount_add_of_charpoly_mul
    {κ τ : Type*} [Fintype κ] [DecidableEq κ] [Fintype τ] [DecidableEq τ]
    {A : Matrix ι ι ℝ} {B : Matrix κ κ ℝ} {C : Matrix τ τ ℝ}
    (hA : A.IsHermitian) (hB : B.IsHermitian) (hC : C.IsHermitian)
    (hchar : C.charpoly = A.charpoly * B.charpoly) (E : ℝ) :
    eigenvalueCount hC E = eigenvalueCount hA E + eigenvalueCount hB E := by
  rw [eigenvalueCount_eq_roots_card hC, eigenvalueCount_eq_roots_card hA,
    eigenvalueCount_eq_roots_card hB, hchar,
    Polynomial.roots_mul (mul_ne_zero A.charpoly_monic.ne_zero B.charpoly_monic.ne_zero)]
  simp

private theorem eigenbasis_repr_action {A : Matrix ι ι ℝ} (hA : A.IsHermitian)
    (v : EuclideanSpace ℝ ι) (i : ι) :
    hA.eigenvectorBasis.repr (A.toEuclideanLin v) i =
      hA.eigenvalues i * hA.eigenvectorBasis.repr v i := by
  simpa [Matrix.IsHermitian.eigenvectorBasis, Matrix.IsHermitian.eigenvalues,
    Matrix.IsHermitian.eigenvalues₀] using
    (Matrix.isSymmetric_toEuclideanLin_iff.mpr hA).eigenvectorBasis_apply_self_apply
      finrank_euclideanSpace v ((Fintype.equivOfCardEq (Fintype.card_fin _)).symm i)

private theorem eigenbasis_quadratic {A : Matrix ι ι ℝ} (hA : A.IsHermitian)
    (v : EuclideanSpace ℝ ι) :
    ⟪v, A.toEuclideanLin v⟫ =
      ∑ i, hA.eigenvalues i * (hA.eigenvectorBasis.repr v i)^2 := by
  rw [← hA.eigenvectorBasis.repr.inner_map_map, PiLp.inner_apply]
  simp only [eigenbasis_repr_action, RCLike.inner_apply, conj_trivial, pow_two]
  apply Finset.sum_congr rfl
  intro i _
  ring

private theorem eigenbasis_norm {A : Matrix ι ι ℝ} (hA : A.IsHermitian)
    (v : EuclideanSpace ℝ ι) :
    ‖v‖^2 = ∑ i, (hA.eigenvectorBasis.repr v i)^2 := by
  simpa only [OrthonormalBasis.repr_apply_apply] using
    (hA.eigenvectorBasis.sum_sq_inner_right v).symm

private theorem low_quadratic {A : Matrix ι ι ℝ} (hA : A.IsHermitian)
    (E : ℝ) (v : EuclideanSpace ℝ ι)
    (hv : ∀ i, i ∉ eigenvalueCut hA E → hA.eigenvectorBasis.repr v i = 0) :
    ⟪v, A.toEuclideanLin v⟫ ≤ E * ‖v‖^2 := by
  rw [eigenbasis_quadratic hA, eigenbasis_norm hA, Finset.mul_sum]
  apply Finset.sum_le_sum
  intro i _
  by_cases hi : i ∈ eigenvalueCut hA E
  · exact mul_le_mul_of_nonneg_right (Finset.mem_filter.mp hi).2 (sq_nonneg _)
  · simp [hv i hi]

private theorem high_quadratic {A : Matrix ι ι ℝ} (hA : A.IsHermitian)
    (E : ℝ) (v : EuclideanSpace ℝ ι) (hv0 : v ≠ 0)
    (hv : ∀ i, i ∈ eigenvalueCut hA E → hA.eigenvectorBasis.repr v i = 0) :
    E * ‖v‖^2 < ⟪v, A.toEuclideanLin v⟫ := by
  have hex : ∃ j, hA.eigenvectorBasis.repr v j ≠ 0 := by
    by_contra! hn
    apply hv0
    apply hA.eigenvectorBasis.repr.injective
    ext i
    simpa using hn i
  obtain ⟨j, hj⟩ := hex
  have hjcut : j ∉ eigenvalueCut hA E := fun h => hj (hv j h)
  have hEj : E < hA.eigenvalues j := by
    simpa [eigenvalueCut] using hjcut
  rw [eigenbasis_quadratic hA, eigenbasis_norm hA, Finset.mul_sum]
  apply Finset.sum_lt_sum
  · intro i _
    by_cases hi : i ∈ eigenvalueCut hA E
    · simp [hv i hi]
    · have hEi : E < hA.eigenvalues i := by simpa [eigenvalueCut] using hi
      exact mul_le_mul_of_nonneg_right hEi.le (sq_nonneg _)
  · exact ⟨j, Finset.mem_univ j, mul_lt_mul_of_pos_right hEj (sq_pos_of_ne_zero hj)⟩

/-- Extend cut coordinates by zero, then synthesize in the actual eigenbasis. -/
private def cutSynthesis (b : OrthonormalBasis ι ℝ (EuclideanSpace ℝ ι))
    (s : Finset ι) : (s → ℝ) →ₗ[ℝ] EuclideanSpace ℝ ι where
  toFun x := b.repr.symm (WithLp.toLp 2 (fun i => if h : i ∈ s then x ⟨i,h⟩ else 0))
  map_add' x y := by
    rw [← map_add]
    congr 1
    ext i
    by_cases hi : i ∈ s <;> simp [hi]
  map_smul' c x := by
    rw [← map_smul]
    congr 1
    ext i
    by_cases hi : i ∈ s <;> simp [hi]

private theorem cutSynthesis_repr (b : OrthonormalBasis ι ℝ (EuclideanSpace ℝ ι))
    (s : Finset ι) (x : s → ℝ) (i : ι) :
    b.repr (cutSynthesis b s x) i = if h : i ∈ s then x ⟨i,h⟩ else 0 := by
  simp [cutSynthesis]

private theorem cutSynthesis_injective (b : OrthonormalBasis ι ℝ (EuclideanSpace ℝ ι))
    (s : Finset ι) : Function.Injective (cutSynthesis b s) := by
  intro x y h
  funext i
  have hi := congrArg (fun v => b.repr v i) h
  simpa [cutSynthesis_repr, i.property] using hi

private def cutAnalysis (b : OrthonormalBasis ι ℝ (EuclideanSpace ℝ ι))
    (s : Finset ι) : EuclideanSpace ℝ ι →ₗ[ℝ] (s → ℝ) where
  toFun v i := b.repr v i
  map_add' v w := by ext i; simp
  map_smul' c v := by ext i; simp

/-- Quadratic comparison gives the reversed inclusive eigenvalue-count comparison.
The proof projects the low-energy subspace of B into that of A and proves
injectivity by the quadratic-form contradiction; no min-max oracle is assumed. -/
theorem eigenvalueCount_le_of_quadratic {A B : Matrix ι ι ℝ}
    (hA : A.IsHermitian) (hB : B.IsHermitian) (EA EB : ℝ)
    (horder : ∀ v : EuclideanSpace ℝ ι,
      ⟪v, A.toEuclideanLin v⟫ ≤ ⟪v, B.toEuclideanLin v⟫ + (EA-EB)*‖v‖^2) :
    eigenvalueCount hB EB ≤ eigenvalueCount hA EA := by
  let f := (cutAnalysis hA.eigenvectorBasis (eigenvalueCut hA EA)).comp
    (cutSynthesis hB.eigenvectorBasis (eigenvalueCut hB EB))
  have hf : Function.Injective f := by
    apply (LinearMap.ker_eq_bot).mp
    rw [Submodule.eq_bot_iff]
    intro x hx
    have hx0 : f x = 0 := hx
    let v := cutSynthesis hB.eigenvectorBasis (eigenvalueCut hB EB) x
    by_contra hxn
    have hv0 : v ≠ 0 := by
      intro hz
      apply hxn
      apply cutSynthesis_injective hB.eigenvectorBasis (eigenvalueCut hB EB)
      simpa [v] using hz
    have hlow : ⟪v, B.toEuclideanLin v⟫ ≤ EB * ‖v‖^2 :=
      low_quadratic hB EB v (by intro i hi; simp [v, cutSynthesis_repr, hi])
    have hhigh : EA * ‖v‖^2 < ⟪v, A.toEuclideanLin v⟫ :=
      high_quadratic hA EA v hv0 (by
        intro i hi
        exact congrFun hx0 ⟨i,hi⟩)
    have hcompare := horder v
    nlinarith
  have hd := LinearMap.finrank_le_finrank_of_injective hf
  simpa [eigenvalueCount, Module.finrank_pi, Fintype.card_coe] using hd

/-- Positive semidefinite matrix difference, with no energy shift. -/
theorem eigenvalueCount_le_of_posSemidef {A B : Matrix ι ι ℝ}
    (hA : A.IsHermitian) (hB : B.IsHermitian) (hAB : (B-A).PosSemidef) (E : ℝ) :
    eigenvalueCount hB E ≤ eigenvalueCount hA E := by
  apply eigenvalueCount_le_of_quadratic hA hB E E
  intro v
  have h := hAB.dotProduct_mulVec_nonneg (⇑v)
  simp only [Matrix.sub_mulVec, dotProduct_sub, star_trivial] at h
  simpa [PiLp.inner_apply, Matrix.toLpLin_apply, dotProduct,
    RCLike.inner_apply, mul_comm] using (sub_nonneg.mp h)

/-- A finite-dimensional defect records all directions on which the two
operators may differ. The count error is paid by that dimension, without a
sign assumption on the perturbation. -/
theorem eigenvalueCount_le_add_finrank_of_kernel
    {F : Type*} [AddCommGroup F] [Module ℝ F] [FiniteDimensional ℝ F]
    {A B : Matrix ι ι ℝ} (hA : A.IsHermitian) (hB : B.IsHermitian)
    (K : EuclideanSpace ℝ ι →ₗ[ℝ] F)
    (hK : ∀ v, K v = 0 → A.toEuclideanLin v = B.toEuclideanLin v) (E : ℝ) :
    eigenvalueCount hB E ≤ eigenvalueCount hA E + Module.finrank ℝ F := by
  let f := ((cutAnalysis hA.eigenvectorBasis (eigenvalueCut hA E)).prod K).comp
    (cutSynthesis hB.eigenvectorBasis (eigenvalueCut hB E))
  have hf : Function.Injective f := by
    apply (LinearMap.ker_eq_bot).mp
    rw [Submodule.eq_bot_iff]
    intro x hx
    have hx0 : f x = 0 := hx
    let v := cutSynthesis hB.eigenvectorBasis (eigenvalueCut hB E) x
    have ha : cutAnalysis hA.eigenvectorBasis (eigenvalueCut hA E) v = 0 :=
      congrArg Prod.fst hx0
    have hk : K v = 0 := congrArg Prod.snd hx0
    by_contra hxn
    have hv0 : v ≠ 0 := by
      intro hz
      apply hxn
      apply cutSynthesis_injective hB.eigenvectorBasis (eigenvalueCut hB E)
      simpa [v] using hz
    have hlow : ⟪v, B.toEuclideanLin v⟫ ≤ E * ‖v‖^2 :=
      low_quadratic hB E v (by intro i hi; simp [v, cutSynthesis_repr, hi])
    have hhigh : E * ‖v‖^2 < ⟪v, A.toEuclideanLin v⟫ :=
      high_quadratic hA E v hv0 (by intro i hi; exact congrFun ha ⟨i,hi⟩)
    rw [hK v hk] at hhigh
    exact (not_lt_of_ge hlow) hhigh
  have hd := LinearMap.finrank_le_finrank_of_injective hf
  simpa [eigenvalueCount, Module.finrank_prod, Module.finrank_pi, Fintype.card_coe] using hd

/-- The actual difference's range is a paid defect space. -/
theorem eigenvalueCount_le_add_difference_rank {A B : Matrix ι ι ℝ}
    (hA : A.IsHermitian) (hB : B.IsHermitian) (E : ℝ) :
    eigenvalueCount hB E ≤ eigenvalueCount hA E +
      Module.finrank ℝ (LinearMap.range (B.toEuclideanLin - A.toEuclideanLin)) := by
  apply eigenvalueCount_le_add_finrank_of_kernel hA hB
    (B.toEuclideanLin - A.toEuclideanLin).rangeRestrict
  intro v hv
  have hz : (B.toEuclideanLin - A.toEuclideanLin) v = 0 :=
    congrArg Subtype.val hv
  exact (sub_eq_zero.mp hz).symm

/-- Two-sided inclusive count control from one common defect space. -/
theorem eigenvalueCount_difference_bounds_of_kernel
    {F : Type*} [AddCommGroup F] [Module ℝ F] [FiniteDimensional ℝ F]
    {A B : Matrix ι ι ℝ} (hA : A.IsHermitian) (hB : B.IsHermitian)
    (K : EuclideanSpace ℝ ι →ₗ[ℝ] F)
    (hK : ∀ v, K v = 0 → A.toEuclideanLin v = B.toEuclideanLin v) (E : ℝ) :
    |(eigenvalueCount hB E : ℝ) - (eigenvalueCount hA E : ℝ)| ≤
      (Module.finrank ℝ F : ℝ) := by
  have hba := eigenvalueCount_le_add_finrank_of_kernel hA hB K hK E
  have hab := eigenvalueCount_le_add_finrank_of_kernel hB hA K
    (fun v hv => (hK v hv).symm) E
  have hba' : (eigenvalueCount hB E : ℝ) ≤
      (eigenvalueCount hA E : ℝ) + Module.finrank ℝ F := by exact_mod_cast hba
  have hab' : (eigenvalueCount hA E : ℝ) ≤
      (eigenvalueCount hB E : ℝ) + Module.finrank ℝ F := by exact_mod_cast hab
  exact abs_le.mpr ⟨by linarith, by linarith⟩

end GRWTSK.Spectral.MatrixCountComparison
```
