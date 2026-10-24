# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ExponentialRecurrence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d8134f07d213526eca3c65ae63d44a362d10b5d` · SHA-256 `e8456ac773c17b124142797d8eb0c6c9ed83fe462606844ee3f603ab79b3327b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

/-! Generalized ASBN closure for nonnegative logarithmic cumulative block costs.
The square-root cost is proved affordable for blocks with a positive lower
harmonic mass, with one separately paid terminal remainder.
Arithmetic hypotheses are explicit theorem arguments, never axioms. -/

noncomputable section
open scoped BigOperators
namespace PPNCP04.Cost

def prefixSum (a : ℕ → ℝ) : ℕ → ℝ :=
  Nat.rec 0 (fun n r => r + a n)

@[simp] theorem prefixSum_zero (a : ℕ → ℝ) : prefixSum a 0 = 0 := rfl
@[simp] theorem prefixSum_succ (a : ℕ → ℝ) (n : ℕ) : prefixSum a (n+1) = prefixSum a n + a n := rfl

theorem prefixSum_nonneg (a : ℕ → ℝ) (ha : ∀ j, 0 ≤ a j) :
    ∀ n, 0 ≤ prefixSum a n := by
  intro n
  induction n with
  | zero => simp [prefixSum]
  | succ n ih => exact add_nonneg ih (ha n)

theorem generalized_iteration (φ γ debit : ℕ → ℝ)
    (hγ : ∀ j, 0 ≤ γ j) (hdebit : ∀ j, 0 ≤ debit j)
    (hstep : ∀ j, φ (j+1) ≤ Real.exp (γ j)*φ j+debit j) :
    ∀ n, φ n ≤ Real.exp (prefixSum γ n)*(φ 0+prefixSum debit n) := by
  intro n
  induction n with
  | zero => simp [prefixSum]
  | succ n ih =>
      have hmul := mul_le_mul_of_nonneg_left ih (Real.exp_pos (γ n)).le
      have he : Real.exp (γ n)*Real.exp (prefixSum γ n) =
          Real.exp (prefixSum γ (n+1)) := by
        rw [←Real.exp_add]
        congr 1
        simp [prefixSum, add_comm]
      have hone : 1 ≤ Real.exp (prefixSum γ (n+1)) :=
        Real.one_le_exp_iff.mpr (prefixSum_nonneg γ hγ (n+1))
      have hpay : debit n ≤ Real.exp (prefixSum γ (n+1))*debit n := by
        nlinarith [hdebit n]
      calc
        φ (n+1) ≤ Real.exp (γ n)*φ n+debit n := hstep n
        _ ≤ Real.exp (γ n)*(Real.exp (prefixSum γ n)*(φ 0+prefixSum debit n))+debit n :=
          add_le_add hmul le_rfl
        _ = Real.exp (prefixSum γ (n+1))*(φ 0+prefixSum debit n)+debit n := by
          rw [←mul_assoc, he]
        _ ≤ Real.exp (prefixSum γ (n+1))*(φ 0+prefixSum debit n)+
            Real.exp (prefixSum γ (n+1))*debit n := add_le_add le_rfl hpay
        _ = Real.exp (prefixSum γ (n+1))*(φ 0+prefixSum debit (n+1)) := by
          simp [prefixSum]; ring

def blockCost (κ w : ℝ) : ℝ := 2*κ*Real.sqrt w+w
def massCostConstant (κ η : ℝ) : ℝ := 1+2*κ/Real.sqrt (η/2)

theorem blockCost_nonneg {κ w : ℝ} (hκ : 0 ≤ κ) (hw : 0 ≤ w) :
    0 ≤ blockCost κ w := by
  dsimp [blockCost]
  positivity

theorem sqrt_mass_bound {η w : ℝ} (hη : 0 < η) (hw : η/2 ≤ w) :
    Real.sqrt w ≤ w/Real.sqrt (η/2) := by
  have hd : 0 < Real.sqrt (η/2) := Real.sqrt_pos.mpr (by linarith)
  have hw0 : 0 ≤ w := by linarith
  apply (le_div_iff₀ hd).mpr
  calc
    Real.sqrt w*Real.sqrt (η/2) ≤ Real.sqrt w*Real.sqrt w :=
      mul_le_mul_of_nonneg_left (Real.sqrt_le_sqrt hw) (Real.sqrt_nonneg w)
    _ = w := Real.mul_self_sqrt hw0

theorem blockCost_le_mass {κ η w : ℝ} (hκ : 0 ≤ κ) (hη : 0 < η)
    (hw : η/2 ≤ w) :
    blockCost κ w ≤ massCostConstant κ η*w := by
  have hs := sqrt_mass_bound hη hw
  have hm := mul_le_mul_of_nonneg_left hs (show 0 ≤ 2*κ by positivity)
  dsimp [blockCost, massCostConstant]
  calc
    2*κ*Real.sqrt w+w ≤ 2*κ*(w/Real.sqrt (η/2))+w := by linarith
    _ = (1+2*κ/Real.sqrt (η/2))*w := by ring

theorem remainder_cost {κ η w : ℝ} (hκ : 0 ≤ κ) (hw : w ≤ η) :
    blockCost κ w ≤ 2*κ*Real.sqrt η+η := by
  have hm := mul_le_mul_of_nonneg_left (Real.sqrt_le_sqrt hw)
    (show 0 ≤ 2*κ by positivity)
  dsimp [blockCost]
  linarith

theorem sum_cost_with_remainder {ι : Type*} [DecidableEq ι]
    (s : Finset ι) (w : ι → ℝ) (κ η : ℝ) (remainder : ι)
    (hκ : 0 ≤ κ) (hη : 0 < η)
    (hw0 : ∀ j ∈ s, 0 ≤ w j)
    (hupper : ∀ j ∈ s, w j ≤ η)
    (hlower : ∀ j ∈ s, j ≠ remainder → η/2 ≤ w j) :
    (∑ j ∈ s, blockCost κ (w j)) ≤
      massCostConstant κ η*(∑ j ∈ s, w j)+(2*κ*Real.sqrt η+η) := by
  have hc0 : 0 ≤ massCostConstant κ η := by
    dsimp [massCostConstant]; positivity
  have htail0 : 0 ≤ 2*κ*Real.sqrt η+η := by positivity
  calc
    (∑ j ∈ s, blockCost κ (w j)) ≤
        ∑ j ∈ s, (massCostConstant κ η*w j+
          if j = remainder then 2*κ*Real.sqrt η+η else 0) := by
      apply Finset.sum_le_sum
      intro j hj
      by_cases hjr : j = remainder
      · simp only [if_pos hjr]
        exact (remainder_cost hκ (hupper j hj)).trans
          (le_add_of_nonneg_left (mul_nonneg hc0 (hw0 j hj)))
      · simp only [if_neg hjr, add_zero]
        exact blockCost_le_mass hκ hη (hlower j hj hjr)
    _ = massCostConstant κ η*(∑ j ∈ s, w j)+
        (if remainder ∈ s then 2*κ*Real.sqrt η+η else 0) := by
      simp [Finset.sum_add_distrib, Finset.mul_sum]
    _ ≤ massCostConstant κ η*(∑ j ∈ s, w j)+(2*κ*Real.sqrt η+η) := by
      split_ifs <;> linarith

/-- Conversion of a logarithmic total exponent into a real polynomial bound. -/
theorem exp_cost_polynomial {T total d H : ℝ}
    (hT : 0 ≤ T) (hcost : total ≤ d*Real.log (1+T)+H) :
    Real.exp total ≤ Real.exp H*(1+T)^d := by
  have hbase : 0 < 1+T := by linarith
  calc
    Real.exp total ≤ Real.exp (d*Real.log (1+T)+H) := Real.exp_le_exp.mpr hcost
    _ = Real.exp H*(1+T)^d := by
      rw [Real.exp_add, Real.rpow_def_of_pos hbase]
      ring_nf

end PPNCP04.Cost

#print axioms PPNCP04.Cost.generalized_iteration
#print axioms PPNCP04.Cost.sum_cost_with_remainder
#print axioms PPNCP04.Cost.exp_cost_polynomial
```
