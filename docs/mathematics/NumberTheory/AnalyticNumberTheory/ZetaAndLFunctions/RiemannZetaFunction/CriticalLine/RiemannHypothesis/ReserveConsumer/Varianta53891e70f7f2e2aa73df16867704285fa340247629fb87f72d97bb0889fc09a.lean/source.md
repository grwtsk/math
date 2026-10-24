# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ReserveConsumer.Varianta53891e70f7f2e2aa73df16867704285fa340247629fb87f72d97bb0889fc09a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd3a560cc343e8749e7cc66706c88e580284865b` · SHA-256 `a53891e70f7f2e2aa73df16867704285fa340247629fb87f72d97bb0889fc09a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.FirstCrossingConsumer
import FormalResearch.RiemannHypothesis.Conversation.AnalyticSuppliers

/-!
# The literal reserve consumes a selected Green cap

Batch 13's constants are retained exactly. The selected entrance may occur
after the recorded N-star; its reserve and storage sign remain explicit.
The interior Green work includes its first-cell energy allowance. The cap
and entrance certificate are propositions awaiting arithmetic proof.

Human target and reserve selection: grwtsk contributors. Local conditional
consumer and Lean implementation: OpenAI Codex. The Landau return is a
separate explicit premise, and no unconditional RH result is claimed.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.ReserveConsumer

open OpenArithmeticSuppliers ArithmeticPrimitive FirstCrossingGreen
open FirstCrossingConsumer AnalyticSuppliers
noncomputable section

def entranceScale : ℕ := 139000000000000000
def reserve : ℝ := 549 / 350
def greenBudget : ℝ := (301401 / 245000) * Real.sqrt entranceScale

/-- Both the exact entrance and every selected finite horizon remain quantified. -/
def SelectedGreenReserveSupplier : Prop :=
  ∃ N : ℕ, entranceScale ≤ N ∧ ordinaryPrimePrimitive N ≤ -reserve ∧
    cumulativeDiscrepancy ordinaryPrimeCoefficient N ≤ 0 ∧
    ∀ K : ℕ, reserve < actualSuffix N K 0 →
      (∀ j : ℕ, j < K → 0 ≤ actualSuffix N K j) →
      profileWork (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j))
        (actualSuffix N K) K +
        (cumulativeDiscrepancy ordinaryPrimeCoefficient N) ^ 2 *
          cellClock N (N + 1 : ℕ) ≤ greenBudget

theorem literal_reserve_identity :
    (2 / Real.sqrt entranceScale) * greenBudget = reserve ^ 2 := by
  have hs : Real.sqrt (entranceScale : ℝ) ≠ 0 := by
    exact (Real.sqrt_pos.mpr (by norm_num [entranceScale])).ne'
  unfold greenBudget reserve
  field_simp
  norm_num

theorem later_entrance_budget {N : ℕ} (hN : entranceScale ≤ N) :
    (2 / Real.sqrt N) * greenBudget ≤ reserve ^ 2 := by
  have hpositive : 0 < Real.sqrt (entranceScale : ℝ) := by
    apply Real.sqrt_pos.mpr
    norm_num [entranceScale]
  have hs : Real.sqrt (entranceScale : ℝ) ≤ Real.sqrt N :=
    Real.sqrt_le_sqrt (by exact_mod_cast hN)
  have hdiv : (2 : ℝ) / Real.sqrt N ≤ 2 / Real.sqrt entranceScale :=
    div_le_div_of_nonneg_left (by norm_num) hpositive hs
  have hbudget : 0 ≤ greenBudget := by unfold greenBudget; positivity
  calc
    _ ≤ (2 / Real.sqrt entranceScale) * greenBudget :=
      mul_le_mul_of_nonneg_right hdiv hbudget
    _ = _ := literal_reserve_identity

/-- This consumes the actual source cap, including its nonnegative entrance allowance. -/
theorem selectedGreenReserve_implies_eventualSign (h : SelectedGreenReserveSupplier) :
    OrdinaryPrimeEventualSignSupplier := by
  obtain ⟨N, hN, hstart, hB, hcap⟩ := h
  have hN2 : 2 ≤ N := by
    have : 2 ≤ entranceScale := by norm_num [entranceScale]
    omega
  apply selected_green_cap_implies_eventualSign hN2 (by norm_num [reserve]) hstart hB
  · intro K hheight hpositive
    have h := hcap K hheight hpositive
    have hboundary : 0 ≤ (cumulativeDiscrepancy ordinaryPrimeCoefficient N) ^ 2 *
        cellClock N (N + 1 : ℕ) :=
      mul_nonneg (sq_nonneg _) (NativeRecordConsumer.cellClock_pos (by omega)).le
    linarith
  · exact later_entrance_budget hN

/-- The next analytic consumer exposes its missing return theorem as a hypothesis. -/
theorem rh_of_selectedGreenReserve_and_landauReturn
    (h : SelectedGreenReserveSupplier) (hreturn : OrdinaryPrimeSignLandauReturn) :
    RiemannHypothesis :=
  rh_of_primeSign_and_landauReturn (selectedGreenReserve_implies_eventualSign h) hreturn

end
end GRWTSK.RiemannHypothesis.Conversation.ReserveConsumer
```
