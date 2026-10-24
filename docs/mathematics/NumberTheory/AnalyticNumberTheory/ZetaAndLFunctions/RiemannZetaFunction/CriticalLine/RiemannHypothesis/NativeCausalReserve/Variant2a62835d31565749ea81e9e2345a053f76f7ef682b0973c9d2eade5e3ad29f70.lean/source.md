# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NativeCausalReserve.Variant2a62835d31565749ea81e9e2345a053f76f7ef682b0973c9d2eade5e3ad29f70

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17078a3e9036cb4fd4c53e4d33050e31fe45f1b7` · SHA-256 `2a62835d31565749ea81e9e2345a053f76f7ef682b0973c9d2eade5e3ad29f70`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.CausalReserveProcess
import FormalResearch.RiemannHypothesis.Conversation.AccordionConsumer

/-!
# Actual signed prime cells consume the chronological reserve criterion

The credit/debt split uses every literal native cell of the ordinary-prime
primitive. Negative work supplies credit and positive work requires existing
reserve. Their canonical balance is exactly the entrance reserve minus the
signed primitive rise. Uniform causal feasibility is equivalent to a bound
on all actual integer prefixes; the exact cell adapter covers every real
point. No uniform prefix condition or starting reserve is proved here.

Human chronological-credit and prime-source direction: grwtsk contributors.
Local exact signed-cell consumer and Lean proof: OpenAI Codex. These are
conditional interfaces, not an independent proof of the arithmetic target.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.NativeCausalReserve

open CausalReserveProcess NativeCellBound NativeRecordConsumer ArithmeticPrimitive
open OpenArithmeticSuppliers
open scoped BigOperators
noncomputable section

def signedCell (N j : ℕ) : ℝ := cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j) *
  cellClock (N + j) (N + j + 1 : ℕ)
def credit (N j : ℕ) : ℝ := max (-signedCell N j) 0
def debt (N j : ℕ) : ℝ := max (signedCell N j) 0

theorem negative_credit_minus_positive_debt (N j : ℕ) :
    credit N j - debt N j = -signedCell N j := by
  rcases le_total (signedCell N j) 0 with h | h
  · rw [credit, debt, max_eq_left (by linarith : 0 ≤ -signedCell N j), max_eq_right h]
    ring
  · rw [credit, debt, max_eq_right (by linarith : -signedCell N j ≤ 0), max_eq_left h]
    ring

theorem actual_stock_identity {N : ℕ} (hN : 1 ≤ N) (R : ℝ) (j : ℕ) :
    stock R (credit N) (debt N) j =
      R - (ordinaryPrimePrimitive (N + j : ℕ) - ordinaryPrimePrimitive N) := by
  rw [AccordionConsumer.actual_signed_work_telescope hN]
  change R + (∑ i ∈ Finset.range j, credit N i) - (∑ i ∈ Finset.range j, debt N i) =
    R - ∑ i ∈ Finset.range j, signedCell N i
  calc
    _ = R + ((∑ i ∈ Finset.range j, credit N i) - ∑ i ∈ Finset.range j, debt N i) := by ring
    _ = R + ∑ i ∈ Finset.range j, (credit N i - debt N i) := by
      rw [Finset.sum_sub_distrib]
    _ = _ := by
      simp_rw [negative_credit_minus_positive_debt]
      rw [Finset.sum_neg_distrib]
      ring

theorem all_integer_prefixes_imply_causal_processes {N : ℕ} {R : ℝ} (hN : 1 ≤ N)
    (hbound : ∀ j : ℕ,
      ordinaryPrimePrimitive (N + j : ℕ) - ordinaryPrimePrimitive N ≤ R) :
    ∀ K : ℕ, ReserveProcess R (credit N) (debt N) K := by
  intro K
  refine ⟨stock R (credit N) (debt N), stock_initial R _ _, ?_⟩
  intro j _
  refine ⟨?_, stock_step R _ _ j⟩
  rw [actual_stock_identity hN]
  unfold debt
  apply max_le
  · have hstep := AccordionConsumer.ordinaryPrime_integer_step
      (n := N + j) (by omega)
    have hb := hbound (j + 1)
    rw [show N + (j + 1) = N + j + 1 by omega] at hb
    unfold signedCell
    linarith
  · linarith [hbound j]

theorem causal_processes_imply_all_integer_prefixes {N : ℕ} {R : ℝ}
    (hN : 1 ≤ N) (hR : 0 ≤ R)
    (hprocess : ∀ K : ℕ, ReserveProcess R (credit N) (debt N) K) :
    ∀ j : ℕ, ordinaryPrimePrimitive (N + j : ℕ) - ordinaryPrimePrimitive N ≤ R := by
  intro j
  have hp := (process_iff_prefix_covered R (credit N) (debt N) j).mp (hprocess j)
  have hstock := canonical_stock_nonneg hR (fun i => le_max_right _ _) hp j le_rfl
  change 0 ≤ stock R (credit N) (debt N) j at hstock
  rw [actual_stock_identity hN] at hstock
  linarith

theorem actual_causal_feasibility_iff_prefix_bound {N : ℕ} {R : ℝ}
    (hN : 1 ≤ N) (hR : 0 ≤ R) :
    (∀ K : ℕ, ReserveProcess R (credit N) (debt N) K) ↔
      (∀ j : ℕ, ordinaryPrimePrimitive (N + j : ℕ) - ordinaryPrimePrimitive N ≤ R) :=
  ⟨causal_processes_imply_all_integer_prefixes hN hR,
    all_integer_prefixes_imply_causal_processes hN⟩

theorem actual_causal_reserve_implies_eventual_sign {N : ℕ} {R : ℝ}
    (hN : 2 ≤ N) (hR : 0 ≤ R) (hstart : ordinaryPrimePrimitive N ≤ -R)
    (hprocess : ∀ K : ℕ, ReserveProcess R (credit N) (debt N) K) :
    OrdinaryPrimeEventualSignSupplier := by
  have hint := causal_processes_imply_all_integer_prefixes (by omega : 1 ≤ N) hR hprocess
  have hreal := actual_integer_upper_implies_all_real (by omega : 1 ≤ N) hint
  refine ⟨N, by exact_mod_cast hN, ?_⟩
  intro x hx
  linarith [hreal x hx]

end
end GRWTSK.RiemannHypothesis.Conversation.NativeCausalReserve
```
