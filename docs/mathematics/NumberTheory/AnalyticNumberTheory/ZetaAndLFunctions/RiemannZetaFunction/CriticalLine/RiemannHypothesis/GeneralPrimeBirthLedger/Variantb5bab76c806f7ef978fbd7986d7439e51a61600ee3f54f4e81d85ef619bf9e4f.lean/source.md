# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GeneralPrimeBirthLedger.Variantb5bab76c806f7ef978fbd7986d7439e51a61600ee3f54f4e81d85ef619bf9e4f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `320aeca2c5d965e7786fdd8b16bca1b20c40337c` · SHA-256 `b5bab76c806f7ef978fbd7986d7439e51a61600ee3f54f4e81d85ef619bf9e4f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.AtomicThetaBirth

/-!
# Every actual prime birth has its exact rational approach and retained jump

L-HC02's first-birth consumer extends to every actual prime. The rational
probe remains in the immediately preceding integer cell, and the qualified
Mathlib floor law gives its exact theta value. The closed endpoint adds log p.
The literal theta is discontinuous at every prime, while the unchanged
ordinary-prime integrated hinge source remains continuous. No moving-seam
estimate, atom-free interpolation claim or rational-test failure is inferred.

Human birth-ledger requirement: grwtsk contributors. Local general-prime
endpoint and limit consumer: OpenAI Codex. Mathlib theta and floor laws remain
upstream declarations.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.GeneralPrimeBirthLedger
open Filter
open scoped Topology
noncomputable section

/-- The birth probe in this module, with the following exact parameterization.

def birthProbe (p n : ℕ) : ℚ := (p : ℚ) - 2 + AtomicThetaBirth.rationalProbe n
-/
def birthProbe (p n : ℕ) : ℚ := (p : ℚ) - 2 + AtomicThetaBirth.rationalProbe n

theorem probe_in_preceding_cell (p n : ℕ) :
    (p : ℝ) - 1 ≤ (birthProbe p n : ℝ) ∧ (birthProbe p n : ℝ) < p := by
  have h := AtomicThetaBirth.rational_probe_bounds n
  simp only [birthProbe, Rat.cast_add, Rat.cast_sub, Rat.cast_natCast, Rat.cast_ofNat]
  constructor <;> linarith

theorem probe_tends_to_actual_birth (p : ℕ) :
    Tendsto (fun n : ℕ ↦ (birthProbe p n : ℝ)) atTop (𝓝 (p : ℝ)) := by
  have h := (tendsto_const_nhds :
    Tendsto (fun _ : ℕ ↦ (p : ℝ) - 2) atTop (𝓝 ((p : ℝ) - 2))).add
      AtomicThetaBirth.rational_probe_tends_to_birth
  have he : (p : ℝ) - 2 + 2 = p := by ring
  simpa only [birthProbe, Rat.cast_add, Rat.cast_sub, Rat.cast_natCast, Rat.cast_ofNat, he] using h

theorem probe_floor_retains_previous_inventory {p : ℕ} (hp : 2 ≤ p) (n : ℕ) :
    ⌊(birthProbe p n : ℝ)⌋₊ = p - 1 := by
  have h := probe_in_preceding_cell p n
  have he : ((p - 1 : ℕ) : ℝ) = (p : ℝ) - 1 := by
    rw [Nat.cast_sub (by omega : 1 ≤ p), Nat.cast_one]
  have hq : 0 ≤ (birthProbe p n : ℝ) := by
    have hp0 := Nat.cast_nonneg (α := ℝ) (p - 1)
    rw [he] at hp0
    linarith
  apply (Nat.floor_eq_iff hq).mpr
  rw [he]
  constructor <;> linarith

theorem every_probe_retains_previous_theta {p : ℕ} (hp : 2 ≤ p) (n : ℕ) :
    Chebyshev.theta (birthProbe p n) = Chebyshev.theta (p - 1 : ℕ) := by
  rw [Chebyshev.theta_eq_theta_coe_floor, probe_floor_retains_previous_inventory hp n]

theorem literal_integer_theta_birth {n : ℕ} (hn : 1 ≤ n) :
    Chebyshev.theta (n + 1 : ℕ) = Chebyshev.theta n +
      (if (n + 1).Prime then Real.log (n + 1 : ℕ) else 0) := by
  rw [PrimeStorage.theta_eq_all_integer_sum, PrimeStorage.theta_eq_all_integer_sum,
    Finset.sum_Icc_succ_top (by omega : 2 ≤ n + 1)]

theorem literal_prime_birth {p : ℕ} (hp : p.Prime) :
    Chebyshev.theta p = Chebyshev.theta (p - 1 : ℕ) + Real.log p := by
  have h := literal_integer_theta_birth (n := p - 1) (by have := hp.two_le; omega)
  simpa only [Nat.sub_add_cancel hp.one_lt.le, if_pos hp] using h

/-- The native every-integer storage keeps its separate minus-one correction. -/
theorem literal_ordinary_storage_birth {p : ℕ} (hp : p.Prime) :
    ArithmeticPrimitive.cumulativeDiscrepancy OpenArithmeticSuppliers.ordinaryPrimeCoefficient p -
      ArithmeticPrimitive.cumulativeDiscrepancy OpenArithmeticSuppliers.ordinaryPrimeCoefficient
        (p - 1) =
        Real.log p - 1 := by
  have hn : 1 ≤ p - 1 := by have := hp.two_le; omega
  have h := PrimeStorage.actual_storage_step hn
  rw [Nat.sub_add_cancel hp.one_lt.le,
    OpenArithmeticSuppliers.ordinaryPrimeCoefficient_at_source_index hp.two_le, if_pos hp] at h
  exact h

theorem theta_discontinuous_at_every_prime {p : ℕ} (hp : p.Prime) :
    ¬ ContinuousAt Chebyshev.theta (p : ℝ) := by
  intro hc
  have h := hc.tendsto.comp (probe_tends_to_actual_birth p)
  have hz : Tendsto (fun n : ℕ ↦ Chebyshev.theta (birthProbe p n)) atTop
      (𝓝 (Chebyshev.theta (p - 1 : ℕ))) := by
    simpa only [every_probe_retains_previous_theta hp.two_le] using
      (tendsto_const_nhds : Tendsto (fun _ : ℕ ↦ Chebyshev.theta (p - 1 : ℕ)) atTop
        (𝓝 (Chebyshev.theta (p - 1 : ℕ))))
  have he := tendsto_nhds_unique h hz
  rw [literal_prime_birth hp] at he
  have hl : 0 < Real.log (p : ℝ) := Real.log_pos (by exact_mod_cast hp.one_lt)
  linarith

theorem integrated_source_continuous_at_every_prime {p : ℕ} (hp : p.Prime) :
    ContinuousAt (ArithmeticPrimitive.closedPrimitive
      OpenArithmeticSuppliers.ordinaryPrimeCoefficient)
      (p : ℝ) := ArithmeticPrimitive.closedPrimitive_continuousAt _ (by exact_mod_cast hp.pos)

end
end GRWTSK.RiemannHypothesis.Conversation.GeneralPrimeBirthLedger
```
