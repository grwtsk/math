/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Thomas Browning's Mathlib Liouville source retains its original Apache-2.0
copyright and authorship; the dependency is not copied or modified.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#635. Parent source: #628 / draft PR #632.
-/
import GRWTSK.Analysis.FiniteSums.WalshCylinder
import Mathlib.NumberTheory.ArithmeticFunction.Liouville

/-!
# Exact arithmetic Liouville observations for finite Walsh cylinders

Mathlib defines ArithmeticFunction.liouville 0 = 0 and, away from zero,
ArithmeticFunction.liouville n = (-1) ^ cardFactors n.
A two-symbol coding is therefore sound only at positive inputs. We encode
the parity of the prime-factor count (with multiplicity), then use the
source-bound positive arguments n + 1 + h for every sample and shift.

This module instantiates the inherited finite Walsh identity with the
actual arithmetic Liouville function. It does not prove the vanishing
of any nonempty arithmetic correlation, Bernoulli genericity, ergodicity,
a sofic approximation limit, or the Riemann hypothesis.

Every identity is unnormalized and allows zero samples. A normalized
probability, correlation limit, or spectral assertion is separate.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.LiouvilleWalshCylinder

open GRWTSK.Analysis.FiniteSums.WalshCylinder

/-- True exactly when the number of prime factors, with multiplicity, is even.
At zero this parity remains defined, but it must NOT be mistaken for the
integer Liouville value, which is zero there. -/
def liouvilleParityBit (m : ℕ) : Bool :=
  decide (Even (ArithmeticFunction.cardFactors m))

/-- The parity bit at zero equals true, but this does not represent
the arithmetic Liouville value at zero. -/
@[simp] theorem liouvilleParityBit_zero :
    liouvilleParityBit 0 = true := by
  simp [liouvilleParityBit, ArithmeticFunction.cardFactors_zero]

/-- Hostile zero-source fixture: Mathlib's integer Liouville value at zero
is zero, which cannot equal the two-valued parity sign. -/
theorem liouville_zero_not_binary :
    ((ArithmeticFunction.liouville 0 : ℤ) : ℝ) ≠
      bitSign (liouvilleParityBit 0) := by
  have hz : (ArithmeticFunction.liouville 0 : ℤ) = 0 := rfl
  rw [hz, liouvilleParityBit_zero]
  norm_num [bitSign]

/-- For a nonzero integer argument the parity bit is exactly the real sign
of Mathlib's integer-valued arithmetic Liouville function. -/
theorem bitSign_liouvilleParityBit_of_ne_zero
    (m : ℕ) (hm : m ≠ 0) :
    bitSign (liouvilleParityBit m) =
      ((ArithmeticFunction.liouville m : ℤ) : ℝ) := by
  rw [ArithmeticFunction.liouville_apply hm]
  rw [neg_one_pow_eq_ite]
  by_cases he : Even (ArithmeticFunction.cardFactors m)
  · simp [liouvilleParityBit, bitSign, he]
  · simp [liouvilleParityBit, bitSign, he]

/-- The observation uses the exact positive arithmetic argument n + 1 + h.
The +1 is deliberate: Mathlib's Liouville function vanishes at zero. -/
def liouvilleWindowBit (n h : ℕ) : Bool :=
  liouvilleParityBit (n + 1 + h)

/-- Every Liouville window bit has precisely the arithmetic sign at its
source-preserving positive argument. -/
theorem bitSign_liouvilleWindowBit (n h : ℕ) :
    bitSign (liouvilleWindowBit n h) =
      ((ArithmeticFunction.liouville (n + 1 + h) : ℤ) : ℝ) := by
  have hp : n + 1 + h ≠ 0 := by omega
  exact bitSign_liouvilleParityBit_of_ne_zero (n + 1 + h) hp

/-- Ordinary, unweighted and unnormalized Liouville subset correlation.
The empty subset has value N, including for N=0. -/
def liouvilleFiniteMoment (shifts : Finset ℕ) (N : ℕ) : ℝ :=
  finiteMoment
    (fun n h => ((ArithmeticFunction.liouville (n + 1 + h) : ℤ) : ℝ))
    shifts N

/-- Exact count of one finite Liouville sign pattern over ordinary sample
starts 1, ..., N, represented through the correctly guarded parity bits. -/
def liouvillePatternCount (shifts : Finset ℕ) (pattern : ℕ → Bool)
    (N : ℕ) : ℝ :=
  binaryPatternCount shifts pattern liouvilleWindowBit N

/-- All finite subset moments of the Boolean model are the same arithmetic
moments as the pinned Mathlib Liouville source, point for point. -/
theorem finiteMoment_liouvilleWindowBit
    (shifts : Finset ℕ) (N : ℕ) :
    finiteMoment (fun n h => bitSign (liouvilleWindowBit n h))
        shifts N =
      liouvilleFiniteMoment shifts N := by
  unfold liouvilleFiniteMoment finiteMoment
  apply Finset.sum_congr rfl
  intro n hn
  apply Finset.prod_congr rfl
  intro h hh
  exact bitSign_liouvilleWindowBit n h

/-- The empty-set correlation is the exact number of samples, not a
cancellation estimate and not an omitted term. -/
@[simp] theorem liouvilleFiniteMoment_empty (N : ℕ) :
    liouvilleFiniteMoment (∅ : Finset ℕ) N = (N : ℝ) := by
  simp [liouvilleFiniteMoment, finiteMoment]

/-- Exact arithmetic instantiation of the inherited finite Walsh theorem.
The coefficients on the right are Liouville values of the actual integers
n + 1 + h, not arbitrary independent random variables.

No claim about the size or limit of a nonempty correlation is made. -/
theorem liouvillePatternCount_walsh
    (shifts : Finset ℕ) (pattern : ℕ → Bool) (N : ℕ) :
    (2 : ℝ) ^ shifts.card * liouvillePatternCount shifts pattern N =
      ∑ t ∈ shifts.powerset,
        (∏ h ∈ t, bitSign (pattern h)) * liouvilleFiniteMoment t N := by
  simpa only [liouvillePatternCount, finiteMoment_liouvilleWindowBit] using
    (binaryPatternCount_walsh shifts pattern liouvilleWindowBit N)

end GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.LiouvilleWalshCylinder
