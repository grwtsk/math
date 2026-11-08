/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
AI-assisted source drafting. Independent mathematical review NOT_RUN.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.EllipticHasseSpectrumFromCount
import Mathlib.AlgebraicGeometry.EllipticCurve.Projective.Point
import Mathlib

/-!
# Native projective/affine point-count return to Hasse and finite-field RH

The source is Mathlib's actual `WeierstrassCurve.Projective.Point.toAffineAddEquiv`
(`Mathlib/AlgebraicGeometry/EllipticCurve/Projective/Point.lean`, Mathlib
revision d13f23b723b8a846827a245b89c10fc7d3f11612). It is an additive
bijection between the nonsingular projective and affine-or-infinity point
carriers of the SAME native Weierstrass model over the SAME base field.

An external Hasse theorem may count `W.toAffine.Point`, while the existing
GRWTSK consumer uses `N = Nat.card W.Point` and the original
`FiniteEulerWindow.frobeniusTrace q N`. This module PROVES their cardinal
comparison. It does not require a newly supplied equality `providerCount=N`.
The only Hasse input is exactly the affine-point cardinal inequality; after
transport it constructs the original `EllipticSpectrum` via
`HasseSpectrumFromCount.spectrumOfHasse` and returns to the original local
numerator and all-extension bounds.

Upstream research source (NOT imported into this build):
CBirkbeck/AINTLIB@c3bc9bfafaf32cf281da174a7ec287c1e56acc99,
`projects/HasseWeil/HasseWeil/HasseBound.lean` blob
50197ba702b40ed0766cbbeaa318d1b729de1269, declaration
`HasseWeil.WeilPairing.hasse_bound`. Its `HasseWeil.pointCount W.toAffine`
is defined by `Fintype.card W.toAffine.Point` in
`HasseWeil/Isogeny/Frobenius/PointCount.lean` at the same revision.
That library's proof closure, Lean/Mathlib versions and ellipticity
interfaces must be checked BEFORE an isolated provider import may discharge
`AffineHasseBound`. Citing the upstream declaration is not a kernel result.

The exact remaining AND premises are:
  (a) an accepted affine-point Hasse inequality (not spin positivity),
  (b) the source identification of extension point counts with the original
      trace recurrence when a theorem mentions actual extension counts,
  (c) a genuine geometric Frobenius comparison when a theorem mentions
      the Frobenius action on torsion over the algebraic closure.
No elliptic Hasse proof, genus-g Weil conjectures, classical RH, Dirichlet
GRH or BSD theorem is asserted here. This is a source-exact adapter.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.NativeAffineHasse

open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteFieldTorsionRH
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.HasseSpectrumFromCount
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FrobeniusFixedOrder
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ExactTorsionFrobenius
open GRWTSK.NumberTheory.WeilCertificates

universe u
variable {K : Type u} [Field K] [Fintype K] [DecidableEq K]
variable (W : WeierstrassCurve K) [W.IsElliptic]

/-- The SAME model's actual native addition-preserving representation
change, not a point-count equality inserted as an extra assumption. -/
noncomputable def nativeAffineEquiv : W.Point ≃+ W.toAffine.Point :=
  WeierstrassCurve.Projective.Point.toAffineAddEquiv W

/-- The projective and affine-or-infinity point carriers have the same
cardinality, including the point at infinity and in small characteristic. -/
theorem nativeCard_eq_affineCard :
    Nat.card W.Point = Nat.card W.toAffine.Point :=
  Nat.card_congr (nativeAffineEquiv W).toEquiv

/-- Once the provider's affine point carrier has a finite enumeration,
its `Fintype.card` is literally the native Mathlib point-group count. -/
theorem nativeCard_eq_providerCard [Fintype W.toAffine.Point] :
    Nat.card W.Point = Fintype.card W.toAffine.Point := by
  rw [nativeCard_eq_affineCard W, Nat.card_eq_fintype_card]

/-- Exact shape of an upstream affine count Hasse theorem, retaining the
same Weierstrass curve and the same finite field. -/
def AffineHasseBound [Fintype W.toAffine.Point] : Prop :=
  |(Fintype.card W.toAffine.Point : ℝ) - (Fintype.card K : ℝ) - 1| ≤
    2 * Real.sqrt (Fintype.card K : ℝ)

/-- Direct type-and-count return to the existing GRWTSK native raw Hasse
predicate; the provider-to-native cardinality comparison is proved above. -/
theorem nativeRawHasse [Fintype W.toAffine.Point]
    (h : AffineHasseBound W) :
    RawPointCountBound (Fintype.card K) (Nat.card W.Point) := by
  unfold RawPointCountBound AffineHasseBound at *
  rw [nativeCard_eq_providerCard W]
  exact h

/-- A genuine affine Hasse bound creates the ORIGINAL two-root count-derived
spectrum without independently supplying or guessing complex eigenvalues. -/
noncomputable def nativeSpectrum [Fintype W.toAffine.Point]
    (h : AffineHasseBound W) :
    EllipticSpectrum (Fintype.card K) (Nat.card W.Point) :=
  spectrumOfHasse (Fintype.card K) (Nat.card W.Point)
    (hasse_square_of_raw_bound (Fintype.card K) (Nat.card W.Point)
      (nativeRawHasse W h))

/-- The same original q^{-s} parameter and localNumerator:
a native affine Hasse source implies the genus-one finite-field line. -/
theorem nativeLocalCriticalLine [Fintype W.toAffine.Point]
    (h : AffineHasseBound W) {s : ℂ}
    (hz : localNumerator (Fintype.card K) (Nat.card W.Point)
      (fieldParameter (Fintype.card K : ℝ) s) = 0) :
    s.re = 1 / 2 := by
  exact (nativeSpectrum W h).critical_line
    (Fintype.one_lt_card) hz

/-- The original all-extension source remains explicit: no finite torsion
permutation or affine Hasse bound alone identifies extension point counts. -/
theorem nativeAllExtensions [Fintype W.toAffine.Point]
    (h : AffineHasseBound W)
    (counts : ℕ → ℕ)
    (hcounts : ExtensionCountSource (Fintype.card K) (Nat.card W.Point) counts)
    (k : ℕ) (hk : 0 < k) :
    |(counts k : ℝ) - ((Fintype.card K : ℝ) ^ k + 1)| ≤
      2 * Real.sqrt ((Fintype.card K : ℝ) ^ k) ∧
    (∀ s : ℂ,
      extensionNumerator (Fintype.card K) (Nat.card W.Point) k
        (fieldParameter ((Fintype.card K : ℝ) ^ k) s) = 0 →
      s.re = 1 / 2) := by
  exact extension_bounds_and_RH_of_raw_hasse
    (Fintype.card K) (Nat.card W.Point) Fintype.one_lt_card
    (nativeRawHasse W h) counts hcounts k hk

/-- The complete source-preserving consuming branch joins (i) the
PROVED native-to-affine cardinal equivalence, (ii) an independently
supplied Hasse inequality for the same native curve, (iii) an actually
specified characteristic-action port, and (iv) the genuine extension-count
source. Positive magnetic energy and the critical-line result are distinct
conclusions with their original dependencies intact. -/
theorem nativeSpinAndExtensionRH [Fintype W.toAffine.Point]
    (h : AffineHasseBound W)
    (S : FrobeniusCharacteristicPort W (Fintype.card K) (Nat.card W.Point))
    {n : ℕ} [Fintype (ExactClass W n)]
    (counts : ℕ → ℕ)
    (hcounts : ExtensionCountSource (Fintype.card K) (Nat.card W.Point) counts)
    (k : ℕ) (hk : 0 < k) (P : ExactClass W n)
    (phase f : ExactClass W n → ℂ) :
    0 ≤ exactMagneticForm W (n := n) S.action phase f ∧
    ExactOrder W n (S.action P.1) ∧
    |(counts k : ℝ) - ((Fintype.card K : ℝ) ^ k + 1)| ≤
      2 * Real.sqrt ((Fintype.card K : ℝ) ^ k) ∧
    (∀ s : ℂ,
      extensionNumerator (Fintype.card K) (Nat.card W.Point) k
        (fieldParameter ((Fintype.card K : ℝ) ^ k) s) = 0 →
      s.re = 1 / 2) := by
  let full : FrobeniusTorsionSource W (Fintype.card K) (Nat.card W.Point) :=
    toRHSource S
      (hasse_square_of_raw_bound (Fintype.card K) (Nat.card W.Point)
        (nativeRawHasse W h))
  exact GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ExactTorsionRHReturn.all_exact_classes_spin_and_extension_RH
    W full Fintype.one_lt_card counts hcounts k hk P phase f

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.NativeAffineHasse
