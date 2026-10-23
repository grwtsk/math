/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported project and Mathlib results retain their original credits/licenses.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. Owners: #335 / #334 RH-E02.
-/
import GRWTSK.NumberTheory.Moebius.LogarithmicPickupSampling
import Mathlib.MeasureTheory.Integral.Bochner.Set

/-!
# The actual sampled pickup: countable cell series and signed increments

The sample residue is the SAME closed arithmetic prefix, including its Mertens
endpoint. The logarithmic cells are disjoint and exhaust the nonnegative
half-line. Each cell integral is derived, then countable integrability is
proved equivalent to summability of its explicit nonnegative masses.
The real half-line integral identity is used only after integrability.

The finite signed increment and square telescope isolate the remaining source
correlation. Their diagonal increment bound is not an arithmetic cancellation
supplier. No new damping stage or unconditional RH is asserted. All proof
scripts, including inherited sources, await exact-head elaboration/trust review.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open MeasureTheory Set
open scoped BigOperators

/-- Actual closed signed prefix; results at positive integers never use `log 0`. -/
def sampleResidue (n : ℕ) : ℝ :=
  (∑ k ∈ Finset.Icc 1 n, moebiusReal k * (Real.sqrt k)⁻¹) -
    (Real.sqrt n)⁻¹ * mertensPrefix (n : ℝ)

/-- Cell k owns n=k+1, including its left event and excluding the next event. -/
def logarithmicCell (k : ℕ) : Set ℝ :=
  Ico (Real.log ((k : ℝ) + 1)) (Real.log ((k : ℝ) + 2))

/-- Explicit cell mass. The integration theorem requires sigma nonzero;
all summability/RH consumers below require sigma strictly positive. -/
def sampleCellMass (σ : ℝ) (k : ℕ) : ℝ :=
  4 * sampleResidue (k + 1) ^ 2 *
    (Real.exp (-σ * Real.log ((k : ℝ) + 1)) -
      Real.exp (-σ * Real.log ((k : ℝ) + 2))) / σ

theorem wholePickup_log_eq_sampleResidue {n : ℕ} (hn : 1 ≤ n) :
    wholePickup (Real.log (n : ℝ)) = 2 * sampleResidue n := by
  rw [wholePickup_log_nat n hn]
  unfold sampleResidue
  ring

@[simp] theorem sampleResidue_one : sampleResidue 1 = 0 := by
  have h := wholePickup_log_eq_sampleResidue (n := 1) (by omega)
  simp only [Nat.cast_one, Real.log_one, wholePickup_zero] at h
  linarith

private theorem closed_prefix_succ (f : ℕ → ℝ) (n : ℕ) :
    (∑ k ∈ Finset.Icc 1 (n + 1), f k) =
      (∑ k ∈ Finset.Icc 1 n, f k) + f (n + 1) := by
  have hset : Finset.Icc 1 (n + 1) = insert (n + 1) (Finset.Icc 1 n) := by
    ext k
    simp only [Finset.mem_Icc, Finset.mem_insert]
    omega
  have hnot : n + 1 ∉ Finset.Icc 1 n := by simp
  rw [hset, Finset.sum_insert hnot]
  ring

theorem mertensPrefix_nat_succ (n : ℕ) :
    mertensPrefix ((n + 1 : ℕ) : ℝ) =
      mertensPrefix (n : ℝ) + moebiusReal (n + 1) := by
  simp only [mertensPrefix, Nat.floor_natCast]
  exact closed_prefix_succ moebiusReal n

/-- The touching new coefficient cancels exactly, before absolute values. -/
theorem sampleResidue_succ_sub (n : ℕ) :
    sampleResidue (n + 1) - sampleResidue n =
      mertensPrefix (n : ℝ) *
        ((Real.sqrt n)⁻¹ - (Real.sqrt (n + 1 : ℕ))⁻¹) := by
  unfold sampleResidue
  rw [closed_prefix_succ, mertensPrefix_nat_succ]
  ring

/-- Full signed square increment: the mixed term cannot be discarded. -/
theorem sampleResidue_square_step (n : ℕ) :
    sampleResidue (n + 1) ^ 2 - sampleResidue n ^ 2 =
      2 * sampleResidue n *
        (mertensPrefix (n : ℝ) *
          ((Real.sqrt n)⁻¹ - (Real.sqrt (n + 1 : ℕ))⁻¹)) +
      (mertensPrefix (n : ℝ) *
        ((Real.sqrt n)⁻¹ - (Real.sqrt (n + 1 : ℕ))⁻¹)) ^ 2 := by
  have h := sampleResidue_succ_sub n
  have he : sampleResidue (n + 1) = sampleResidue n +
      mertensPrefix (n : ℝ) *
        ((Real.sqrt n)⁻¹ - (Real.sqrt (n + 1 : ℕ))⁻¹) := by linarith
  rw [he]
  ring

/-- Exact finite telescope starting from Q_1=0. It is not a positivity estimate. -/
theorem sampleResidue_square_telescope (N : ℕ) :
    sampleResidue (N + 1) ^ 2 =
      ∑ k ∈ Finset.range N,
        (2 * sampleResidue (k + 1) *
          (sampleResidue (k + 2) - sampleResidue (k + 1)) +
          (sampleResidue (k + 2) - sampleResidue (k + 1)) ^ 2) := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_range_succ, ← ih]
      have he : N + 1 + 1 = N + 2 := by omega
      rw [he]
      ring

/-- A paid increment allowance, not a bound on the complete sample sequence. -/
theorem sampleResidue_increment_abs_le {n : ℕ} (hn : 1 ≤ n) :
    |sampleResidue (n + 1) - sampleResidue n| ≤
      (Real.sqrt (n + 1 : ℕ))⁻¹ / 2 := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  have hn1pos : (0 : ℝ) < (n + 1 : ℕ) := by positivity
  have hle : (n : ℝ) ≤ (n + 1 : ℕ) := by exact_mod_cast (Nat.le_succ n)
  have hwidth : (Real.sqrt (n + 1 : ℕ)) ^ 2 - (Real.sqrt n) ^ 2 ≤ 1 := by
    rw [Real.sq_sqrt hn1pos.le, Real.sq_sqrt hnpos.le]
    push_cast
    linarith
  have hm : |mertensPrefix (n : ℝ)| ≤ (Real.sqrt n) ^ 2 := by
    rw [Real.sq_sqrt hnpos.le]
    exact mertensPrefix_abs_le hnpos.le
  have h := cell_drift_bound (Real.sqrt_pos.mpr hn1pos) (Real.sqrt_pos.mpr hnpos)
    (Real.sqrt_le_sqrt hle) hwidth hm
  have he : 2 * mertensPrefix (n : ℝ) *
      ((Real.sqrt n)⁻¹ - (Real.sqrt (n + 1 : ℕ))⁻¹) =
      2 * (sampleResidue (n + 1) - sampleResidue n) := by
    rw [sampleResidue_succ_sub]
    ring
  rw [he, abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at h
  linarith

/-- Squared increment cost. Summing it does not bound the mixed correlation. -/
theorem sampleResidue_increment_sq_le {n : ℕ} (hn : 1 ≤ n) :
    (sampleResidue (n + 1) - sampleResidue n) ^ 2 ≤
      1 / (4 * ((n : ℝ) + 1)) := by
  have hn1 : (0 : ℝ) ≤ (n + 1 : ℕ) := Nat.cast_nonneg _
  have hs := (sq_le_sq₀
    (abs_nonneg (sampleResidue (n + 1) - sampleResidue n))
    (by positivity : 0 ≤ (Real.sqrt (n + 1 : ℕ))⁻¹ / 2)).mpr
      (sampleResidue_increment_abs_le hn)
  rw [sq_abs, div_pow, inv_pow, Real.sq_sqrt hn1] at hs
  convert hs using 1 <;> (try rfl); push_cast;
    (try field_simp [show (n : ℝ) + 1 ≠ 0 by positivity]); ring

/-- A finite harmonic allowance for the actual diagonal increment sum. -/
theorem sampleResidue_diagonal_le (N : ℕ) :
    (∑ k ∈ Finset.range N,
      (sampleResidue (k + 2) - sampleResidue (k + 1)) ^ 2) ≤
      (1 / 4 : ℝ) * ∑ k ∈ Finset.range N, 1 / ((k : ℝ) + 2) := by
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro k _
  have h := sampleResidue_increment_sq_le (n := k + 1) (by omega)
  convert h using 1 <;> (try rfl); push_cast;
    (try field_simp [show (k : ℝ) + 2 ≠ 0 by positivity]); ring

/-- Finite summation by parts retains the terminal subtraction exactly. -/
theorem sampleResidue_weighted_telescope (w : ℕ → ℝ) (N : ℕ) :
    (∑ k ∈ Finset.range N, sampleResidue (k + 1) ^ 2 * (w (k + 1) - w (k + 2))) =
      (∑ k ∈ Finset.range N,
        (2 * sampleResidue (k + 1) *
          (sampleResidue (k + 2) - sampleResidue (k + 1)) +
          (sampleResidue (k + 2) - sampleResidue (k + 1)) ^ 2) * w (k + 2)) -
      sampleResidue (N + 1) ^ 2 * w (N + 1) := by
  induction N with
  | zero => simp
  | succ N ih =>
      simp only [Finset.sum_range_succ]
      rw [ih]
      have he : N + 1 + 1 = N + 2 := by omega
      rw [he]
      ring

/-- The actual series partial sums equal a signed correlation, its diagonal,
and the terminal compensation. None of the three terms is silently omitted. -/
theorem sampleCellMass_partial_sum {σ : ℝ} (hσ : σ ≠ 0) (N : ℕ) :
    (∑ k ∈ Finset.range N, sampleCellMass σ k) = (4 / σ) *
      ((∑ k ∈ Finset.range N,
        (2 * sampleResidue (k + 1) *
          (sampleResidue (k + 2) - sampleResidue (k + 1)) +
          (sampleResidue (k + 2) - sampleResidue (k + 1)) ^ 2) *
            Real.exp (-σ * Real.log (k + 2 : ℕ))) -
        sampleResidue (N + 1) ^ 2 * Real.exp (-σ * Real.log (N + 1 : ℕ))) := by
  have hm (k : ℕ) : sampleCellMass σ k = (4 / σ) *
      (sampleResidue (k + 1) ^ 2 *
        (Real.exp (-σ * Real.log (k + 1 : ℕ)) -
          Real.exp (-σ * Real.log (k + 2 : ℕ)))) := by
    unfold sampleCellMass
    push_cast
    field_simp [hσ]
  simp_rw [hm]
  rw [← Finset.mul_sum,
    sampleResidue_weighted_telescope (fun n : ℕ ↦ Real.exp (-σ * Real.log (n : ℝ)))]

/-- Finite weighted diagonal allowance; the remaining mixed term is signed. -/
theorem sampleResidue_weighted_diagonal_le (σ : ℝ) (N : ℕ) :
    (∑ k ∈ Finset.range N,
      (sampleResidue (k + 2) - sampleResidue (k + 1)) ^ 2 *
        Real.exp (-σ * Real.log (k + 2 : ℕ))) ≤
      (1 / 4 : ℝ) * ∑ k ∈ Finset.range N,
        Real.exp (-σ * Real.log (k + 2 : ℕ)) / ((k : ℝ) + 2) := by
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro k _
  have h := mul_le_mul_of_nonneg_right
    (sampleResidue_increment_sq_le (n := k + 1) (by omega))
    (Real.exp_pos (-σ * Real.log (k + 2 : ℕ))).le
  convert h using 1; push_cast;
    (try field_simp [show (k : ℝ) + 2 ≠ 0 by positivity]); ring

theorem logarithmicCell_measurable (k : ℕ) : MeasurableSet (logarithmicCell k) :=
  measurableSet_Ico

theorem logarithmicCell_floor {k : ℕ} {u : ℝ} (hu : u ∈ logarithmicCell k) :
    ⌊Real.exp u⌋₊ = k + 1 := by
  have hpos : (0 : ℝ) < (k : ℝ) + 1 := by positivity
  have hlo : (k : ℝ) + 1 ≤ Real.exp u :=
    (Real.log_le_iff_le_exp hpos).mp hu.1
  have hhi : Real.exp u < (k : ℝ) + 2 := by
    simpa only [Real.exp_log (by positivity : (0 : ℝ) < (k : ℝ) + 2)] using
      Real.exp_lt_exp.mpr hu.2
  apply (Nat.floor_eq_iff (Real.exp_pos u).le).mpr
  constructor <;> push_cast <;> linarith

/-- Disjointness is literal, including endpoint ownership, not merely almost everywhere. -/
theorem logarithmicCell_pairwise_disjoint :
    Pairwise (fun k l : ℕ ↦ Disjoint (logarithmicCell k) (logarithmicCell l)) := by
  intro k l hkl
  apply Set.disjoint_left.mpr
  intro u huk hul
  have hk := logarithmicCell_floor huk
  have hl := logarithmicCell_floor hul
  exact hkl (by omega)

/-- The full nonnegative half-line is covered; no finite prefix is substituted. -/
theorem iUnion_logarithmicCell : (⋃ k : ℕ, logarithmicCell k) = Ici (0 : ℝ) := by
  ext u
  constructor
  · intro hu
    obtain ⟨k, hk⟩ := mem_iUnion.mp hu
    exact (Real.log_nonneg (by have := Nat.cast_nonneg (α := ℝ) k; linarith)).trans hk.1
  · intro hu
    let N : ℕ := ⌊Real.exp u⌋₊
    have hN : 1 ≤ N := floor_exp_ge_one hu
    have hNpos : (0 : ℝ) < N := by exact_mod_cast (by omega : 0 < N)
    have hcast : ((N - 1 : ℕ) : ℝ) + 1 = (N : ℝ) := by
      exact_mod_cast (Nat.sub_add_cancel hN)
    have hlo : Real.log (N : ℝ) ≤ u :=
      (Real.log_le_iff_le_exp hNpos).mpr (Nat.floor_le (Real.exp_pos u).le)
    have hhi : u < Real.log ((N : ℝ) + 1) := by
      have hh := Real.log_lt_log (Real.exp_pos u) (Nat.lt_floor_add_one (Real.exp u))
      simpa only [Real.log_exp] using hh
    apply mem_iUnion.mpr
    refine ⟨N - 1, ?_⟩
    change Real.log (((N - 1 : ℕ) : ℝ) + 1) ≤ u ∧
      u < Real.log (((N - 1 : ℕ) : ℝ) + 2)
    rw [hcast, show ((N - 1 : ℕ) : ℝ) + 2 = (N : ℝ) + 1 by linarith]
    exact ⟨hlo, hhi⟩

theorem sampledPickup_eq_on_logarithmicCell {k : ℕ} {u : ℝ}
    (hu : u ∈ logarithmicCell k) : sampledPickup u = 2 * sampleResidue (k + 1) := by
  unfold sampledPickup
  rw [logarithmicCell_floor hu]
  exact wholePickup_log_eq_sampleResidue (by omega)

/-- Every cell is integrable independently of any global arithmetic estimate. -/
theorem sampled_integrableOn_logarithmicCell (σ : ℝ) (k : ℕ) :
    IntegrableOn (fun u : ℝ ↦ Real.exp (-σ * u) * sampledPickup u ^ 2)
      (logarithmicCell k) := by
  have hc : Continuous (fun u : ℝ ↦
      Real.exp (-σ * u) * (2 * sampleResidue (k + 1)) ^ 2) :=
    (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul continuous_const
  have hi := (hc.integrableOn_Icc (μ := volume) (a := Real.log ((k : ℝ) + 1))
    (b := Real.log ((k : ℝ) + 2))).mono_set Ico_subset_Icc_self
  apply hi.congr_fun ?_ measurableSet_Ico
  intro u hu
  dsimp only
  rw [sampledPickup_eq_on_logarithmicCell hu]

private theorem integral_exp_neg_mul (σ a b : ℝ) (hσ : σ ≠ 0) :
    (∫ u in a..b, Real.exp (-σ * u)) =
      (Real.exp (-σ * a) - Real.exp (-σ * b)) / σ := by
  have hd (u : ℝ) : HasDerivAt (fun t : ℝ ↦ -Real.exp (-σ * t) / σ)
      (Real.exp (-σ * u)) u := by
    convert (((hasDerivAt_id u).const_mul (-σ)).exp.neg.div_const σ) using 1 <;>
      (try rfl);
      dsimp only [id_eq, Pi.neg_apply, Pi.smul_apply, smul_eq_mul];
      field_simp [hσ]
  have hi : IntervalIntegrable (fun u : ℝ ↦ Real.exp (-σ * u)) volume a b :=
    (Real.continuous_exp.comp (continuous_const.mul continuous_id)).intervalIntegrable a b
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun u _ ↦ hd u) hi]
  ring

/-- The explicit mass comes from integration, not from an assumed cell formula. -/
theorem integral_sampled_logarithmicCell {σ : ℝ} (hσ : σ ≠ 0) (k : ℕ) :
    (∫ u in logarithmicCell k, Real.exp (-σ * u) * sampledPickup u ^ 2) =
      sampleCellMass σ k := by
  have hab : Real.log ((k : ℝ) + 1) ≤ Real.log ((k : ℝ) + 2) :=
    Real.log_le_log (by positivity) (by linarith)
  calc
    _ = ∫ u in logarithmicCell k,
        Real.exp (-σ * u) * (2 * sampleResidue (k + 1)) ^ 2 := by
      apply setIntegral_congr_fun (logarithmicCell_measurable k)
      intro u hu
      dsimp only
      rw [sampledPickup_eq_on_logarithmicCell hu]
    _ = sampleCellMass σ k := by
      unfold logarithmicCell sampleCellMass
      rw [integral_Ico_eq_integral_Ioc, ← intervalIntegral.integral_of_le hab,
        intervalIntegral.integral_mul_const, integral_exp_neg_mul σ _ _ hσ]
      ring

theorem sampleCellMass_nonneg {σ : ℝ} (hσ : σ ≠ 0) (k : ℕ) :
    0 ≤ sampleCellMass σ k := by
  rw [← integral_sampled_logarithmicCell hσ k]
  exact integral_nonneg (fun u ↦ mul_nonneg (Real.exp_pos _).le (sq_nonneg _))

/-- A change of notation only: all powers have strictly positive bases. -/
theorem sampleCellMass_eq_rpow (σ : ℝ) (k : ℕ) :
    sampleCellMass σ k =
      4 * sampleResidue (k + 1) ^ 2 *
        (((k : ℝ) + 1) ^ (-σ) - ((k : ℝ) + 2) ^ (-σ)) / σ := by
  simp only [sampleCellMass, Real.rpow_def_of_pos (by positivity : (0 : ℝ) < (k : ℝ) + 1),
    Real.rpow_def_of_pos (by positivity : (0 : ℝ) < (k : ℝ) + 2), mul_comm]

/-- No real integral is used as evidence of finiteness: both implications carry
actual integrability/summability, and every individual cell is already paid. -/
theorem sampled_integrable_iff_summable_cellMass {σ : ℝ} (hσ : 0 < σ) :
    IntegrableOn (fun u : ℝ ↦ Real.exp (-σ * u) * sampledPickup u ^ 2) (Ici 0) ↔
      Summable (sampleCellMass σ) := by
  constructor
  · intro hi
    have hiU : IntegrableOn (fun u : ℝ ↦ Real.exp (-σ * u) * sampledPickup u ^ 2)
        (⋃ k : ℕ, logarithmicCell k) := by
      simpa only [iUnion_logarithmicCell] using hi
    have hs := (hasSum_integral_iUnion logarithmicCell_measurable
      logarithmicCell_pairwise_disjoint hiU).summable
    simpa only [integral_sampled_logarithmicCell hσ.ne'] using hs
  · intro hs
    have hnorm : (fun k : ℕ ↦ ∫ u in logarithmicCell k,
        ‖Real.exp (-σ * u) * sampledPickup u ^ 2‖) = sampleCellMass σ := by
      funext k
      simp only [Real.norm_eq_abs,
        abs_of_nonneg (mul_nonneg (Real.exp_pos _).le (sq_nonneg _))]
      exact integral_sampled_logarithmicCell hσ.ne' k
    have hiU := integrableOn_iUnion_of_summable_integral_norm
      (sampled_integrableOn_logarithmicCell σ) (hnorm.symm ▸ hs)
    simpa only [iUnion_logarithmicCell] using hiU

/-- The countable bridge for the unchanged ACTUAL source, not merely its model. -/
theorem pickup_integrable_iff_summable_cellMass {σ : ℝ} (hσ : 0 < σ) :
    IntegrableOn (fun u : ℝ ↦ Real.exp (-σ * u) * wholePickup u ^ 2) (Ici 0) ↔
      Summable (sampleCellMass σ) :=
  (weighted_integrable_iff_sampled (by linarith)).trans
    (sampled_integrable_iff_summable_cellMass hσ)

/-- The sum equals the sampled integral ONLY with genuine summability supplied. -/
theorem hasSum_sampleCellMass {σ : ℝ} (hσ : 0 < σ)
    (hs : Summable (sampleCellMass σ)) :
    HasSum (sampleCellMass σ)
      (∫ u in Ici (0 : ℝ), Real.exp (-σ * u) * sampledPickup u ^ 2) := by
  have hiU : IntegrableOn (fun u : ℝ ↦ Real.exp (-σ * u) * sampledPickup u ^ 2)
      (⋃ k : ℕ, logarithmicCell k) := by
    simpa only [iUnion_logarithmicCell] using
      (sampled_integrable_iff_summable_cellMass hσ).mpr hs
  simpa only [integral_sampled_logarithmicCell hσ.ne', iUnion_logarithmicCell] using
    hasSum_integral_iUnion logarithmicCell_measurable logarithmicCell_pairwise_disjoint hiU

/-- Quantitative return from a genuinely summable arithmetic series. -/
theorem actual_energy_le_cellMass_tsum {σ : ℝ} (hσ : 0 < σ)
    (hs : Summable (sampleCellMass σ)) :
    (∫ u in Ici (0 : ℝ), Real.exp (-σ * u) * wholePickup u ^ 2) ≤
      2 * (∑' k : ℕ, sampleCellMass σ k) + 2 / (σ + 1) := by
  rw [(hasSum_sampleCellMass hσ hs).tsum_eq]
  exact actual_energy_le_sampled (by linarith)
    ((sampled_integrable_iff_summable_cellMass hσ).mpr hs)

theorem abscissa_zero_iff_reciprocal_cellMass :
    pickupEnergyAbscissa = 0 ↔
      ∀ j : ℕ, Summable (sampleCellMass (CofinalDamping.reciprocalDamping j)) := by
  rw [abscissa_zero_iff_sampled_reciprocal]
  constructor
  · intro hp j
    exact (sampled_integrable_iff_summable_cellMass
      (CofinalDamping.reciprocalDamping_pos j)).mp (hp j)
  · intro hp j
    exact (sampled_integrable_iff_summable_cellMass
      (CofinalDamping.reciprocalDamping_pos j)).mpr (hp j)

/-- Conditional endpoint only: the universal arithmetic series supplier is OPEN. -/
theorem riemannHypothesis_of_reciprocal_cellMass
    (hs : ∀ j : ℕ, Summable (sampleCellMass (CofinalDamping.reciprocalDamping j))) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupEnergyAbscissa_zero
    (abscissa_zero_iff_reciprocal_cellMass.mpr hs)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
