/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Complex.Trigonometric
import Mathlib.NumberTheory.LSeries.Nonvanishing
import Mathlib.Tactic.Ring

/-!
# Exponential damping of a paired spectral displacement

For a pair at horizontal displacement `±δ`, exponential damping at any rate
`c ≥ |δ|` gives a positive semidefinite translation kernel on arbitrary finite
sets of real centers. Vertical ordinates act by complex characters. The Gram
vectors below are scaled indicators of nested intervals in complex `L²(ℝ)`.
-/

open Set MeasureTheory
open scoped ComplexOrder ComplexConjugate InnerProductSpace

noncomputable section
namespace GRWTSK.XiWeilPoissonBand

private def box (u : ℝ) : Lp ℂ 2 (volume : Measure ℝ) :=
  indicatorConstLp 2 (s := Ioc 0 u) measurableSet_Ioc (by simp [Real.volume_Ioc]) 1

private theorem inner_box {u v : ℝ} (hu : 0 ≤ u) (hv : 0 ≤ v) :
    inner ℂ (box u) (box v) = ((min u v : ℝ) : ℂ) := by
  unfold box
  rw [L2.inner_indicatorConstLp_one_indicatorConstLp_one _ _
    (by simp [Real.volume_Ioc]) (by simp [Real.volume_Ioc]), Ioc_inter_Ioc, max_self,
    Real.volume_real_Ioc_of_le (le_min hu hv), sub_zero]
  rfl

private def feature (a x : ℝ) : Lp ℂ 2 (volume : Measure ℝ) :=
  (Real.exp (-a*x) : ℂ) • box (Real.exp (2*a*x))

private theorem inner_feature (a x y : ℝ) (ha : 0 ≤ a) :
    inner ℂ (feature a x) (feature a y) = (Real.exp (-a*|x-y|) : ℂ) := by
  simp only [feature, inner_smul_left, inner_smul_right, Complex.conj_ofReal,
    inner_box (Real.exp_pos _).le (Real.exp_pos _).le]
  push_cast
  rcases le_total x y with h | h
  · rw [min_eq_left (Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left h (by positivity))),
      abs_of_nonpos (sub_nonpos.mpr h)]
    norm_cast
    rw [← Real.exp_add, ← Real.exp_add]
    congr 1
    ring
  · rw [min_eq_right (Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left h (by positivity))),
      abs_of_nonneg (sub_nonneg.mpr h)]
    norm_cast
    rw [← Real.exp_add, ← Real.exp_add]
    congr 1
    ring

/-- The exponential distance kernel is positive semidefinite on complex weights. -/
theorem exp_abs_posSemidef {ι : Type*} [Finite ι] (x : ι → ℝ) {a : ℝ} (ha : 0 ≤ a) :
    (Matrix.of fun i j => (Real.exp (-a * |x i - x j|) : ℂ)).PosSemidef := by
  simpa only [Matrix.gram, inner_feature a _ _ ha] using
    Matrix.posSemidef_gram ℂ (fun i => feature a (x i))

/-- Splitting a horizontal pair gives the two exponential rates `c - δ` and `c + δ`. -/
theorem exp_mul_cosh_eq (c δ t : ℝ) :
    Real.exp (-c*|t|) * Real.cosh (δ*t) =
      (Real.exp (-(c-δ)*|t|) + Real.exp (-(c+δ)*|t|))/2 := by
  have hcosh : Real.cosh (δ*t) = Real.cosh (δ*|t|) := by
    rcases le_total 0 t with h | h
    · rw [abs_of_nonneg h]
    · rw [abs_of_nonpos h, mul_neg, Real.cosh_neg]
  rw [hcosh, Real.cosh_eq, show -(c-δ)*|t| = -c*|t| + δ*|t| by ring,
    show -(c+δ)*|t| = -c*|t| + -(δ*|t|) by ring, Real.exp_add, Real.exp_add]
  ring

/-- Exponential damping at the displacement dominates both spectral rates. -/
theorem paired_posSemidef {ι : Type*} [Finite ι] (x : ι → ℝ) {c δ : ℝ} (h : |δ| ≤ c) :
    (Matrix.of fun i j => ((Real.exp (-c*|x i-x j|) * Real.cosh (δ*(x i-x j)) : ℝ) : ℂ)).PosSemidef := by
  have hm := exp_abs_posSemidef x (sub_nonneg.mpr ((le_abs_self δ).trans h))
  have hp := exp_abs_posSemidef x (show 0 ≤ c+δ from by linarith [neg_le_abs δ])
  convert (hm.add hp).smul (show 0 ≤ (1/2 : ℝ) by norm_num) using 1
  ext i j
  simp only [Matrix.of_apply, Matrix.smul_apply, Matrix.add_apply, Complex.real_smul,
    exp_mul_cosh_eq]
  push_cast
  ring

/-- The character at ordinate `γ` has a rank-one Gram representation. -/
theorem character_posSemidef {ι : Type*} [Finite ι] (x : ι → ℝ) (γ : ℝ) :
    (Matrix.of fun i j => Complex.exp ((γ * (x j - x i) : ℝ) * Complex.I)).PosSemidef := by
  convert Matrix.posSemidef_gram ℂ (fun i => Complex.exp ((γ * x i : ℝ) * Complex.I)) using 1
  ext i j
  rw [Matrix.of_apply, Matrix.gram_apply, RCLike.inner_apply', ← Complex.exp_conj,
    ← Complex.exp_add]
  congr 1
  simp only [map_mul, Complex.conj_ofReal, Complex.conj_I, Complex.ofReal_mul, Complex.ofReal_sub]
  ring

/-- Normalized contribution of a horizontal pair with displacement `δ` and ordinate `γ`. -/
def pairMatrix {ι : Type*} (x : ι → ℝ) (c δ γ : ℝ) : Matrix ι ι ℂ :=
  Matrix.of fun i j => ((Real.exp (-c*|x i-x j|) * Real.cosh (δ*(x i-x j)) : ℝ) : ℂ) *
    Complex.exp ((γ*(x j-x i) : ℝ) * Complex.I)

/-- A pair at an arbitrary vertical ordinate satisfies the same damping threshold. -/
theorem pairMatrix_posSemidef {ι : Type*} [Finite ι] (x : ι → ℝ) {c δ : ℝ} (γ : ℝ)
    (h : |δ| ≤ c) : (pairMatrix x c δ γ).PosSemidef :=
  (paired_posSemidef x h).hadamard (character_posSemidef x γ)

/-- Every finite family in a prescribed closed band gives a positive semidefinite sum.
The weights may encode pair multiplicities. -/
theorem finite_band_posSemidef {ι κ : Type*} [Finite ι] (x : ι → ℝ) (s : Finset κ)
    (z : κ → ℂ) (w : κ → ℝ) {c : ℝ} (hw : ∀ k ∈ s, 0 ≤ w k)
    (hz : ∀ k ∈ s, |(z k).re - 1/2| ≤ c) :
    (∑ k ∈ s, w k • pairMatrix x c ((z k).re - 1/2) (z k).im).PosSemidef :=
  Matrix.posSemidef_sum s fun k hk =>
    (pairMatrix_posSemidef x _ (hz k hk)).smul (hw k hk)

/-- Half-unit damping covers every finite family in the closed critical strip. -/
theorem finite_strip_posSemidef {ι κ : Type*} [Finite ι] (x : ι → ℝ) (s : Finset κ)
    (z : κ → ℂ) (w : κ → ℝ) (hw : ∀ k ∈ s, 0 ≤ w k)
    (hz : ∀ k ∈ s, (z k).re ∈ Icc (0 : ℝ) 1) :
    (∑ k ∈ s, w k • pairMatrix x (1/2) ((z k).re - 1/2) (z k).im).PosSemidef := by
  apply finite_band_posSemidef x s z w hw
  intro k hk
  obtain ⟨h0, h1⟩ := hz k hk
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- Entries of each normalized pair have modulus at most one throughout the band. -/
theorem norm_pairMatrix_apply_le_one {ι : Type*} (x : ι → ℝ) {c δ : ℝ} (γ : ℝ)
    (h : |δ| ≤ c) (i j : ι) : ‖pairMatrix x c δ γ i j‖ ≤ 1 := by
  have hm : 0 ≤ c-δ := sub_nonneg.mpr ((le_abs_self δ).trans h)
  have hp : 0 ≤ c+δ := by linarith [neg_le_abs δ]
  have hb (a : ℝ) (ha : 0 ≤ a) : Real.exp (-a * |x i-x j|) ≤ 1 :=
    Real.exp_le_one_iff.mpr (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr ha) (abs_nonneg _))
  simp only [pairMatrix, Matrix.of_apply, norm_mul, Complex.norm_exp_ofReal_mul_I, mul_one,
    Complex.norm_real, Real.norm_eq_abs, exp_mul_cosh_eq]
  rw [abs_of_nonneg (by positivity)]
  linarith [hb _ hm, hb _ hp]

/-- An absolutely summable weighting of arbitrarily many pairs has a convergent
matrix sum. Its limit remains positive semidefinite by closedness of the cone. -/
theorem summable_band_posSemidef {ι κ : Type*} [Finite ι] (x : ι → ℝ) (z : κ → ℂ)
    (w : κ → ℝ) {c : ℝ} (hw : ∀ k, 0 ≤ w k) (hs : Summable w)
    (hz : ∀ k, |(z k).re - 1/2| ≤ c) :
    Summable (fun k => w k • pairMatrix x c ((z k).re - 1/2) (z k).im) ∧
      (∑' k, w k • pairMatrix x c ((z k).re - 1/2) (z k).im).PosSemidef := by
  have hh : Summable (fun k => w k • pairMatrix x c ((z k).re - 1/2) (z k).im) := by
    apply Pi.summable.mpr
    intro i
    apply Pi.summable.mpr
    intro j
    apply hs.of_norm_bounded
    intro k
    change ‖w k • pairMatrix x c ((z k).re - 1/2) (z k).im i j‖ ≤ w k
    rw [norm_smul, Real.norm_of_nonneg (hw k)]
    exact mul_le_of_le_one_right (hw k) (norm_pairMatrix_apply_le_one x _ (hz k) i j)
  refine ⟨hh, Matrix.posSemidef_is_closed.mem_of_tendsto hh.hasSum ?_⟩
  exact Filter.Eventually.of_forall fun s =>
    finite_band_posSemidef x s z w (fun k _ => hw k) (fun k _ => hz k)

/-- Below the displacement, an explicit positive separation gives a pair value greater
than its diagonal value. -/
theorem exists_one_lt_of_insufficient_damping {c δ : ℝ} (h : c < |δ|) :
    ∃ t > 0, 1 < Real.exp (-c*|t|) * Real.cosh (δ*t) := by
  let t := 2 / (|δ|-c)
  have ht : 0 < t := div_pos (by norm_num) (sub_pos.mpr h)
  refine ⟨t, ht, ?_⟩
  have he : - (c-|δ|) * t = 2 := by
    rw [show -(c-|δ|) = |δ|-c by ring]
    exact mul_div_cancel₀ 2 (ne_of_gt (sub_pos.mpr h))
  have habs : Real.cosh (δ*t) = Real.cosh (|δ| * t) := by
    rw [← Real.cosh_abs (x := δ*t), abs_mul, abs_of_nonneg ht.le]
  rw [habs, exp_mul_cosh_eq, abs_of_nonneg ht.le, he]
  linarith [Real.add_one_lt_exp (by norm_num : (2 : ℝ) ≠ 0), Real.exp_pos (-(c+|δ|)*t)]

/-- Testing every two-center matrix detects the precise horizontal displacement.
This necessity statement holds at every vertical ordinate. -/
theorem two_center_posSemidef_iff (c δ γ : ℝ) :
    (∀ x : Fin 2 → ℝ, (pairMatrix x c δ γ).PosSemidef) ↔ |δ| ≤ c := by
  refine ⟨fun hh => ?_, fun h x => pairMatrix_posSemidef x γ h⟩
  by_contra! h
  obtain ⟨t, ht, hb⟩ := exists_one_lt_of_insufficient_damping h
  have hd := (hh ![0, t]).det_nonneg
  rw [Matrix.det_fin_two] at hd
  simp [pairMatrix, abs_of_pos ht, mul_neg] at hd
  have cancel (b z : ℂ) : b * Complex.exp z * (b * Complex.exp (-z)) = b*b := by
    calc _ = (b*b)*(Complex.exp z * Complex.exp (-z)) := by ring
         _ = b*b := by rw [← Complex.exp_add]; simp
  rw [cancel] at hd
  rw [abs_of_pos ht] at hb
  let b := Real.exp (-c*t) * Real.cosh (δ*t)
  have hd' : (b : ℂ)*(b : ℂ) ≤ 1 := by simpa [b] using hd
  have hb' : b*b ≤ 1 := by exact_mod_cast hd'
  change 1 < b at hb
  nlinarith [mul_pos (sub_pos.mpr hb) (show 0 < b+1 by linarith)]

/-- A zero outside the trivial negative even integers lies in the open strip.
The reflection argument uses the completed functional equation and the exact
zero set of the real archimedean gamma factor. -/
theorem nontrivial_zero_mem_open_strip {z : ℂ} (hz : riemannZeta z = 0)
    (ht : ¬∃ n : ℕ, z = -2 * (n + 1)) : z.re ∈ Ioo (0 : ℝ) 1 := by
  have hz0 : z ≠ 0 := by
    rintro rfl
    norm_num [riemannZeta_zero] at hz
  have hΓ : Complex.Gammaℝ z ≠ 0 := by
    intro hg
    obtain ⟨n, hn⟩ := Complex.Gammaℝ_eq_zero_iff.mp hg
    cases n with
    | zero => exact hz0 (by simpa using hn)
    | succ n => exact ht ⟨n, by simpa [Nat.cast_add_one] using hn⟩
  have hcomp : completedRiemannZeta z = 0 := by
    rw [riemannZeta_def_of_ne_zero hz0] at hz
    exact (div_eq_zero_iff.mp hz).resolve_right hΓ
  refine ⟨?_, lt_of_not_ge (fun h => riemannZeta_ne_zero_of_one_le_re h hz)⟩
  by_contra! h
  have h1 : 1 ≤ (1-z).re := by simpa using h
  have hne : 1-z ≠ 0 := by
    intro he
    rw [he] at h1
    norm_num at h1
  apply riemannZeta_ne_zero_of_one_le_re h1
  rw [riemannZeta_def_of_ne_zero hne, completedRiemannZeta_one_sub, hcomp, zero_div]

/-- The literal zeta zeros in any finite family admit a common damping rate
strictly less than `1/2`. The margin may depend on the chosen family. -/
theorem finite_zeta_band {ι κ : Type*} [Finite ι] (x : ι → ℝ) (s : Finset κ) (z : κ → ℂ)
    (w : κ → ℝ) (hw : ∀ k ∈ s, 0 ≤ w k) (hz : ∀ k ∈ s, riemannZeta (z k) = 0)
    (ht : ∀ k ∈ s, ¬∃ n : ℕ, z k = -2 * (n + 1)) :
    ∃ c : ℝ, 0 ≤ c ∧ c < 1/2 ∧
      (∑ k ∈ s, w k • pairMatrix x c ((z k).re - 1/2) (z k).im).PosSemidef := by
  classical
  by_cases hs : s.Nonempty
  · let d (k : κ) := |(z k).re - 1/2|
    obtain ⟨k, hk, he⟩ := s.exists_mem_eq_sup' hs d
    have hi := nontrivial_zero_mem_open_strip (hz k hk) (ht k hk)
    refine ⟨s.sup' hs d, ?_, ?_, finite_band_posSemidef x s z w hw ?_⟩
    · rw [he]
      exact abs_nonneg _
    · rw [he]
      exact abs_lt.mpr ⟨by linarith [hi.1], by linarith [hi.2]⟩
    · exact fun j hj => Finset.le_sup' d hj
  · rw [Finset.not_nonempty_iff_eq_empty.mp hs]
    exact ⟨0, le_rfl, by norm_num, by simp [Matrix.PosSemidef.zero]⟩

/-- Undamped positivity for each individual nontrivial zero pair, tested on two
centers, is equivalent to Mathlib's Riemann hypothesis. The test is applied
to each pair separately. -/
theorem riemannHypothesis_iff_undamped_two_center : RiemannHypothesis ↔
    ∀ z : ℂ, riemannZeta z = 0 → (¬∃ n : ℕ, z = -2 * (n+1)) → z ≠ 1 →
      ∀ x : Fin 2 → ℝ, (pairMatrix x 0 (z.re - 1/2) z.im).PosSemidef := by
  constructor
  · intro h z hz ht h1
    apply (two_center_posSemidef_iff _ _ _).mpr
    simp [h z hz ht h1]
  · intro h z hz ht h1
    have hd := (two_center_posSemidef_iff _ _ _).mp (h z hz ht h1)
    exact sub_eq_zero.mp (abs_eq_zero.mp (le_antisymm hd (abs_nonneg _)))

end GRWTSK.XiWeilPoissonBand
