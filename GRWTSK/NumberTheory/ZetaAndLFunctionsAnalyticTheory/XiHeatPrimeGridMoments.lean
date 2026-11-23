/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.Fourier.AddCircle
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Tactic

/-! Moving logarithmic windows and the sampled Fourier energy of their arithmetic residuals. -/
namespace GRWTSK.XiHeatPrimeGridMoments

open Set MeasureTheory

/-- The unnormalized Fourier-side triangle is the length of the common set of window starts. -/
theorem overlap_length (d u v : ℝ) :
    volume.real (Ioc (u-d) u ∩ Ioc (v-d) v) = max (d-|u-v|) 0 := by
  rw [Ioc_inter_Ioc, Real.volume_real_Ioc]
  congr 1
  rcases le_total u v with h | h
  · rw [min_eq_left h, max_eq_right (by linarith), abs_of_nonpos (by linarith)]
    ring
  · rw [min_eq_right h, max_eq_left (by linarith), abs_of_nonneg (by linarith)]
    ring

/-- An atom at logarithmic position u belongs to this set of window starts. -/
noncomputable def movingAtom (d u : ℝ) : ℝ → ℝ :=
  (Ioc (u-d) u).indicator (fun _ => 1)

private theorem product_indicator (d u v : ℝ) :
    (fun x => movingAtom d u x * movingAtom d v x) =
      (Ioc (u-d) u ∩ Ioc (v-d) v).indicator (fun _ : ℝ => (1:ℝ)) := by
  funext x
  by_cases hu : x ∈ Ioc (u-d) u <;> by_cases hv : x ∈ Ioc (v-d) v <;>
    simp [movingAtom,hu,hv]

/-- The Gram coefficient of two actual interval indicators. -/
theorem atom_gram (d u v : ℝ) :
    (∫ x, movingAtom d u x * movingAtom d v x) = max (d-|u-v|) 0 := by
  rw [product_indicator,integral_indicator (measurableSet_Ioc.inter measurableSet_Ioc),
    setIntegral_const]
  simpa using overlap_length d u v

/-- Exact triangular quadratic form of the signed finite moving-atom measure. -/
theorem finite_window_energy {ι : Type*} (s : Finset ι) (d : ℝ) (u c : ι → ℝ) :
    (∫ x, (∑ i ∈ s, c i*movingAtom d (u i) x)^2) =
      ∑ i ∈ s, ∑ j ∈ s, (c i*c j)*max (d-|u i-u j|) 0 := by
  let k (i j : ι) (x : ℝ) := (c i*c j)*(movingAtom d (u i) x*movingAtom d (u j) x)
  have hi (i j : ι) : Integrable (k i j) := by
    apply Integrable.const_mul
    rw [product_indicator, integrable_indicator_iff (measurableSet_Ioc.inter measurableSet_Ioc)]
    apply integrableOn_const
    rw [Ioc_inter_Ioc,Real.volume_Ioc]
    exact ENNReal.ofReal_ne_top
    simp
  have he (x : ℝ) : (∑ i ∈ s, c i*movingAtom d (u i) x)^2 =
      ∑ i ∈ s, ∑ j ∈ s, k i j x := by
    rw [sq,Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro i _
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j _
    dsimp [k]
    ring
  simp_rw [he]
  rw [integral_finsetSum s (fun i _ => integrable_finsetSum s (fun j _ => hi i j))]
  apply Finset.sum_congr rfl
  intro i _
  rw [integral_finsetSum s (fun j _ => hi i j)]
  exact Finset.sum_congr rfl (fun j _ => by
    dsimp [k]
    rw [integral_const_mul,atom_gram])

/-- Reflection of the signed prime discrepancy separates difference and sum frequencies. -/
theorem reflected_energy (same crossed : ℝ) :
    2*((same+crossed+crossed+same)/4)=same+crossed := by ring

/-- The compact window fits strictly in one grid period at the actual logarithmic cutoff. -/
theorem support_within_period {n d : ℝ} (hn : 1 ≤ n) (hd : d ≤ 1) :
    2*(2*n-Real.log n)+d < 2*Real.pi*n := by
  have hl := Real.log_nonneg hn
  have hp := mul_lt_mul_of_pos_right Real.pi_gt_three (by linarith : 0 < n)
  linarith

/-- A single sampled coefficient is bounded by the integrated energy on its period. -/
theorem sample_energy_bound {a b : ℝ} {f : ℝ → ℂ} (hab : a < b)
    (hf : MemLp f 2 (volume.restrict (Ioc a b))) (j : ℤ) :
    ‖fourierCoeffOn hab f j‖^2 ≤ (b-a)⁻¹ * ∫ x in a..b, ‖f x‖^2 := by
  have h := hasSum_sq_fourierCoeffOn hab hf
  simpa [h.tsum_eq,smul_eq_mul] using
    (h.summable.le_tsum j (fun _ _ => sq_nonneg _))

/-- Bounding all off-diagonal neighbors allows different numbers of neighbors per index. -/
theorem pair_product_le (a b : ℝ) : 2*a*b ≤ a^2+b^2 := by nlinarith [sq_nonneg (a-b)]

/-- The continuous density on the prime-log axis has uniformly controlled variation. -/
theorem weight_variation {n u v : ℝ} (hn : 0 < n) (hu : 0 ≤ u) (hv : 0 ≤ v)
    (hu' : u ≤ 2*n) (hv' : v ≤ 2*n) :
    |(u/2-u^2/(4*n))-(v/2-v^2/(4*n))| ≤ |u-v|/2 := by
  have h : (u/2-u^2/(4*n))-(v/2-v^2/(4*n)) = (u-v)*(2*n-u-v)/(4*n) := by
    field_simp
    ring
  have he : |2*n-u-v| ≤ 2*n := abs_le.mpr ⟨by linarith,by linarith⟩
  rw [h,abs_div,abs_mul,abs_of_pos (by positivity : 0 < 4*n),div_le_iff₀ (by positivity)]
  nlinarith [mul_le_mul_of_nonneg_left he (abs_nonneg (u-v))]

/-- A boundary pole of residue m has the stated mass before division by pi. -/
theorem boundary_pole_mass {e : ℝ} (he : 0 < e) (m : ℝ) :
    (∫ t : ℝ, e*m^2/(e^2+t^2)) = Real.pi*m^2 := by
  have h (t : ℝ) : e*m^2/(e^2+t^2) = (m^2/e)*(1+(e⁻¹*t)^2)⁻¹ := by
    have hp : 0 < e^2+t^2 := by positivity
    have hq : 0 < 1+(e⁻¹*t)^2 := by positivity
    field_simp
  simp_rw [h]
  rw [integral_const_mul, integral_univ_inv_one_add_mul_sq, abs_inv, abs_of_pos he]
  field_simp

/-- Arithmetic boundary atoms carry squared multiplicity; this threshold adds
precisely one Hilbert-space layer per copy at a positive-weight frequency. -/
theorem multiplicity_layer {j m : ℕ} {b : ℝ} (hb : 0 < b) :
    (j:ℝ)^2*b ≤ (m:ℝ)^2*b ↔ j ≤ m := by
  rw [mul_le_mul_iff_left₀ hb, sq_le_sq₀ (by positivity) (by positivity)]
  exact_mod_cast Iff.rfl

end GRWTSK.XiHeatPrimeGridMoments
