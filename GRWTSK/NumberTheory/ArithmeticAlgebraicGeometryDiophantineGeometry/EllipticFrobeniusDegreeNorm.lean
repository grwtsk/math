/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
AI-assisted Lean source candidate. Independent analytic review NOT_RUN.
LEAN_ELABORATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.EllipticHasseSpectrumFromCount
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticExtensionCountDivisibility
import Mathlib

/-!
# The exact Frobenius dual norm, independent of Hasse or purity

The original arithmetic source is the UNCHANGED
`FiniteEulerWindow.frobeniusTrace q N` and `extensionTrace q N k`
with t_0=2, t_1=q+1-N and t_(k+2)=a*t_(k+1)-q*t_k.
The original spectral source `HasseSpectrumFromCount.sourceAlpha/sourceBeta`
constructs complex algebraic roots unconditionally from the quadratic
x^2-a*x+q, without assuming the Hasse inequality or spectral purity.

This file proves, for EVERY q,N,k (including degenerate formal inputs),

  t_k = alpha^k + beta^k,
  (1-alpha^k)*(1-beta^k) = (q^k+1-t_k : Z),

with the right side cast into C. No value of an elliptic isogeny degree
is supplied or guessed in either proof. The right side can be negative
for arbitrary q,N; it is not yet identified with an actual finite count.

The geometric consumer is the genuine degree formula
   deg(1-Frob_q^k) = (1-alpha^k)*(1-beta^k).
That formula comes from elliptic-isogeny duality: if V is the dual
Frobenius, then Frob*V=[q], Frob+V=[a], and the dual of
1-Frob^k is 1-V^k. Multiplying an isogeny by its dual gives
[deg], hence the displayed norm. Separability of 1-Frob^k
and identification of its kernel with the true geometric fixed locus
are DIFFERENT geometric inputs; they are not consequences of this
ring identity or a spin-heat inequality.

Mathematical source: Silverman, Arithmetic of Elliptic Curves, 2nd ed.,
III.6.1--6.2 and V.2.3--2.4. The relevant upstream geometric formal
interfaces occur in CBirkbeck/AINTLIB@c3bc9bfafaf32cf281da174a7ec287c1e56acc99,
HasseWeil/Isogeny/Dual/Canonical.lean and
HasseWeil/HasseBound/WeilPairing/PairingDet.lean. Their Lean 4.36
provider is NOT imported into the Lean 4.34 grwtsk/math default build.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FrobeniusDegreeNorm

open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.HasseSpectrumFromCount
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ExtensionCountDivisibility

/-- Algebraic Frobenius power traces need NO Hasse hypothesis.
This is proved from the existing source recurrence and the source's
unconditionally constructed quadratic roots. -/
theorem originalTrace_eq_rootPowerSum (q N k : ℕ) :
    (extensionTrace q N k : ℂ) =
      sourceAlpha q N ^ k + sourceBeta q N ^ k := by
  induction k using Nat.twoStepInduction with
  | zero =>
      simp [extensionTrace_zero]
  | one =>
      simpa only [extensionTrace_one, pow_one] using (roots_sum q N).symm
  | more k ih0 ih1 =>
      rw [extensionTrace_recurrence]
      push_cast
      rw [ih0, ih1, ← roots_sum q N, ← roots_product q N]
      ring

/-- The exact norm of 1-Frobenius^k, still only algebraic. It is the
integer ORIGINAL `signedExtensionCount` and requires neither Hasse nor
an assumed extension-point-count identity. -/
theorem originalSignedCount_eq_rootNorm (q N k : ℕ) :
    (1 - sourceAlpha q N ^ k) * (1 - sourceBeta q N ^ k) =
      (signedExtensionCount q N k : ℂ) := by
  calc
    (1 - sourceAlpha q N ^ k) * (1 - sourceBeta q N ^ k) =
        1 - (sourceAlpha q N ^ k + sourceBeta q N ^ k) +
          (sourceAlpha q N * sourceBeta q N) ^ k := by
            rw [mul_pow]
            ring
    _ = 1 - (extensionTrace q N k : ℂ) + (q : ℂ) ^ k := by
      rw [← originalTrace_eq_rootPowerSum q N k, roots_product]
    _ = (signedExtensionCount q N k : ℂ) := by
      simp [signedExtensionCount]
      ring

/-- Independent abstract norm identity in any commutative ring.
One-step dual-Frobenius sum and product must be proved for the *actual*
elliptic isogenies before this expression can be used as their degree. -/
theorem dualFrobenius_norm_identity
    {R : Type*} [CommRing R] (π ν q : R) (hπν : π * ν = q)
    (k : ℕ) :
    (1 - π ^ k) * (1 - ν ^ k) =
      1 - (π ^ k + ν ^ k) + q ^ k := by
  rw [← hπν, mul_pow]
  ring

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FrobeniusDegreeNorm
