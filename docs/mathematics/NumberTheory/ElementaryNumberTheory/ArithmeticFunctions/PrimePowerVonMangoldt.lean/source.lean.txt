/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI GPT-5.6 Sol.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerAtoms
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Tactic

set_option autoImplicit false

open scoped BigOperators ArithmeticFunction

/-!
# Von Mangoldt readout on source-faithful prime-power atoms

A prime-power atom `(p,m)` is evaluated at the actual natural prime power
`p^m`. Mathlib's von Mangoldt function gives the exact weight `log p`,
independent of the positive exponent `m`.

Finite linear readouts and their square-energy quadraticization are defined
before any quotient to net prime exponents. The quadratic energy is
nonnegative by theorem and uses no PNT or asymptotic prime estimate.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt

open GRWTSK.NumberTheory.ArithmeticFunctions.PrimeExponentScale
open GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerAtoms

/-- Natural number represented by one prime-power atom. -/
def atomNat (a : PrimePowerAtom) : ℕ :=
  a.prime.1 ^ a.exponent.1

theorem atomNat_pos (a : PrimePowerAtom) : 0 < atomNat a := by
  exact pow_pos a.prime.2.pos a.exponent.1

theorem atomNat_ne_zero (a : PrimePowerAtom) : atomNat a ≠ 0 :=
  Nat.ne_of_gt (atomNat_pos a)

/-- Exact source weight: von Mangoldt at `p^m` equals `log p` for every
positive exponent. -/
theorem vonMangoldt_atomNat (a : PrimePowerAtom) :
    ArithmeticFunction.vonMangoldt (atomNat a) =
      Real.log (a.prime.1 : ℝ) := by
  rw [atomNat,
    ArithmeticFunction.vonMangoldt_apply_pow
      (n := a.prime.1) (k := a.exponent.1)
      (Nat.ne_of_gt a.exponent.2),
    ArithmeticFunction.vonMangoldt_apply_prime a.prime.2]

/-- The exact prime-power von Mangoldt weight attached to one source atom. -/
noncomputable def atomWeight (a : PrimePowerAtom) : ℝ :=
  ArithmeticFunction.vonMangoldt (atomNat a)

@[simp]
theorem atomWeight_eq_log (a : PrimePowerAtom) :
    atomWeight a = Real.log (a.prime.1 : ℝ) :=
  vonMangoldt_atomNat a

theorem atomWeight_nonneg (a : PrimePowerAtom) : 0 ≤ atomWeight a := by
  unfold atomWeight
  exact ArithmeticFunction.vonMangoldt_nonneg

theorem atomWeight_pos (a : PrimePowerAtom) : 0 < atomWeight a := by
  rw [atomWeight_eq_log]
  exact Real.log_pos (by exact_mod_cast a.prime.2.one_lt)

/-- Exact finite linear prime-power readout. -/
noncomputable def stageReadout
    (stage : PrimePowerWitnessStage) (f : ℝ → ℝ) : ℝ :=
  ∑ a : stage.WitnessIndex,
    atomWeight a.1 * f (logLocation a.1)

/-- The canonical finite quadratic source obtained from the same prime-power
locations and von Mangoldt weights. -/
noncomputable def stageEnergy
    (stage : PrimePowerWitnessStage) (f : ℝ → ℝ) : ℝ :=
  ∑ a : stage.WitnessIndex,
    atomWeight a.1 * (f (logLocation a.1)) ^ 2

theorem stageEnergy_nonneg
    (stage : PrimePowerWitnessStage) (f : ℝ → ℝ) :
    0 ≤ stageEnergy stage f := by
  classical
  unfold stageEnergy
  exact Finset.sum_nonneg fun a _ =>
    mul_nonneg (atomWeight_nonneg a.1)
      (sq_nonneg (f (logLocation a.1)))

/-- Rewriting the finite linear readout exposes the exact Mathlib
von-Mangoldt coefficient at every prime-power atom. -/
theorem stageReadout_eq_vonMangoldt_sum
    (stage : PrimePowerWitnessStage) (f : ℝ → ℝ) :
    stageReadout stage f =
      ∑ a : stage.WitnessIndex,
        ArithmeticFunction.vonMangoldt (atomNat a.1) *
          f (logLocation a.1) := by
  rfl

/-- Rewriting the finite Gram exposes the same exact prime-power weights. -/
theorem stageEnergy_eq_vonMangoldt_sum
    (stage : PrimePowerWitnessStage) (f : ℝ → ℝ) :
    stageEnergy stage f =
      ∑ a : stage.WitnessIndex,
        ArithmeticFunction.vonMangoldt (atomNat a.1) *
          (f (logLocation a.1)) ^ 2 := by
  rfl

/-- The source weight itself does not multiply by the prime-power exponent:
both `p` and `p^m` carry `log p`. -/
theorem atomWeight_same_prime
    (p : PrimeIndex) (m : ℕ) (hm : 0 < m) :
    atomWeight (atom p m hm) = atomWeight (unitAtom p) := by
  simp [atomWeight_eq_log, atom, unitAtom]

/-- The exponent-two source weight is not twice the exponent-one source
weight. This is an exact guard against replacing von Mangoldt by a net
exponent coefficient. -/
theorem squareAtom_weight_ne_two_unitAtom_weight (p : PrimeIndex) :
    atomWeight (squareAtom p) ≠ 2 * atomWeight (unitAtom p) := by
  have hp : 0 < atomWeight (unitAtom p) :=
    atomWeight_pos (unitAtom p)
  have heq : atomWeight (squareAtom p) = atomWeight (unitAtom p) := by
    simpa only [squareAtom] using atomWeight_same_prime p 2 (by norm_num)
  rw [heq]
  nlinarith

end GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt
