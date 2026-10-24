# Complete source: GRWTSK.Analysis.Complex.TentKernelTail

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa4c1d6ad206a6586ae0bb5f7f6e09912628e044` · SHA-256 `271415caa06e1b47feacaa2b268da306fe174318dd70a10910dff2caaa907107`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Series.HeightCountingTail
import GRWTSK.Analysis.Complex.TentMellinKernel
import Mathlib.Topology.Algebra.InfiniteSum.Group

set_option autoImplicit false

/-!
# Complete multiplicity-weighted tent tails

The inverse-square decay and an all-finite-subsets counting bound derive
absolute summability and the complete omitted tail. No tail norm, summability,
zero enumeration, divisor identity or critical-line assumption is postulated.

The finite head must cover every record of height at most T. A count on just
that head cannot meet the all-finite-subsets hypothesis below. The external
source owner remains responsible for identifying the records with the actual
zeta divisor and natural weights with its analytic multiplicities.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.TentKernelTail

open scoped BigOperators
open GRWTSK.Analysis.Series.HeightCountingTail
open GRWTSK.Analysis.Complex.TentMellinKernel

noncomputable section

variable {ι : Type*}

/-- The derived scalar tail majorant retains the true horizontal bound. -/
def tentTailBudget (x h β T : ℝ) : ℝ :=
  8 * Real.exp ((β + 1) * Real.log (x + h)) * (Real.log T + 1) / (h * T)


/-- Horizontal bound one gives the unconditional-strip-sized numerator.
This is algebra only; it does not prove the strip bound for a zero source. -/
theorem tentTailBudget_beta_one (x h T : ℝ) (hb : 0 < x + h) :
    tentTailBudget x h 1 T =
      8 * (x + h) ^ 2 * (Real.log T + 1) / (h * T) := by
  have he : Real.exp (((1 : ℝ) + 1) * Real.log (x + h)) = (x + h) ^ 2 := by
    calc
      _ = Real.exp (Real.log (x + h) + Real.log (x + h)) := by congr 1; ring
      _ = (x + h) * (x + h) := by rw [Real.exp_add, Real.exp_log hb]
      _ = _ := (pow_two _).symm
  unfold tentTailBudget
  rw [he]

/-- Both absolute convergence and the complete norm bound follow from counting. -/
theorem tent_family_tail (x h β T : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (hβ : 0 ≤ β) (hT : 1 ≤ T) (m : ι → ℕ) (ρ : ι → ℂ)
    (hρ : ∀ i, (ρ i).re ≤ β) (hheight : ∀ i, T < |(ρ i).im|)
    (hcount : ∀ S : Finset ι, ∀ t, T ≤ t →
      finiteCountingMass S (fun i => |(ρ i).im|) (fun i => (m i : ℝ)) t ≤
        t * Real.log t) :
    Summable (fun i => ‖(m i : ℂ) * tentKernel x h (ρ i)‖) ∧
      Summable (fun i => (m i : ℂ) * tentKernel x h (ρ i)) ∧
      ‖∑' i, (m i : ℂ) * tentKernel x h (ρ i)‖ ≤ tentTailBudget x h β T := by
  let C : ℝ := 4 * Real.exp ((β + 1) * Real.log (x + h)) / h
  have hC : 0 ≤ C := div_nonneg
    (mul_nonneg (by norm_num) (Real.exp_pos _).le) hh.le
  have hdom : ∀ i,
      ‖(m i : ℂ) * tentKernel x h (ρ i)‖ ≤ C * ((m i : ℝ) / |(ρ i).im| ^ 2) := by
    intro i
    have hγ : (ρ i).im ≠ 0 := by
      intro hz
      have hgt := hheight i
      rw [hz, abs_zero] at hgt
      linarith
    have hk := norm_tentKernel_le_inverse_height_sq x h β hh ha hβ (ρ i) (hρ i) hγ
    calc
      _ = (m i : ℝ) * ‖tentKernel x h (ρ i)‖ := by simp
      _ ≤ (m i : ℝ) *
          (4 * Real.exp ((β + 1) * Real.log (x + h)) / (h * (ρ i).im ^ 2)) :=
        mul_le_mul_of_nonneg_left hk (Nat.cast_nonneg _)
      _ = _ := by unfold C; rw [sq_abs]; simp only [div_eq_mul_inv, mul_inv_rev]; ring
  have hout := dominated_family_summable_and_bound
    (fun i => |(ρ i).im|) (fun i => (m i : ℝ))
    (fun i => (m i : ℂ) * tentKernel x h (ρ i)) T C hT hC
    (fun i => Nat.cast_nonneg _) hheight hcount hdom
  refine ⟨hout.1, hout.2.1, ?_⟩
  calc
    _ ≤ C * inverseSquareBudget T := hout.2.2
    _ = tentTailBudget x h β T := by
      unfold C inverseSquareBudget tentTailBudget
      simp only [div_eq_mul_inv, mul_inv_rev]
      ring

/-- The finite head and its whole complement give a genuine full tsum. Only
the complement needs the horizontal bound. Extra high records in the finite
head are harmless, but every record of height at most T must be covered. -/
theorem tent_full_sum_and_remainder (x h β T : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) (hβ : 0 ≤ β) (hT : 1 ≤ T)
    (head : Finset ι) (m : ι → ℕ) (ρ : ι → ℂ)
    (hhead : ∀ i, |(ρ i).im| ≤ T → i ∈ head)
    (hρ : ∀ i, i ∉ head → (ρ i).re ≤ β)
    (hcount : ∀ S : Finset ι, ∀ t, T ≤ t →
      finiteCountingMass S (fun i => |(ρ i).im|) (fun i => (m i : ℝ)) t ≤
        t * Real.log t) :
    Summable (fun i => ‖(m i : ℂ) * tentKernel x h (ρ i)‖) ∧
      Summable (fun i => (m i : ℂ) * tentKernel x h (ρ i)) ∧
      ‖(∑' i, (m i : ℂ) * tentKernel x h (ρ i)) -
        ∑ i ∈ head, (m i : ℂ) * tentKernel x h (ρ i)‖ ≤ tentTailBudget x h β T := by
  classical
  let e : (Set.Elem ((head : Set ι)ᶜ)) ↪ ι := ⟨Subtype.val, Subtype.val_injective⟩
  have htail := tent_family_tail x h β T hh ha hβ hT
    (fun i : (Set.Elem ((head : Set ι)ᶜ)) => m i) (fun i : (Set.Elem ((head : Set ι)ᶜ)) => ρ i)
    (fun i => hρ i i.property)
    (fun i => lt_of_not_ge (fun hi => i.property (hhead i hi)))
    (fun S t ht => by
      have hc := hcount (S.map e) t ht
      rw [finiteCountingMass_map] at hc
      exact hc)
  have hn : Summable (fun i => ‖(m i : ℂ) * tentKernel x h (ρ i)‖) :=
    head.summable_compl_iff.mp htail.1
  have hs : Summable (fun i => (m i : ℂ) * tentKernel x h (ρ i)) :=
    head.summable_compl_iff.mp htail.2.1
  refine ⟨hn, hs, ?_⟩
  have heq := hs.sum_add_tsum_compl (s := head)
  have hsplit : (∑' i, (m i : ℂ) * tentKernel x h (ρ i)) -
      (∑ i ∈ head, (m i : ℂ) * tentKernel x h (ρ i)) =
      ∑' i : (Set.Elem ((head : Set ι)ᶜ)), (m i : ℂ) * tentKernel x h (ρ i) := by
    rw [← heq]
    ring
  rw [hsplit]
  exact htail.2.2

/-- Same-head evaluation error is distinct from the now-derived complete tail. -/
theorem tent_full_sum_evaluation_error (x h β T : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) (hβ : 0 ≤ β) (hT : 1 ≤ T)
    (head : Finset ι) (m : ι → ℕ) (ρ : ι → ℂ)
    (hhead : ∀ i, |(ρ i).im| ≤ T → i ∈ head)
    (hρ : ∀ i, i ∉ head → (ρ i).re ≤ β)
    (hcount : ∀ S : Finset ι, ∀ t, T ≤ t →
      finiteCountingMass S (fun i => |(ρ i).im|) (fun i => (m i : ℝ)) t ≤ t * Real.log t)
    (evaluated : ℂ) (error : ℝ)
    (heval : ‖(∑ i ∈ head, (m i : ℂ) * tentKernel x h (ρ i)) - evaluated‖ ≤ error) :
    ‖(∑' i, (m i : ℂ) * tentKernel x h (ρ i)) - evaluated‖ ≤
      tentTailBudget x h β T + error := by
  have ht := (tent_full_sum_and_remainder x h β T hh ha hβ hT
    head m ρ hhead hρ hcount).2.2
  calc
    _ = ‖((∑' i, (m i : ℂ) * tentKernel x h (ρ i)) -
          ∑ i ∈ head, (m i : ℂ) * tentKernel x h (ρ i)) +
        ((∑ i ∈ head, (m i : ℂ) * tentKernel x h (ρ i)) - evaluated)‖ := by congr 1; ring
    _ ≤ _ := (norm_add_le _ _).trans (add_le_add ht heval)

end
end GRWTSK.Analysis.Complex.TentKernelTail
```
