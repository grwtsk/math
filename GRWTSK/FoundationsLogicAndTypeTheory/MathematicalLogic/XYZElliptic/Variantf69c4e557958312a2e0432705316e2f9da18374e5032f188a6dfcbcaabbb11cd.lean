-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.HasXYZRawCoordinates.Variant4ebc4bbb4120983e91706626de3b4f7c5e69b84306f1627d75e76038608df83e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4ebc4bbb4120983e91706626de3b4f7c5e69b84306f1627d75e76038608df83e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.HasXYZRawCoordinates.Variant4ebc4bbb4120983e91706626de3b4f7c5e69b84306f1627d75e76038608df83e","mathematical_subject":"Logic.Foundations","original_sha256":"4ebc4bbb4120983e91706626de3b4f7c5e69b84306f1627d75e76038608df83e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:7d6245263bdea892f0972eeb/workspace/lib/Presentation/XYZElliptic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.HasXYZRawCoordinates.Variant4ebc4bbb4120983e91706626de3b4f7c5e69b84306f1627d75e76038608df83e

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
  nonsingular : Prop
  authority : RefactorAuthority := .presentationOnly

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
    nonsingular := delta ≠ 0
    authority := .presentationOnly }

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
@[surface_novel]
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
  let z2 := RationalComplex.mul zRat zRat
  let z4 := RationalComplex.mul z2 z2
  let z6 := RationalComplex.mul z4 z2
  RationalComplex.add (RationalComplex.inv z2)
    (RationalComplex.add
      (RationalComplex.scale ((g2Raw : ℚ) / 20) z2)
      (RationalComplex.add
        (RationalComplex.scale ((g3Raw : ℚ) / 28) z4)
        (RationalComplex.scale (((g2Raw : ℚ) ^ 2) / 1200) z6)))

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

/-- Integer preflight for every raw power, coefficient product, and reciprocal
norm used by the V1 finite expression. -/
@[expose] def wpLaurentArithmeticCheckV1
    (z : ComplexFixedV1) (g2Raw g3Raw : Int) : Option Unit := do
  let inputRe ← checkedI128Value z.reRaw
  let inputIm ← checkedI128Value z.imRaw
  let g2 ← checkedI128Value g2Raw
  let g3 ← checkedI128Value g3Raw
  let input : GaussianIntermediate := ⟨inputRe, inputIm⟩
  let z2 ← checkedGaussianMul input input
  let z4 ← checkedGaussianMul z2 z2
  let z6 ← checkedGaussianMul z4 z2
  let g2Squared ← checkedI128Mul g2 g2
  let _ ← checkedI128Mul g2 z2.re
  let _ ← checkedI128Mul g2 z2.im
  let _ ← checkedI128Mul g3 z4.re
  let _ ← checkedI128Mul g3 z4.im
  let _ ← checkedI128Mul g2Squared z6.re
  let _ ← checkedI128Mul g2Squared z6.im
  let z2ReSquared ← checkedI128Mul z2.re z2.re
  let z2ImSquared ← checkedI128Mul z2.im z2.im
  let _ ← checkedI128Add z2ReSquared z2ImSquared
  pure ()

/-- Checked finite Laurent approximation.  `none` means unsupported scale,
zero input, or failure of the signed-width preflight. -/
@[expose] def wpLaurentApproxV1
    (z : ComplexFixedV1) (g2Raw g3Raw : Int) :
    Option RationalComplex :=
  if z.Valid then
    if z.isZero then
      none
    else
      match wpLaurentArithmeticCheckV1 z g2Raw g3Raw with
      | some () => some (wpLaurentPolynomialV1 z g2Raw g3Raw)
      | none => none
  else
    none

@[surface_novel, surface_published]
theorem wpLaurentApproxV1_deterministic
    (z : ComplexFixedV1) (g2Raw g3Raw : Int)
    {left right : RationalComplex}
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
  simp [wpLaurentApproxV1, hoverflow]

@[surface_novel, surface_published]
theorem wpLaurentApproxV1_spec
    (z : ComplexFixedV1) (g2Raw g3Raw : Int) (approximate : RationalComplex)
    (accepted : wpLaurentApproxV1 z g2Raw g3Raw = some approximate) :
    z.Valid ∧ z.isZero = false ∧
      wpLaurentArithmeticCheckV1 z g2Raw g3Raw = some () ∧
      approximate = wpLaurentPolynomialV1 z g2Raw g3Raw := by
  simp only [wpLaurentApproxV1] at accepted
  split at accepted <;> try contradiction
  split at accepted <;> try contradiction
  split at accepted <;> simp_all

/-! ## Future analytic validation interface -/

/-- A future analytic result must arrive with its own proof.  Merely producing
the finite polynomial above never constructs this certificate. -/
@[surface_novel]
structure WeierstrassApproximationCertificate where
  input : ComplexFixedV1
  g2Raw : Int
  g3Raw : Int
  approximate : RationalComplex
  errorBound : ℚ
  analyticClaim : Prop
  analyticClaimCertified : analyticClaim

@[surface_novel, surface_published]
theorem WeierstrassApproximationCertificate.certified
    (certificate : WeierstrassApproximationCertificate) :
    certificate.analyticClaim :=
  certificate.analyticClaimCertified

end Presentation.XYZElliptic
