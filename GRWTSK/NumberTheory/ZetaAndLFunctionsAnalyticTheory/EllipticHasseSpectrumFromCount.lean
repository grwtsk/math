/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution and mathematical source comparison: grwtsk contributors.
AI-assisted formalization candidate; independent review NOT_RUN.
LEAN_ELABORATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticFrobeniusFixedOrderPort
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.EllipticExactTorsionRHReturn
import Mathlib

/-!
# Hasse point-count source constructs the actual two-root elliptic spectrum

The original `FiniteFieldTorsionRH.EllipticSpectrum q N` carried arbitrary
complex alpha and beta constrained to have the source count-derived sum and
product and, separately, the trace Hasse discriminant inequality. That was
stronger input data than needed: once the Hasse inequality is actually
available, the two complex roots are CONSTRUCTED algebraically by the
quadratic formula. They are not a new Frobenius operator or an assumed
spectral-purity axiom.

The source trace is literally
`FiniteEulerWindow.frobeniusTrace q N = q + 1 - N`. The returned spectrum
uses the original `EllipticSpectrum`, `ExtensionCountSource`,
`ExactTorsionRHReturn.all_exact_classes_spin_and_extension_RH` and the
original finite-field parameter `fieldParameter ((q:ℝ)^k) s` at every
extension k>0. No zeta/Dirichlet target is replaced.

Upstream comparison, not installed here: CBirkbeck/AINTLIB at public Git
commit c3bc9bfafaf32cf281da174a7ec287c1e56acc99, file
`projects/HasseWeil/HasseWeil/HasseBound.lean` blob
50197ba702b40ed0766cbbeaa318d1b729de1269, the declaration
`HasseWeil.WeilPairing.hasse_bound` supplies a claimed unconditional
finite-field point bound on the actual `pointCount W.toAffine`. It uses
Lean 4.31.0-rc2 / a different Mathlib closure, and may have other
transitive source assumptions. This file does NOT import the upstream
package or assert that it has been compiled with GRWTSK Lean 4.34.1.
The `providerCount = N` witness is an explicit equality, not silently
asserted from shared notation; the upstream affine point carrier,
ellipticity assumptions, and any source/build compatibility require a
separate isolated provider adapter and exact kernel evidence.

The mathematical construction of the quadratic roots is standard and
independent of Hasse; Hasse is used only to obtain their pure norm and
critical-line consequences through the preexisting repository theorems.
A positive spin energy alone does not imply Hasse, the extension-count
identity or nonvanishing of an unrelated classical L-function. No
novelty or proof of classical RH, Dirichlet GRH or BSD is claimed.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.HasseSpectrumFromCount

open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteFieldTorsionRH
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ExactTorsionFrobenius
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ExactTorsionRHReturn
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FrobeniusFixedOrder
open GRWTSK.NumberTheory.WeilCertificates

/-- The actual trace in the complex coefficient ring. -/
def sourceTraceComplex (q N : ℕ) : ℂ := (frobeniusTrace q N : ℂ)

/-- Characteristic discriminant of the original count-derived polynomial. -/
def sourceDiscriminant (q N : ℕ) : ℂ :=
  sourceTraceComplex q N ^ 2 - 4 * (q : ℂ)

/-- Choose a root of the actual complex discriminant, using the
already available algebraic closure of ℂ. Its sign has no arithmetic
meaning: exchanging it only swaps alpha and beta. -/
noncomputable def sourceSquareRoot (q N : ℕ) : ℂ :=
  Classical.choose (IsAlgClosed.exists_pow_nat_eq (sourceDiscriminant q N)
    (by norm_num : 0 < (2 : ℕ)))

theorem sourceSquareRoot_sq (q N : ℕ) :
    sourceSquareRoot q N ^ 2 = sourceDiscriminant q N :=
  Classical.choose_spec (IsAlgClosed.exists_pow_nat_eq (sourceDiscriminant q N)
    (by norm_num : 0 < (2 : ℕ)))

/-- The two ordinary complex quadratic roots; no Hasse input is needed
to construct them. -/
noncomputable def sourceAlpha (q N : ℕ) : ℂ :=
  (sourceTraceComplex q N + sourceSquareRoot q N) / 2

noncomputable def sourceBeta (q N : ℕ) : ℂ :=
  (sourceTraceComplex q N - sourceSquareRoot q N) / 2

/-- Sum of the constructed complex roots is the EXACT native trace. -/
theorem roots_sum (q N : ℕ) :
    sourceAlpha q N + sourceBeta q N = (frobeniusTrace q N : ℂ) := by
  unfold sourceAlpha sourceBeta sourceTraceComplex
  ring

/-- Product of the constructed roots is the finite field cardinality q,
including the repeated-root (discriminant-zero) case. -/
theorem roots_product (q N : ℕ) :
    sourceAlpha q N * sourceBeta q N = (q : ℂ) := by
  unfold sourceAlpha sourceBeta
  have hs : sourceSquareRoot q N ^ 2 = sourceDiscriminant q N :=
    sourceSquareRoot_sq q N
  calc
    ((sourceTraceComplex q N + sourceSquareRoot q N) / 2) *
        ((sourceTraceComplex q N - sourceSquareRoot q N) / 2) =
      (sourceTraceComplex q N ^ 2 - (sourceSquareRoot q N) ^ 2) / 4 := by ring
    _ = (q : ℂ) := by rw [hs]; unfold sourceDiscriminant; ring

/-- Only the authentic count-derived Hasse discriminant inequality is
required. Existence and the sum/product of roots are CONSTRUCTED. -/
noncomputable def spectrumOfHasse (q N : ℕ)
    (hhasse : (frobeniusTrace q N : ℝ) ^ 2 ≤ 4 * (q : ℝ)) :
    EllipticSpectrum q N where
  alpha := sourceAlpha q N
  beta := sourceBeta q N
  trace_eq := roots_sum q N
  determinant_eq := roots_product q N
  hasse := hhasse

/-- Source-compatible absolute Hasse bound, stated as an inequality of
the original natural-number point count, not an auxiliary spectrum. -/
def RawPointCountBound (q N : ℕ) : Prop :=
  |(N : ℝ) - (q : ℝ) - 1| ≤ 2 * Real.sqrt (q : ℝ)

/-- Algebraically return from the point-count bound to the exact
source trace discriminant. No geometric Hasse theorem is supplied here. -/
theorem hasse_square_of_raw_bound (q N : ℕ)
    (h : RawPointCountBound q N) :
    (frobeniusTrace q N : ℝ) ^ 2 ≤ 4 * (q : ℝ) := by
  have htrace : (frobeniusTrace q N : ℝ) =
      -((N : ℝ) - (q : ℝ) - 1) := by
    simp [frobeniusTrace] <;> ring
  have habs : |(frobeniusTrace q N : ℝ)| ≤
      2 * Real.sqrt (q : ℝ) := by
    rw [htrace, abs_neg]
    exact h
  have hm : 0 ≤ 2 * Real.sqrt (q : ℝ) -
      |(frobeniusTrace q N : ℝ)| := sub_nonneg.mpr habs
  have hp : 0 ≤ 2 * Real.sqrt (q : ℝ) +
      |(frobeniusTrace q N : ℝ)| := by positivity
  have hmul := mul_nonneg hm hp
  have hsqrt : (Real.sqrt (q : ℝ)) ^ 2 = (q : ℝ) :=
    Real.sq_sqrt (by positivity)
  nlinarith [sq_abs (frobeniusTrace q N : ℝ)]

/-- A provider point count becomes the original N ONLY after a verified
native-to-provider equality. This exposes the exact model-transport leaf. -/
theorem raw_bound_of_provider_match (q N providerCount : ℕ)
    (hmatch : providerCount = N)
    (hbound : |(providerCount : ℝ) - (q : ℝ) - 1| ≤
      2 * Real.sqrt (q : ℝ)) : RawPointCountBound q N := by
  subst providerCount
  exact hbound

/-- An external point-count bound plus a TRUE carrier-count comparison
constructs the existing full spectral packet. No arbitrary roots remain. -/
noncomputable def spectrumOfProvider (q N providerCount : ℕ)
    (hmatch : providerCount = N)
    (hbound : |(providerCount : ℝ) - (q : ℝ) - 1| ≤
      2 * Real.sqrt (q : ℝ)) : EllipticSpectrum q N :=
  spectrumOfHasse q N
    (hasse_square_of_raw_bound q N
      (raw_bound_of_provider_match q N providerCount hmatch hbound))

/-- The exact *old* full joint source is constructed from a geometric
action/characteristic port and the native point-count Hasse bound.
Its roots and purity no longer have to be supplied separately. -/
noncomputable def toRHSource
    {F : Type*} [Field F] {W : WeierstrassCurve F} [W.IsElliptic]
    {q N : ℕ} (S : FrobeniusCharacteristicPort W q N)
    (hhasse : (frobeniusTrace q N : ℝ) ^ 2 ≤ 4 * (q : ℝ)) :
    FrobeniusTorsionSource W q N where
  action := S.action
  spectrum := spectrumOfHasse q N hhasse
  characteristic := S.characteristic

/-- All extension-field point-count bounds and critical-line returns,
from the native Hasse point count and the UNCHANGED fixed-point/count
identification. No spectral-eigenvalue witness is assumed. -/
theorem extension_bounds_and_RH_of_raw_hasse
    (q N : ℕ) (hq : 1 < q) (hhasse : RawPointCountBound q N)
    (counts : ℕ → ℕ) (hcounts : ExtensionCountSource q N counts)
    (k : ℕ) (hk : 0 < k) :
    |(counts k : ℝ) - ((q : ℝ) ^ k + 1)| ≤
      2 * Real.sqrt ((q : ℝ) ^ k) ∧
    (∀ s : ℂ,
      extensionNumerator q N k (fieldParameter ((q : ℝ) ^ k) s) = 0 →
        s.re = 1 / 2) := by
  let D : EllipticSpectrum q N :=
    spectrumOfHasse q N (hasse_square_of_raw_bound q N hhasse)
  refine ⟨extensionCount_hasse_of_source D counts hcounts k hk, ?_⟩
  intro s hz
  exact D.extension_critical_line hq k hk hz

/-- The complete existing positive exact-torsion class and extension
RH consumer, supplied ONLY with a geometric characteristic port and a
source-compatible Hasse count. Both are explicit mathematical premises;
Frobenius identification and point counting do not follow from spin heat. -/
theorem all_exact_classes_spin_and_RH_of_raw_hasse
    {F : Type*} [Field F] (W : WeierstrassCurve F) [W.IsElliptic]
    {q N n : ℕ} [Fintype (ExactClass W n)]
    (S : FrobeniusCharacteristicPort W q N)
    (hq : 1 < q) (hhasse : RawPointCountBound q N)
    (counts : ℕ → ℕ) (hcounts : ExtensionCountSource q N counts)
    (k : ℕ) (hk : 0 < k) (P : ExactClass W n)
    (phase f : ExactClass W n → ℂ) :
    0 ≤ exactMagneticForm W (n := n) S.action phase f ∧
    ExactOrder W n (S.action P.1) ∧
    |(counts k : ℝ) - ((q : ℝ) ^ k + 1)| ≤
      2 * Real.sqrt ((q : ℝ) ^ k) ∧
    (∀ s : ℂ,
      extensionNumerator q N k (fieldParameter ((q : ℝ) ^ k) s) = 0 →
        s.re = 1 / 2) := by
  let full : FrobeniusTorsionSource W q N :=
    toRHSource S (hasse_square_of_raw_bound q N hhasse)
  exact all_exact_classes_spin_and_extension_RH W full hq counts hcounts k hk P phase f

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.HasseSpectrumFromCount
