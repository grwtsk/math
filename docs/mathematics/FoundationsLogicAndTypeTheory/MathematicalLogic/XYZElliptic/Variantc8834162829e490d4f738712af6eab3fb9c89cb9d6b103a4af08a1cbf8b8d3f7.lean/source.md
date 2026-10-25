# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.XYZElliptic.Variantc8834162829e490d4f738712af6eab3fb9c89cb9d6b103a4af08a1cbf8b8d3f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `164cd9595b819d16064d9691464c775beda626ce` · SHA-256 `1c763bc7fc207dee37edd551eedfdce96546827741ebb9a6cb5cd124750d907b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.HasXYZRawCoordinates.Variant68b6184aa110dd9e51e334f3089512900977a57a7f17ec02b2927850a07d7fc9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"68b6184aa110dd9e51e334f3089512900977a57a7f17ec02b2927850a07d7fc9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.HasXYZRawCoordinates.Variant68b6184aa110dd9e51e334f3089512900977a57a7f17ec02b2927850a07d7fc9","mathematical_subject":"Logic.Foundations","original_sha256":"68b6184aa110dd9e51e334f3089512900977a57a7f17ec02b2927850a07d7fc9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:0fb42e20fee1ea48f0f02cd1/workspace/lib/Presentation/XYZElliptic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.XYZ.Fixed
public import Surface.Refactor.Authority

/-!
# Presentation-only XYZ/Weierstrass parameterization

Nothing in ordinary CIE XYZ conversion selects an elliptic curve or proves an
arithmetic torsion statement.  The formulas in this module are an explicit
application convention for visualization metadata:

* `g2Raw = 4 * Xraw - 2 * Yraw`;
* `g3Raw = 6 * Yraw - 3 * Zraw`;
* `Delta = g2Raw^3 - 27 * g3Raw^2` for
  `v^2 = 4*u^3 - g2*u - g3`.

The finite Laurent expression below is deliberately named an approximation.
It is evaluated as an exact rational polynomial only after a signed-128-bit
integer preflight.  It is not the analytic Weierstrass `wp` function; analytic
validation requires the explicit certificate interface at the end of the
module.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.HasXYZRawCoordinates.Variant68b6184aa110dd9e51e334f3089512900977a57a7f17ec02b2927850a07d7fc9

public section

namespace Presentation.XYZElliptic

open Surface.Core.XYZ
open Surface.Refactor

/-! ## Application-selected elliptic metadata -/

/-- Types that expose the three integer coordinates used by the application
convention.  Both unbounded ingress triples and bounded fixed XYZ values have
instances; this is only coordinate access, not a color-science theorem. -/
class HasXYZRawCoordinates (Payload : Type*) where
  xRaw : Payload → Int
  yRaw : Payload → Int
  zRaw : Payload → Int

instance : HasXYZRawCoordinates RawXYZ where
  xRaw := RawXYZ.x
  yRaw := RawXYZ.y
  zRaw := RawXYZ.z

instance (format : FixedFormat) : HasXYZRawCoordinates (FixedXYZ format) where
  xRaw := FixedXYZ.xRaw
  yRaw := FixedXYZ.yRaw
  zRaw := FixedXYZ.zRaw

@[expose] def colorEllipticPresentationIdV1 : String :=
  "surface.xyz.color-elliptic-presentation.v1"

@[expose] def ellipticG2Raw {Payload : Type*}
    [HasXYZRawCoordinates Payload] (xyz : Payload) : Int :=
  4 * HasXYZRawCoordinates.xRaw xyz - 2 * HasXYZRawCoordinates.yRaw xyz

@[expose] def ellipticG3Raw {Payload : Type*}
    [HasXYZRawCoordinates Payload] (xyz : Payload) : Int :=
  6 * HasXYZRawCoordinates.yRaw xyz - 3 * HasXYZRawCoordinates.zRaw xyz

/-- Discriminant convention for `v^2 = 4*u^3 - g2*u - g3`. -/
@[expose] def colorEllipticDiscriminantRaw (g2Raw g3Raw : Int) : Int :=
  g2Raw ^ 3 - 27 * g3Raw ^ 2

@[surface_novel]
structure ColorEllipticPresentation where
  presentationId : String
  g2Raw : Int
  g3Raw : Int
  discriminantRaw : Int
  authority : RefactorAuthority := .presentationOnly

/-- Nonsingularity is derived from the concrete discriminant rather than
stored as an independently selectable proposition field. -/
@[expose] def ColorEllipticPresentation.nonsingular
    (presentation : ColorEllipticPresentation) : Prop :=
  presentation.discriminantRaw ≠ 0

@[expose] def ColorEllipticPresentation.Valid
    (presentation : ColorEllipticPresentation) : Prop :=
  presentation.presentationId = colorEllipticPresentationIdV1 ∧
    presentation.discriminantRaw =
      colorEllipticDiscriminantRaw presentation.g2Raw presentation.g3Raw ∧
    presentation.authority = .presentationOnly

/-- The named V1 mapping is application-selected metadata, not a standard CIE
invariant extraction.  Singular values remain representable for cusp-style
rendering, but operations requiring an elliptic curve must pass the explicit
nonzero-discriminant gate below. -/
@[expose] def xyzToEllipticPresentationV1 {Payload : Type*}
    [HasXYZRawCoordinates Payload] (xyz : Payload) :
    ColorEllipticPresentation :=
  let g2 := ellipticG2Raw xyz
  let g3 := ellipticG3Raw xyz
  let delta := colorEllipticDiscriminantRaw g2 g3
  { presentationId := colorEllipticPresentationIdV1
    g2Raw := g2
    g3Raw := g3
    discriminantRaw := delta
    authority := .presentationOnly }

@[surface_novel, surface_published]
theorem xyzToEllipticPresentationV1_valid {Payload : Type*}
    [HasXYZRawCoordinates Payload] (xyz : Payload) :
    (xyzToEllipticPresentationV1 xyz).Valid := by
  exact ⟨rfl, rfl, rfl⟩

@[surface_novel, surface_published]
theorem xyzToEllipticPresentationV1_g2 {Payload : Type*}
    [HasXYZRawCoordinates Payload] (xyz : Payload) :
    (xyzToEllipticPresentationV1 xyz).g2Raw =
      4 * HasXYZRawCoordinates.xRaw xyz -
        2 * HasXYZRawCoordinates.yRaw xyz := by
  rfl

@[surface_novel, surface_published]
theorem xyzToEllipticPresentationV1_g3 {Payload : Type*}
    [HasXYZRawCoordinates Payload] (xyz : Payload) :
    (xyzToEllipticPresentationV1 xyz).g3Raw =
      6 * HasXYZRawCoordinates.yRaw xyz -
        3 * HasXYZRawCoordinates.zRaw xyz := by
  rfl

@[surface_novel, surface_published]
theorem xyzToEllipticPresentationV1_discriminant {Payload : Type*}
    [HasXYZRawCoordinates Payload] (xyz : Payload) :
    (xyzToEllipticPresentationV1 xyz).discriminantRaw =
      (xyzToEllipticPresentationV1 xyz).g2Raw ^ 3 -
        27 * (xyzToEllipticPresentationV1 xyz).g3Raw ^ 2 := by
  rfl

@[surface_novel, surface_published]
theorem xyzToEllipticPresentationV1_nonsingular_iff
    {Payload : Type*} [HasXYZRawCoordinates Payload] (xyz : Payload) :
    (xyzToEllipticPresentationV1 xyz).nonsingular ↔
      (xyzToEllipticPresentationV1 xyz).discriminantRaw ≠ 0 := by
  rfl

@[surface_novel, surface_published]
theorem xyzToEllipticPresentationV1_authority
    {Payload : Type*} [HasXYZRawCoordinates Payload] (xyz : Payload) :
    (xyzToEllipticPresentationV1 xyz).authority = .presentationOnly := by
  rfl

/-- Proof-bearing gate for operations that actually require nonsingularity. -/
@[surface_novel, surface_certificate]
structure NonsingularColorEllipticPresentation where
  presentation : ColorEllipticPresentation
  discriminantNonzero : presentation.discriminantRaw ≠ 0

@[expose] def requireNonsingular
    (presentation : ColorEllipticPresentation) :
    Option NonsingularColorEllipticPresentation :=
  if h : presentation.discriminantRaw ≠ 0 then
    some ⟨presentation, h⟩
  else
    none

@[surface_novel, surface_published]
theorem requireNonsingular_sound
    (presentation : ColorEllipticPresentation)
    (accepted : requireNonsingular presentation = some curve) :
    curve.presentation = presentation ∧
      curve.presentation.discriminantRaw ≠ 0 := by
  simp only [requireNonsingular] at accepted
  split at accepted
  · rename_i hnonzero
    have heq := Option.some.inj accepted
    subst curve
    exact ⟨rfl, hnonzero⟩
  · contradiction

/-- A presentation record, including a nonsingular one, does not by itself
prove that any color-derived point has arithmetic torsion. -/
@[expose] def ProvesArithmeticTorsion
    (_ : ColorEllipticPresentation) : Prop :=
  False

@[surface_novel, surface_published]
theorem colorEllipticPresentation_has_no_torsion_authority
    (presentation : ColorEllipticPresentation) :
    ¬ ProvesArithmeticTorsion presentation := by
  simp [ProvesArithmeticTorsion]

/-! ## Exact rational expression with checked integer preflight -/

@[expose] def wpLaurentScaleRawV1 : Int :=
  1_000_000

/-- Complex fixed-point input.  `reRaw` and `imRaw` share `scaleRaw`; V1
accepts exactly `wpLaurentScaleRawV1`. -/
@[surface_novel]
structure ComplexFixedV1 where
  reRaw : Int
  imRaw : Int
  scaleRaw : Int := wpLaurentScaleRawV1
deriving DecidableEq, Repr

@[expose] def ComplexFixedV1.Valid (z : ComplexFixedV1) : Prop :=
  z.scaleRaw = wpLaurentScaleRawV1 ∧
    FitsSignedBits 64 z.reRaw ∧ FitsSignedBits 64 z.imRaw

instance (z : ComplexFixedV1) : Decidable z.Valid := by
  unfold ComplexFixedV1.Valid
  infer_instance

@[expose] def ComplexFixedV1.isZero (z : ComplexFixedV1) : Bool :=
  z.reRaw == 0 && z.imRaw == 0

@[surface_novel]
structure RationalComplex where
  re : ℚ
  im : ℚ
deriving DecidableEq, Repr

namespace RationalComplex

@[expose] def zero : RationalComplex :=
  ⟨0, 0⟩

@[expose] def add (left right : RationalComplex) : RationalComplex :=
  ⟨left.re + right.re, left.im + right.im⟩

@[expose] def mul (left right : RationalComplex) : RationalComplex :=
  ⟨left.re * right.re - left.im * right.im,
    left.re * right.im + left.im * right.re⟩

@[expose] def scale (coefficient : ℚ)
    (value : RationalComplex) : RationalComplex :=
  ⟨coefficient * value.re, coefficient * value.im⟩

/-- Total rational reciprocal; the public approximation rejects zero before
this helper is reached. -/
@[expose] def inv (value : RationalComplex) : RationalComplex :=
  let norm := value.re ^ 2 + value.im ^ 2
  ⟨value.re / norm, -value.im / norm⟩

end RationalComplex

@[expose] def ComplexFixedV1.toRationalComplex
    (z : ComplexFixedV1) : RationalComplex :=
  ⟨(z.reRaw : ℚ) / (z.scaleRaw : ℚ),
    (z.imRaw : ℚ) / (z.scaleRaw : ℚ)⟩

/-- The exact finite polynomial specified for V1:
`z^-2 + (g2/20)z^2 + (g3/28)z^4 + (g2^2/1200)z^6`.
The definition is intentionally not named `wp`. -/
@[expose] def wpLaurentPolynomialV1
    (z : ComplexFixedV1) (g2Raw g3Raw : Int) : RationalComplex :=
  let zRat := z.toRationalComplex
  let g2Rat := (g2Raw : ℚ) / (z.scaleRaw : ℚ)
  let g3Rat := (g3Raw : ℚ) / (z.scaleRaw : ℚ)
  let z2 := RationalComplex.mul zRat zRat
  let z4 := RationalComplex.mul z2 z2
  let z6 := RationalComplex.mul z4 z2
  RationalComplex.add (RationalComplex.inv z2)
    (RationalComplex.add
      (RationalComplex.scale (g2Rat / 20) z2)
      (RationalComplex.add
        (RationalComplex.scale (g3Rat / 28) z4)
        (RationalComplex.scale ((g2Rat ^ 2) / 1200) z6)))

@[surface_novel]
structure GaussianIntermediate where
  re : Int
  im : Int
deriving DecidableEq, Repr

@[expose] def checkedI128Value (value : Int) : Option Int :=
  if FitsSignedBits 128 value then some value else none

@[expose] def checkedI128Add (left right : Int) : Option Int :=
  checkedI128Value (left + right)

@[expose] def checkedI128Sub (left right : Int) : Option Int :=
  checkedI128Value (left - right)

@[expose] def checkedI128Mul (left right : Int) : Option Int :=
  checkedI128Value (left * right)

/-- Checked Gaussian multiplication.  Every scalar product and component sum
must remain in the signed-128-bit intermediate domain. -/
@[expose] def checkedGaussianMul
    (left right : GaussianIntermediate) : Option GaussianIntermediate := do
  let rr ← checkedI128Mul left.re right.re
  let ii ← checkedI128Mul left.im right.im
  let ri ← checkedI128Mul left.re right.im
  let ir ← checkedI128Mul left.im right.re
  let re ← checkedI128Sub rr ii
  let im ← checkedI128Add ri ir
  pure ⟨re, im⟩

@[expose] def checkedI64Value (value : Int) : Option Int :=
  if FitsSignedBits 64 value then some value else none

/-- Signed nearest-even division used by the presentation evaluator.  Unlike
the core XYZ channel helper, this permits negative i64 presentation results. -/
@[expose] def roundDivNearestEvenI64
    (numerator denominator : Int) : Option Int :=
  if 0 < denominator ∧ FitsSignedBits 128 numerator ∧
      FitsSignedBits 128 denominator then
    let doubledRemainder := 2 * (numerator % denominator)
    if FitsSignedBits 128 doubledRemainder then
      checkedI64Value (nearestEvenQuotient numerator denominator)
    else
      none
  else
    none

/-- Checked fixed-point complex multiplication with one nearest-even rounding
per output component. -/
@[expose] def checkedComplexMulFixedV1
    (left right : ComplexFixedV1) (scaleRaw : Int) :
    Option ComplexFixedV1 := do
  let numerator ← checkedGaussianMul
    ⟨left.reRaw, left.imRaw⟩ ⟨right.reRaw, right.imRaw⟩
  let reRaw ← roundDivNearestEvenI64 numerator.re scaleRaw
  let imRaw ← roundDivNearestEvenI64 numerator.im scaleRaw
  pure ⟨reRaw, imRaw, scaleRaw⟩

/-- Checked fixed-point evaluation of `z^-2`.  For raw `z = (r+i*s)/scale`,
the raw numerators are `scale^3 * (r^2-s^2, -2*r*s)` and the common
denominator is `(r^2+s^2)^2`. -/
@[expose] def checkedInverseSquareFixedV1
    (z : ComplexFixedV1) (scaleRaw : Int) : Option ComplexFixedV1 := do
  let reSquared ← checkedI128Mul z.reRaw z.reRaw
  let imSquared ← checkedI128Mul z.imRaw z.imRaw
  let norm ← checkedI128Add reSquared imSquared
  if norm = 0 then
    none
  else do
    let denominator ← checkedI128Mul norm norm
    let scaleSquared ← checkedI128Mul scaleRaw scaleRaw
    let scaleCubed ← checkedI128Mul scaleSquared scaleRaw
    let realFactor ← checkedI128Sub reSquared imSquared
    let twiceRe ← checkedI128Mul 2 z.reRaw
    let twiceReIm ← checkedI128Mul twiceRe z.imRaw
    let imaginaryFactor ← checkedI128Sub 0 twiceReIm
    let realNumerator ← checkedI128Mul scaleCubed realFactor
    let imaginaryNumerator ← checkedI128Mul scaleCubed imaginaryFactor
    let reRaw ← roundDivNearestEvenI64 realNumerator denominator
    let imRaw ← roundDivNearestEvenI64 imaginaryNumerator denominator
    pure ⟨reRaw, imRaw, scaleRaw⟩

@[expose] def checkedScaledRealTermV1
    (coefficientRaw : Int) (power : ComplexFixedV1)
    (scaleRaw divisor : Int) : Option ComplexFixedV1 := do
  let denominator ← checkedI128Mul scaleRaw divisor
  let realNumerator ← checkedI128Mul coefficientRaw power.reRaw
  let imaginaryNumerator ← checkedI128Mul coefficientRaw power.imRaw
  let reRaw ← roundDivNearestEvenI64 realNumerator denominator
  let imRaw ← roundDivNearestEvenI64 imaginaryNumerator denominator
  pure ⟨reRaw, imRaw, scaleRaw⟩

@[expose] def checkedSquaredRealTermV1
    (coefficientRaw : Int) (power : ComplexFixedV1)
    (scaleRaw divisor : Int) : Option ComplexFixedV1 := do
  let coefficientSquared ← checkedI128Mul coefficientRaw coefficientRaw
  let scaleSquared ← checkedI128Mul scaleRaw scaleRaw
  let denominator ← checkedI128Mul scaleSquared divisor
  let realNumerator ← checkedI128Mul coefficientSquared power.reRaw
  let imaginaryNumerator ←
    checkedI128Mul coefficientSquared power.imRaw
  let reRaw ← roundDivNearestEvenI64 realNumerator denominator
  let imRaw ← roundDivNearestEvenI64 imaginaryNumerator denominator
  pure ⟨reRaw, imRaw, scaleRaw⟩

@[expose] def checkedSumFourI128 (a b c d : Int) : Option Int := do
  let ab ← checkedI128Add a b
  let abc ← checkedI128Add ab c
  checkedI128Add abc d

/-- Staged fixed-point implementation of the named finite polynomial.  This is
the executable V1 specification: powers and terms are rounded to the shared
scale exactly where the Rust implementation rounds them. -/
@[expose] def checkedWpLaurentPolynomialV1
    (z : ComplexFixedV1) (g2Raw g3Raw : Int) :
    Option ComplexFixedV1 := do
  let scaleRaw := z.scaleRaw
  let z2 ← checkedComplexMulFixedV1 z z scaleRaw
  let z4 ← checkedComplexMulFixedV1 z2 z2 scaleRaw
  let z6 ← checkedComplexMulFixedV1 z4 z2 scaleRaw
  let inverseSquare ← checkedInverseSquareFixedV1 z scaleRaw
  let g2z2 ← checkedScaledRealTermV1 g2Raw z2 scaleRaw 20
  let g3z4 ← checkedScaledRealTermV1 g3Raw z4 scaleRaw 28
  let g2SquaredZ6 ←
    checkedSquaredRealTermV1 g2Raw z6 scaleRaw 1200
  let reSum ← checkedSumFourI128 inverseSquare.reRaw g2z2.reRaw
    g3z4.reRaw g2SquaredZ6.reRaw
  let imSum ← checkedSumFourI128 inverseSquare.imRaw g2z2.imRaw
    g3z4.imRaw g2SquaredZ6.imRaw
  let reRaw ← checkedI64Value reSum
  let imRaw ← checkedI64Value imSum
  pure ⟨reRaw, imRaw, scaleRaw⟩

/-- The arithmetic-check projection exposes rejection without pretending that
a Boolean or successful calculation is an analytic certificate. -/
@[expose] def wpLaurentArithmeticCheckV1
    (z : ComplexFixedV1) (g2Raw g3Raw : Int) : Option Unit :=
  (checkedWpLaurentPolynomialV1 z g2Raw g3Raw).map fun _ ↦ ()

/-- Checked finite complex fixed-point Laurent approximation.  `none` means an
unsupported scale, a zero input, a non-i64 coefficient, or checked overflow. -/
@[expose] def wpLaurentApproxV1
    (z : ComplexFixedV1) (g2Raw g3Raw : Int) :
    Option ComplexFixedV1 :=
  if z.Valid ∧ FitsSignedBits 64 g2Raw ∧ FitsSignedBits 64 g3Raw then
    if z.isZero then none
    else checkedWpLaurentPolynomialV1 z g2Raw g3Raw
  else
    none

@[surface_novel, surface_published]
theorem wpLaurentApproxV1_deterministic
    (z : ComplexFixedV1) (g2Raw g3Raw : Int)
    {left right : ComplexFixedV1}
    (hleft : wpLaurentApproxV1 z g2Raw g3Raw = some left)
    (hright : wpLaurentApproxV1 z g2Raw g3Raw = some right) :
    left = right := by
  rw [hleft] at hright
  exact Option.some.inj hright

@[surface_novel, surface_published]
theorem wpLaurentApproxV1_zero_rejected
    (z : ComplexFixedV1) (g2Raw g3Raw : Int)
    (hzero : z.reRaw = 0 ∧ z.imRaw = 0) :
    wpLaurentApproxV1 z g2Raw g3Raw = none := by
  simp [wpLaurentApproxV1, ComplexFixedV1.isZero, hzero]

@[surface_novel, surface_published]
theorem wpLaurentApproxV1_checked_overflow_rejected
    (z : ComplexFixedV1) (g2Raw g3Raw : Int)
    (hoverflow : wpLaurentArithmeticCheckV1 z g2Raw g3Raw = none) :
    wpLaurentApproxV1 z g2Raw g3Raw = none := by
  unfold wpLaurentArithmeticCheckV1 at hoverflow
  unfold wpLaurentApproxV1
  split <;> try rfl
  split <;> try rfl
  cases hchecked : checkedWpLaurentPolynomialV1 z g2Raw g3Raw with
  | none => rfl
  | some value => simp [hchecked] at hoverflow

@[surface_novel, surface_published]
theorem wpLaurentApproxV1_spec
    (z : ComplexFixedV1) (g2Raw g3Raw : Int) (approximate : ComplexFixedV1)
    (accepted : wpLaurentApproxV1 z g2Raw g3Raw = some approximate) :
    z.Valid ∧ FitsSignedBits 64 g2Raw ∧ FitsSignedBits 64 g3Raw ∧
      z.isZero = false ∧
      checkedWpLaurentPolynomialV1 z g2Raw g3Raw = some approximate := by
  simp only [wpLaurentApproxV1] at accepted
  split at accepted <;> try contradiction
  split at accepted <;> try contradiction
  simp_all

/-- A checked finite polynomial value is not evidence that it equals the
analytic Weierstrass function outside a separately certified error theorem. -/
@[expose] def ProvesExactWeierstrassValue
    (_ : ComplexFixedV1) : Prop :=
  False

@[surface_novel, surface_published]
theorem wpLaurentApproxV1_has_no_exact_wp_authority
    (approximate : ComplexFixedV1) :
    ¬ ProvesExactWeierstrassValue approximate := by
  simp [ProvesExactWeierstrassValue]

/-! ## Future analytic validation interface -/

/-- A future analytic result must arrive with its own proof.  Merely producing
the finite polynomial above never constructs this certificate. -/
@[surface_novel, surface_certificate]
structure WeierstrassApproximationCertificate where
  input : ComplexFixedV1
  g2Raw : Int
  g3Raw : Int
  approximate : ComplexFixedV1
  errorBound : ℚ
  analyticClaim : Prop
  analyticClaimCertified : analyticClaim

@[surface_novel, surface_published]
theorem WeierstrassApproximationCertificate.certified
    (certificate : WeierstrassApproximationCertificate) :
    certificate.analyticClaim :=
  certificate.analyticClaimCertified

end Presentation.XYZElliptic
```
