# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.AdditiveThetaZetaCarrier.Variant1caf7143570757fc5ed6d125c27e492d2e7cb5428beb2f92740b929beec67908

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a87100c5d6e1476f9fc90e63e5605b31ff58c553` · SHA-256 `1caf7143570757fc5ed6d125c27e492d2e7cb5428beb2f92740b929beec67908`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic
import Think.SourceTree.Legacy.Analysis.BitMatrixCarrierPadding

set_option autoImplicit false

namespace Think.Analysis

universe u v w x y

/-
Additive theta-zeta carrier.

This module records the additive route to the Riemann zeta functional-equation
carrier as abstract mathematical data:

  lattice additive model
  -> finite additive quotient
  -> additive/Fourier character family
  -> theta symmetry
  -> Mellin bridge
  -> completed-zeta reflection equation.

It does not prove Poisson summation, analytic continuation, or the Riemann zeta
functional equation. Those theorems can later be supplied by instantiating the
fields below.
-/

/-- Minimal additive lattice model with group-like laws. -/
structure LatticeAdditiveModel (L : Type u) where
  zero : L
  add : L → L → L
  neg : L → L
  add_assoc : ∀ a b c : L, add (add a b) c = add a (add b c)
  zero_add : ∀ a : L, add zero a = a
  add_zero : ∀ a : L, add a zero = a
  add_left_neg : ∀ a : L, add (neg a) a = zero
  add_comm : ∀ a b : L, add a b = add b a

/-- A finite quotient of an additive lattice, such as `Λ / pΛ`. -/
structure FiniteLatticeQuotient (L : Type u) (Q : Type v) where
  lattice : LatticeAdditiveModel L
  quotientMap : L → Q
  zeroQ : Q
  addQ : Q → Q → Q
  modulus : Nat
  modulus_pos : 0 < modulus
  quotient_zero : quotientMap lattice.zero = zeroQ
  quotient_add : ∀ a b : L,
    quotientMap (lattice.add a b) = addQ (quotientMap a) (quotientMap b)

/-- Additive translation symmetry on the finite quotient. -/
structure AdditiveTranslationSymmetry
    {L : Type u} {Q : Type v}
    (F : FiniteLatticeQuotient L Q) where
  translate : Q → Q → Q
  translate_eq_add : ∀ a x : Q, translate a x = F.addQ x a

/-- Projection of additive translation as quotient addition. -/
theorem additive_translation_eq_add
    {L : Type u} {Q : Type v}
    {F : FiniteLatticeQuotient L Q}
    (A : AdditiveTranslationSymmetry F)
    (a x : Q) :
    A.translate a x = F.addQ x a :=
  A.translate_eq_add a x

/-- Abstract additive character family, i.e. the finite Fourier side. -/
structure AdditiveCharacterFamily (Q : Type u) (Value : Type v) where
  character : Q → Q → Value
  dualIndex : Q → Q

/-- A theta carrier with an explicit inversion symmetry. -/
structure ThetaSymmetryCarrier (Param : Type u) (Value : Type v) where
  theta : Param → Value
  dualTheta : Param → Value
  inversion : Param → Param
  scale : Param → Value → Value
  theta_symmetry : ∀ t : Param, theta t = scale t (dualTheta (inversion t))

/-- Projection of the theta symmetry equation. -/
theorem theta_symmetry_equation
    {Param : Type u} {Value : Type v}
    (T : ThetaSymmetryCarrier Param Value)
    (t : Param) :
    T.theta t = T.scale t (T.dualTheta (T.inversion t)) :=
  T.theta_symmetry t

/-- Mellin-transform bridge from a theta carrier to a completed zeta carrier. -/
structure MellinZetaBridge (Param : Type u) (Spectral : Type v) (Value : Type w) where
  theta : Param → Value
  completedZeta : Spectral → Value
  mellinTransform : (Param → Value) → Spectral → Value
  mellin_bridge : ∀ s : Spectral, mellinTransform theta s = completedZeta s

/-- Projection of the Mellin bridge equation. -/
theorem mellin_zeta_bridge_equation
    {Param : Type u} {Spectral : Type v} {Value : Type w}
    (M : MellinZetaBridge Param Spectral Value)
    (s : Spectral) :
    M.mellinTransform M.theta s = M.completedZeta s :=
  M.mellin_bridge s

/-- Completed-zeta reflection equation. -/
structure CompletedZetaFunctionalEquation (Spectral : Type u) (Value : Type v) where
  completedZeta : Spectral → Value
  reflect : Spectral → Spectral
  equation : ∀ s : Spectral, completedZeta s = completedZeta (reflect s)

/-- Projection of the completed-zeta reflection equation. -/
theorem completed_zeta_functional_equation
    {Spectral : Type u} {Value : Type v}
    (Z : CompletedZetaFunctionalEquation Spectral Value)
    (s : Spectral) :
    Z.completedZeta s = Z.completedZeta (Z.reflect s) :=
  Z.equation s

/-- The full additive route from a finite lattice quotient to a completed-zeta equation. -/
structure AdditiveThetaZetaCarrier
    (L : Type u) (Q : Type v) (Param : Type w) (Spectral : Type x)
    (Value : Type y) where
  quotient : FiniteLatticeQuotient L Q
  additiveSymmetry : AdditiveTranslationSymmetry quotient
  characterFamily : AdditiveCharacterFamily Q Value
  thetaCarrier : ThetaSymmetryCarrier Param Value
  mellinBridge : MellinZetaBridge Param Spectral Value
  completedEquation : CompletedZetaFunctionalEquation Spectral Value

/-- The additive route exposes theta symmetry. -/
theorem additive_theta_zeta_has_theta_symmetry
    {L : Type u} {Q : Type v} {Param : Type w} {Spectral : Type x}
    {Value : Type y}
    (C : AdditiveThetaZetaCarrier L Q Param Spectral Value)
    (t : Param) :
    C.thetaCarrier.theta t =
      C.thetaCarrier.scale t
        (C.thetaCarrier.dualTheta (C.thetaCarrier.inversion t)) :=
  theta_symmetry_equation C.thetaCarrier t

/-- The additive route exposes the Mellin-to-completed-zeta bridge. -/
theorem additive_theta_zeta_has_mellin_bridge
    {L : Type u} {Q : Type v} {Param : Type w} {Spectral : Type x}
    {Value : Type y}
    (C : AdditiveThetaZetaCarrier L Q Param Spectral Value)
    (s : Spectral) :
    C.mellinBridge.mellinTransform C.mellinBridge.theta s =
      C.mellinBridge.completedZeta s :=
  mellin_zeta_bridge_equation C.mellinBridge s

/-- The additive route exposes the completed-zeta reflection equation. -/
theorem additive_theta_zeta_has_completed_equation
    {L : Type u} {Q : Type v} {Param : Type w} {Spectral : Type x}
    {Value : Type y}
    (C : AdditiveThetaZetaCarrier L Q Param Spectral Value)
    (s : Spectral) :
    C.completedEquation.completedZeta s =
      C.completedEquation.completedZeta (C.completedEquation.reflect s) :=
  completed_zeta_functional_equation C.completedEquation s

/-- Bitmatrix-compatible finite additive quotient carrier. -/
structure AdditiveQuotientBitMatrixCarrier
    (L : Type u) (Q : Type v) (n : Nat) where
  quotient : FiniteLatticeQuotient L Q
  quotientBit : Q → Bool
  certificateBits : Nat
  certificateBits_eq : certificateBits = certificateBitCountAllOverlaps n
  paddingBits : Nat
  paddingBits_eq : paddingBits = carrierPaddingDelta n
  squareSide : Nat
  squareSide_eq : squareSide = squareCarrierSide n
  squareBits : Nat
  squareBits_eq : squareBits = squareCarrierBitCount n
  carrierCoverage : certificateBits + paddingBits = squareBits

/-- Constructor for the additive quotient bitmatrix carrier. -/
def mkAdditiveQuotientBitMatrixCarrier
    {L : Type u} {Q : Type v} {n : Nat}
    (quotient : FiniteLatticeQuotient L Q)
    (quotientBit : Q → Bool) :
    AdditiveQuotientBitMatrixCarrier L Q n :=
  { quotient := quotient
    quotientBit := quotientBit
    certificateBits := certificateBitCountAllOverlaps n
    certificateBits_eq := rfl
    paddingBits := carrierPaddingDelta n
    paddingBits_eq := rfl
    squareSide := squareCarrierSide n
    squareSide_eq := rfl
    squareBits := squareCarrierBitCount n
    squareBits_eq := rfl
    carrierCoverage := certificate_bits_plus_delta_eq_square_carrier n }

/-- The additive quotient carrier has exact square bitmatrix coverage. -/
theorem additive_quotient_bitmatrix_carrier_coverage
    {L : Type u} {Q : Type v} {n : Nat}
    (B : AdditiveQuotientBitMatrixCarrier L Q n) :
    B.certificateBits + B.paddingBits = B.squareBits :=
  B.carrierCoverage

/-- The additive quotient carrier uses the all-overlap certificate bit count. -/
theorem additive_quotient_bitmatrix_certificate_bits_eq
    {L : Type u} {Q : Type v} {n : Nat}
    (B : AdditiveQuotientBitMatrixCarrier L Q n) :
    B.certificateBits = certificateBitCountAllOverlaps n :=
  B.certificateBits_eq

end Think.Analysis
```
