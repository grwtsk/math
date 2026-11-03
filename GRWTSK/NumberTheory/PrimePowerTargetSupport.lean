/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.TargetSupportCompensation

set_option autoImplicit false
noncomputable section

/-!
# Support cost of an unbounded prime-power target

For genuine coprime additive triples with c=p^k, the target's radical
stays p, while the defect grows with k unless the two summand supports
compensate it. This retains the exponent hidden by the operator's
prime-power-blind Mangoldt/radical channel. No bound on that compensating
support for all such additive triples is supplied.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.ABC.PrimePowerTargetSupport
open RetainedFactorization AdditiveDefectEstimate

theorem prime_power_target_defect (T : CoprimeAdditiveTriple)
    (p k : ℕ) (hp : p.Prime) (hk : k ≠ 0) (hc : T.c = p ^ k) (ε : ℝ) :
    defect T ε = ((k : ℝ) - 1 - ε) * Real.log (p : ℝ) -
      (1 + ε) * (Real.log (UniqueFactorizationMonoid.radical T.a : ℝ) +
        Real.log (UniqueFactorizationMonoid.radical T.b : ℝ)) := by
  have hrad : UniqueFactorizationMonoid.radical T.c = p := by
    rw [hc]
    exact UniqueFactorizationMonoid.radical_pow_of_prime
      (Nat.prime_iff.mp hp) hk
  have hlog : Real.log (T.c : ℝ) = (k : ℝ) * Real.log (p : ℝ) := by
    rw [hc, Nat.cast_pow, Real.log_pow]
  have hprod := log_radical_product T
  rw [hrad] at hprod
  unfold defect
  rw [hlog, hprod]
  ring

/-- Exact arithmetic obligation; it does not follow from prime support encoding. -/
theorem defect_bound_iff_summand_support (T : CoprimeAdditiveTriple)
    (p k : ℕ) (hp : p.Prime) (hk : k ≠ 0) (hc : T.c = p ^ k) (ε C : ℝ) :
    defect T ε ≤ C ↔
      ((k : ℝ) - 1 - ε) * Real.log (p : ℝ) ≤ C +
        (1 + ε) * (Real.log (UniqueFactorizationMonoid.radical T.a : ℝ) +
          Real.log (UniqueFactorizationMonoid.radical T.b : ℝ)) := by
  rw [prime_power_target_defect T p k hp hk hc ε]
  constructor <;> intro h <;> linarith

theorem exponent_le_of_defect_bound (T : CoprimeAdditiveTriple)
    (p k : ℕ) (hp : p.Prime) (hk : k ≠ 0) (hc : T.c = p ^ k) (ε C : ℝ)
    (h : defect T ε ≤ C) :
    (k : ℝ) ≤ 1 + ε +
      (C + (1 + ε) * (Real.log (UniqueFactorizationMonoid.radical T.a : ℝ) +
        Real.log (UniqueFactorizationMonoid.radical T.b : ℝ))) / Real.log (p : ℝ) := by
  have hs := (defect_bound_iff_summand_support T p k hp hk hc ε C).mp h
  have hd := (le_div_iff₀ hp.log_pos).mpr hs
  linarith

end GRWTSK.NumberTheory.ABC.PrimePowerTargetSupport
