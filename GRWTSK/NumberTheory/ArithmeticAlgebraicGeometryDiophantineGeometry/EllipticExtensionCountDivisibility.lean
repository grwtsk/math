/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Local mathematical attribution: grwtsk contributors.
AI-assisted source formalization candidate.
LEAN_ELABORATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.EllipticFiniteFieldTorsionRHReturn
import Mathlib

/-!
# Exact base-count divisibility in the original elliptic extension trace

## Original source and consumer

This file consumes the unchanged `FiniteEulerWindow.frobeniusTrace q N`,
`FiniteEulerWindow.extensionTrace q N k` and
`FiniteFieldTorsionRH.ExtensionCountSource q N counts`.
The integer q+1-N is not a new variable or a supplied spectral root.
All formulas apply to arbitrary natural q,N and every extension index k;
no Hasse, ellipticity, actual geometric Frobenius, nonnegative spin energy,
or actual extension-point counts are assumed in the algebraic results.

Set a=q+1-N, t_0=2, t_1=a, t_{k+2}=a*t_{k+1}-q*t_k and
A_k=q^k+1-t_k. Then A_0=0, A_1=N and the exact recurrence is
  A_{k+2} = a*A_{k+1}-q*A_k + N*(q^(k+1)+1).
Define the integer quotient B_0=0, B_1=1 and
  B_{k+2} = a*B_{k+1}-q*B_k+(q^(k+1)+1).
Two-step induction gives A_k=N*B_k **for all k >= 0**. Thus the
source expression obeys N|A_k without any conjectural arithmetic input.
If an authentic `ExtensionCountSource` identifies actual counts with A_k,
then N divides each positive-extension count. The independent geometric
route is injection E(K) into E(L) for finite extensions and Lagrange;
see `EllipticBaseChangeCountDivisibility`.

This is a necessary consistency check for Frobenius/source comparison,
not a proof of such a comparison. It is not finite-field RH and cannot
supply the missing `ExtensionCountSource` or Hasse inequality. A fake
sequence with the same recurrence enjoys the divisibility too.

Source comparison: original `EllipticFiniteEulerWindow.lean` at
`grwtsk/math@66ce6c37233dc58874f8f50f3d6dfce0e6e7a77b`, file blob
48e14ca731bd9b13f8373eea7521e746cb3eab93. The recurrence and
quotient identity are elementary ring algebra; novelty not asserted.
Proof-neighborhood comparison: the geometric route is genuinely distinct
(injective group map + Lagrange), but the two meet at actual extension
counts only after the same missing source identification.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ExtensionCountDivisibility

open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteFieldTorsionRH

/-- The literal integer expression of the original extension-count source.
This can be negative for arbitrary q,N: it is NOT independently declared
the natural-number cardinality of an elliptic curve. -/
def signedExtensionCount (q N k : ℕ) : ℤ :=
  (q : ℤ) ^ k + 1 - extensionTrace q N k

@[simp] theorem signedExtensionCount_zero (q N : ℕ) :
    signedExtensionCount q N 0 = 0 := by
  simp [signedExtensionCount, extensionTrace_zero]

@[simp] theorem signedExtensionCount_one (q N : ℕ) :
    signedExtensionCount q N 1 = (N : ℤ) := by
  simp [signedExtensionCount, extensionTrace_one, frobeniusTrace] <;> ring

/-- An exact inhomogeneous recurrence, proved from the ORIGINAL trace
recurrence and a=q+1-N. It is not a new Frobenius assumption. -/
theorem signedExtensionCount_recurrence (q N k : ℕ) :
    signedExtensionCount q N (k + 2) =
      frobeniusTrace q N * signedExtensionCount q N (k + 1) -
        (q : ℤ) * signedExtensionCount q N k +
          (N : ℤ) * ((q : ℤ) ^ (k + 1) + 1) := by
  have ha : (q : ℤ) + 1 - frobeniusTrace q N = (N : ℤ) := by
    simp [frobeniusTrace] <;> ring
  unfold signedExtensionCount
  rw [extensionTrace_recurrence]
  calc
    (q : ℤ) ^ (k + 2) + 1 -
          (frobeniusTrace q N * extensionTrace q N (k + 1) -
            (q : ℤ) * extensionTrace q N k) =
        frobeniusTrace q N *
            ((q : ℤ) ^ (k + 1) + 1 - extensionTrace q N (k + 1)) -
          (q : ℤ) * ((q : ℤ) ^ k + 1 - extensionTrace q N k) +
          ((q : ℤ) + 1 - frobeniusTrace q N) *
            ((q : ℤ) ^ (k + 1) + 1) := by
      rw [show k + 2 = (k + 1) + 1 by omega, pow_succ,
        pow_succ (q : ℤ) k]
      ring
    _ = _ := by rw [ha]

/-- Construct the cofactor independently using integer arithmetic,
without dividing by N. In particular this also handles N=0. -/
def extensionQuotient (q N : ℕ) : ℕ → ℤ
  | 0 => 0
  | 1 => 1
  | k + 2 =>
      frobeniusTrace q N * extensionQuotient q N (k + 1) -
        (q : ℤ) * extensionQuotient q N k + ((q : ℤ) ^ (k + 1) + 1)

@[simp] theorem extensionQuotient_zero (q N : ℕ) :
    extensionQuotient q N 0 = 0 := rfl

@[simp] theorem extensionQuotient_one (q N : ℕ) :
    extensionQuotient q N 1 = 1 := rfl

/-- The exact integer cofactor certificate for every degree; in
particular the result does NOT rely on Hasse or spectral purity. -/
theorem signedExtensionCount_eq_count_mul_quotient (q N k : ℕ) :
    signedExtensionCount q N k = (N : ℤ) * extensionQuotient q N k := by
  induction k using Nat.twoStepInduction with
  | zero => simp
  | one => simp
  | more k h₀ h₁ =>
    rw [signedExtensionCount_recurrence, h₀, h₁]
    change _ = (N : ℤ) *
      (frobeniusTrace q N * extensionQuotient q N (k + 1) -
        (q : ℤ) * extensionQuotient q N k + ((q : ℤ) ^ (k + 1) + 1))
    ring

/-- All original recurrence-defined extension expressions are divisible
by the literal base count N, even at k=0 (where the expression is zero). -/
theorem baseCount_dvd_signedExtensionCount (q N k : ℕ) :
    (N : ℤ) ∣ signedExtensionCount q N k := by
  refine ⟨extensionQuotient q N k, ?_⟩
  exact signedExtensionCount_eq_count_mul_quotient q N k

/-- Consuming the preexisting exact source comparison to *actual*
positive-degree extension counts; no fake cardinality is introduced. -/
theorem baseCount_dvd_extensionCount_of_source (q N : ℕ)
    (counts : ℕ → ℕ) (hcounts : ExtensionCountSource q N counts)
    (k : ℕ) (hk : 0 < k) : N ∣ counts k := by
  have hsource : signedExtensionCount q N k = (counts k : ℤ) := by
    simpa only [signedExtensionCount] using (hcounts k hk).symm
  apply Int.natCast_dvd_natCast.mp
  rw [← hsource]
  exact baseCount_dvd_signedExtensionCount q N k

/-- The first nontrivial extension formula, valid for EVERY q and N
as a signed integer identity. For true elliptic counts it is the
familiar norm of 1-Frob² divided by the base count. -/
theorem signedExtensionCount_two (q N : ℕ) :
    signedExtensionCount q N 2 =
      (N : ℤ) * (2 * ((q : ℤ) + 1) - (N : ℤ)) := by
  simp [signedExtensionCount, extensionTrace_two, frobeniusTrace] <;> ring

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ExtensionCountDivisibility
