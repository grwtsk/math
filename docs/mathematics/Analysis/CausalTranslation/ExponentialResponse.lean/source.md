# Complete source: GRWTSK.Analysis.CausalTranslation.ExponentialResponse

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a823d729857aba89add64c5281fae8a28e25341f` · SHA-256 `d2b4b9eb949ec1ae4451d614aac79fb7d8691e36b3e17ee2077eb19c28b180ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
Pointwise causal note identity and finite signed quadratic algebra.
The arithmetic finite-product identification and integral block expansion
are formalized in PickupFiniteProduct.lean.
-/

namespace ASBNP04

noncomputable def causalShift (a : ℝ) (f : ℝ → ℝ) (u : ℝ) : ℝ :=
  if a ≤ u then f (u - a) else 0

noncomputable def baseWave (u : ℝ) : ℝ :=
  if 0 ≤ u then 2 * (1 - Real.exp (-u / 2)) else 0

noncomputable def atom (n u : ℝ) : ℝ :=
  if Real.log n ≤ u then 2 * ((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) else 0

theorem causalShift_comp (a c : ℝ) (hc : 0 ≤ c) (f : ℝ → ℝ) :
    causalShift a (causalShift c f) = causalShift (a + c) f := by
  funext u
  by_cases hsum : a + c ≤ u
  · have ha : a ≤ u := by linarith
    have hca : c ≤ u - a := by linarith
    simp only [causalShift, if_pos hsum, if_pos ha, if_pos hca]
    congr 1
    ring
  · by_cases ha : a ≤ u
    · have hca : ¬ c ≤ u - a := by linarith
      simp [causalShift, hsum, ha, hca]
    · simp [causalShift, hsum, ha]

theorem causalShift_comm (a c : ℝ) (ha : 0 ≤ a) (hc : 0 ≤ c) (f : ℝ → ℝ) :
    causalShift a (causalShift c f) = causalShift c (causalShift a f) := by
  rw [causalShift_comp a c hc, causalShift_comp c a ha, add_comm]

theorem exp_negative_half_log {n : ℝ} (hn : 0 < n) :
    Real.exp (-Real.log n / 2) = (Real.sqrt n)⁻¹ := by
  rw [show -Real.log n / 2 = -(Real.log n / 2) by ring,
    Real.exp_neg, ← Real.log_sqrt hn.le, Real.exp_log (Real.sqrt_pos.mpr hn)]

/-- The exact causal atom identity, including its zero-valued entry cutoff. -/
theorem atom_eq_scaled_shift {n : ℝ} (hn : 0 < n) (u : ℝ) :
    atom n u = (Real.sqrt n)⁻¹ * causalShift (Real.log n) baseWave u := by
  by_cases hu : Real.log n ≤ u
  · have hbase : 0 ≤ u - Real.log n := by linarith
    simp only [atom, causalShift, baseWave, if_pos hu, if_pos hbase]
    have hexp : (Real.sqrt n)⁻¹ * Real.exp (-(u - Real.log n) / 2) =
        Real.exp (-u / 2) := by
      rw [← exp_negative_half_log hn, ← Real.exp_add]
      congr 1
      ring
    nlinarith
  · simp [atom, causalShift, hu]

theorem atom_entry_zero {n : ℝ} (hn : 0 < n) : atom n (Real.log n) = 0 := by
  simp [atom, exp_negative_half_log hn]

/-- Both ordered copies of every signed cross term are retained. -/
theorem signed_quadratic_expansion {ι : Type*} [DecidableEq ι]
    (s : Finset ι) (c v : ι → ℝ) :
    (∑ i ∈ s, c i * v i) ^ 2 =
      ∑ i ∈ s, ∑ j ∈ s, c i * c j * (v i * v j) := by
  rw [pow_two, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro i hi
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j hj
  ring

end ASBNP04

#print axioms ASBNP04.causalShift_comm
#print axioms ASBNP04.atom_eq_scaled_shift
#print axioms ASBNP04.signed_quadratic_expansion
```
