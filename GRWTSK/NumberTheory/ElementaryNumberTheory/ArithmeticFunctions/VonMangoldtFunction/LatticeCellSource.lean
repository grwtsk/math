/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Status: candidate proof source, NOT elaborated. No all-scale energy supplied.
-/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.GreenEnergyFormula
import GRWTSK.Analysis.FiniteSums.DyadicVariance

/-! # Exact arithmetic source on the integer-aligned cells
Every prime-power atom is retained. Interior formulas use open cells; endpoint
values are retained by the source and removed only from Lebesgue integration.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators
namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.LatticeCellSource
open GRWTSK.Analysis.GreenKernel.UnitInterval
open GRWTSK.Analysis.RealAnalysis.Integration.UnitIntervalPrimitives
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

def edge (X k : ℕ) : ℝ := (k:ℝ)/(X:ℝ)
def prefix (X k : ℕ) : ℝ :=
  ∑ n∈(window X).filter (fun n ↦ n≤X+k), coefficient n

def cellMeanLog (X k : ℕ) : ℝ :=
  (X:ℝ)*(logPrimitive (edge X (k+1))-logPrimitive (edge X k))

def cellMeanSource (X k : ℕ) : ℝ := prefix X k-cellMeanLog X k

theorem edge_zero (X : ℕ) : edge X 0=0 := by simp [edge]
theorem edge_last {X : ℕ} (hX : 0<X) : edge X X=1 := by
  simp [edge, Nat.ne_of_gt hX]

theorem edge_width {X : ℕ} (hX : 0<X) (k : ℕ) :
    edge X (k+1)-edge X k=1/(X:ℝ) := by
  unfold edge
  push_cast
  ring

theorem edge_lt_next {X : ℕ} (hX : 0<X) (k : ℕ) :
    edge X k<edge X (k+1) := by
  have hp : (0:ℝ)<X := by exact_mod_cast hX
  have := edge_width hX k
  have : (0:ℝ)<edge X (k+1)-edge X k := by rw [edge_width hX]; positivity
  linarith

theorem edges_in_unit {X k : ℕ} (hX : 0<X) (hk : k<X) :
    0≤edge X k ∧ edge X (k+1)≤1 := by
  have hp : (0:ℝ)<X := by exact_mod_cast hX
  constructor
  · unfold edge; positivity
  · unfold edge
    apply (div_le_iff₀ hp).2
    norm_num
    exact_mod_cast Nat.succ_le_of_lt hk

/-- The fixed atom lies to the left precisely when its integer label does. -/
theorem location_le_iff {X k n : ℕ} {t : ℝ} (hX : 0<X)
    (ht : t∈Ioo (edge X k) (edge X (k+1))) :
    location X n≤t ↔ n≤X+k := by
  have hp : (0:ℝ)<X := by exact_mod_cast hX
  have ht0 : (k:ℝ)<t*X := (div_lt_iff₀ hp).1 ht.1
  have ht1 : t*X<(k+1:ℕ) := (lt_div_iff₀ hp).1 ht.2
  constructor
  · intro hn
    have hnx : (n:ℝ)≤(t+1)*X := by
      apply (div_le_iff₀ hp).1
      change (n:ℝ)/(X:ℝ)≤t+1
      change (n:ℝ)/(X:ℝ)-1≤t at hn
      linarith
    have hlt : (n:ℝ)<((X+k+1:ℕ):ℝ) := by push_cast at *; nlinarith
    have hltN : n<X+k+1 := by exact_mod_cast hlt
    omega
  · intro hn
    have hnr : (n:ℝ)≤((X+k:ℕ):ℝ) := by exact_mod_cast hn
    change (n:ℝ)/(X:ℝ)-1≤t
    have hdiv : (n:ℝ)/(X:ℝ)≤t+1 := by
      apply (div_le_iff₀ hp).2
      push_cast at hnr
      nlinarith
    linarith

/-- On each open integer cell, the only varying part is the declared logarithm. -/
theorem cumulative_on_open_cell {X k : ℕ} {t : ℝ} (hX : 0<X)
    (ht : t∈Ioo (edge X k) (edge X (k+1))) :
    cumulative X t=prefix X k-logarithm t := by
  unfold cumulative prefix
  rw [Finset.sum_filter]
  congr 1
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hn' : n≤X+k
  · simp [step, (location_le_iff hX ht).2 hn', hn']
  · have hloc : ¬location X n≤t := by simpa [location_le_iff hX ht]
    simp [step, hloc, hn']

theorem initial_prefix (X : ℕ) : prefix X 0=0 := by
  unfold prefix
  apply Finset.sum_eq_zero
  intro n hn
  have h1 := (Finset.mem_filter.mp hn).1
  have h2 := (Finset.mem_filter.mp hn).2
  have h3 := window_lower h1
  omega

/-- The atom at 2X is never silently moved into an open-cell prefix. -/
theorem endpoint_not_in_cell_prefix {X k : ℕ} (hk : k<X) :
    ¬2*X≤X+k := by omega

private theorem cell_integral_congr {X k : ℕ} (hX : 0<X) (c : ℝ) :
    (∫ t in edge X k..edge X (k+1), (cumulative X t-c)^2)=
      ∫ t in edge X k..edge X (k+1), (prefix X k-c-logarithm t)^2 := by
  apply intervalIntegral.integral_congr_ae_restrict
  rw [uIoc_of_le (edge_lt_next hX k).le, ← restrict_Ioo_eq_restrict_Ioc]
  filter_upwards [ae_restrict_mem measurableSet_Ioo] with t ht
  rw [cumulative_on_open_cell hX ht]
  congr 1
  ring

/-- Complete primitive on one actual source cell, including arbitrary centering. -/
theorem integral_square_cell {X k : ℕ} (hX : 0<X) (hk : k<X) (c : ℝ) :
    (∫ t in edge X k..edge X (k+1), (cumulative X t-c)^2)=
      cellPrimitive (prefix X k-c) (1+edge X (k+1))-
      cellPrimitive (prefix X k-c) (1+edge X k) := by
  rw [cell_integral_congr hX c]
  have hab := (edge_lt_next hX k).le
  have hunit := edges_in_unit hX hk
  have hsub : Icc (edge X k) (edge X (k+1)) ⊆ Icc (0:ℝ) 1 := by
    intro t ht
    exact ⟨hunit.1.trans ht.1, ht.2.trans hunit.2⟩
  apply intervalIntegral.integral_eq_sub_of_hasDerivAt
  · intro t ht
    have ht' : t∈Icc (edge X k) (edge X (k+1)) := by simpa [uIcc_of_le hab] using ht
    have ht0 := (hsub ht').1
    have hd := (cellPrimitive_hasDerivAt (prefix X k-c)
      (show 0<1+t by linarith)).comp t ((hasDerivAt_id t).const_add 1)
    simpa [logarithm] using hd
  · exact ((continuousOn_const.sub (logarithm_continuousOn.mono hsub)).pow 2)
      .intervalIntegrable_of_Icc hab

/-- The first primitive prices the true arithmetic cell average. -/
theorem integral_source_cell {X k : ℕ} (hX : 0<X) (hk : k<X) :
    (∫ t in edge X k..edge X (k+1), cumulative X t)=
      cellMeanSource X k/(X:ℝ) := by
  have hp : (0:ℝ)<X := by exact_mod_cast hX
  have hab := (edge_lt_next hX k).le
  have heq : (∫ t in edge X k..edge X (k+1), cumulative X t)=
      ∫ t in edge X k..edge X (k+1), prefix X k-logarithm t := by
    apply intervalIntegral.integral_congr_ae_restrict
    rw [uIoc_of_le hab, ← restrict_Ioo_eq_restrict_Ioc]
    filter_upwards [ae_restrict_mem measurableSet_Ioo] with t ht
    exact cumulative_on_open_cell hX ht
  rw [heq]
  have hunit := edges_in_unit hX hk
  have hsub : Icc (edge X k) (edge X (k+1)) ⊆ Icc (0:ℝ) 1 := by
    intro t ht
    exact ⟨hunit.1.trans ht.1, ht.2.trans hunit.2⟩
  have hlog : (∫ t in edge X k..edge X (k+1), logarithm t)=
      logPrimitive (edge X (k+1))-logPrimitive (edge X k) := by
    apply intervalIntegral.integral_eq_sub_of_hasDerivAt
    · intro t ht
      apply logPrimitive_hasDerivAt
      apply hsub
      simpa [uIcc_of_le hab] using ht
    · exact (logarithm_continuousOn.mono hsub).intervalIntegrable_of_Icc hab
  rw [intervalIntegral.integral_sub
    (intervalIntegrable_const) ((logarithm_continuousOn.mono hsub).intervalIntegrable_of_Icc hab),
    intervalIntegral.integral_const, hlog]
  simp only [smul_eq_mul, edge_width hX]
  unfold cellMeanSource cellMeanLog
  field_simp [ne_of_gt hp]
  ring

end GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.LatticeCellSource
