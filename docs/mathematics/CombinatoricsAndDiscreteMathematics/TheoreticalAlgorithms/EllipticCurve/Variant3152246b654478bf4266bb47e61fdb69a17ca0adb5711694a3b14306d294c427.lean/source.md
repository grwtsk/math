# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EllipticCurve.Variant3152246b654478bf4266bb47e61fdb69a17ca0adb5711694a3b14306d294c427

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e9701f0591679118e2e9cca08fc285cc69ef64f` · SHA-256 `5ca234397f9edcb9fdf3ca4a2ccd6130fb9dd77df9084bc77c0f01e9a66a5860`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ShortWeierstrass.Variantf0d980f5989083fb00a4f2fbac2aaf2580e12423fa16af8e7bece68592cf27cc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f0d980f5989083fb00a4f2fbac2aaf2580e12423fa16af8e7bece68592cf27cc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ShortWeierstrass.Variantf0d980f5989083fb00a4f2fbac2aaf2580e12423fa16af8e7bece68592cf27cc","mathematical_subject":"Computation.DataStructures","original_sha256":"f0d980f5989083fb00a4f2fbac2aaf2580e12423fa16af8e7bece68592cf27cc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Arithmetic/EllipticCurve.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Arithmetic.FiniteField


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ShortWeierstrass.Variantf0d980f5989083fb00a4f2fbac2aaf2580e12423fa16af8e7bece68592cf27cc

namespace Surface.Arithmetic
namespace EllipticCurve

universe u

/-!
# Short Weierstrass elliptic curves

This module formalizes a small, explicit interface for short Weierstrass curves.
It is intentionally algebra-interface based.  Nonsingularity is a stored
certificate, and affine points carry their curve equation proof.
-/

/-- A short Weierstrass curve `y^2 = x^3 + A*x + B` over a field-like package. -/
structure ShortWeierstrass (K : FieldLike.{u}) where
  A : K.Carrier
  B : K.Carrier
  discriminant : K.Carrier
  nonsingular : K.eq discriminant K.zero = false
  charNeTwoThree : Prop
  charBoundary : List String

/--
A short-Weierstrass curve over a law-carrying field interface.

This does not upgrade every `ShortWeierstrass` object. It creates the gate that
future arithmetic-geometry constructions must require before using field laws or
the characteristic restriction.
-/
structure LawfulShortWeierstrass where
  K : LawfulFieldLike.{u}
  E : ShortWeierstrass K.field
  charNeTwoThreeCertified : E.charNeTwoThree
  boundary : List String

theorem LawfulShortWeierstrass.charNeTwoThree_visible
    (C : LawfulShortWeierstrass.{u}) :
    C.E.charNeTwoThree :=
  C.charNeTwoThreeCertified

theorem LawfulShortWeierstrass.zero_ne_one
    (C : LawfulShortWeierstrass.{u}) :
    C.K.field.zero ≠ C.K.field.one :=
  LawfulFieldLike.zero_ne_one C.K

/-- Natural-number scalar in a `FieldLike`, used only for typed formula metadata. -/
def natScalar (K : FieldLike.{u}) : Nat → K.Carrier
  | 0 => K.zero
  | Nat.succ n => K.add K.one (natScalar K n)

/--
The short-Weierstrass discriminant expression
`-16 * (4*A^3 + 27*B^2)` in the current operation package.

This is a typed expression, not a theorem that the stored discriminant equals it.
-/
def shortWeierstrassDiscriminantExpression
    {K : FieldLike.{u}}
    (E : ShortWeierstrass K) :
    K.Carrier :=
  let four := natScalar K 4
  let sixteen := natScalar K 16
  let twentySeven := natScalar K 27
  K.neg
    (K.mul sixteen
      (K.add
        (K.mul four (K.cube E.A))
        (K.mul twentySeven (K.square E.B))))

/--
Certificate that the stored discriminant agrees with the typed
short-Weierstrass discriminant expression and is nonzero.

This is the next theorem-facing gate before smoothness or group-law construction.
-/
structure DiscriminantFormulaCertificate
    (C : LawfulShortWeierstrass.{u}) where
  discriminant_eq_expression :
    C.E.discriminant =
      shortWeierstrassDiscriminantExpression C.E
  discriminant_ne_zero :
    C.E.discriminant ≠ C.K.field.zero
  boundary : List String

theorem DiscriminantFormulaCertificate.eq_expression
    {C : LawfulShortWeierstrass.{u}}
    (D : DiscriminantFormulaCertificate C) :
    C.E.discriminant =
      shortWeierstrassDiscriminantExpression C.E :=
  D.discriminant_eq_expression

theorem DiscriminantFormulaCertificate.ne_zero
    {C : LawfulShortWeierstrass.{u}}
    (D : DiscriminantFormulaCertificate C) :
    C.E.discriminant ≠ C.K.field.zero :=
  D.discriminant_ne_zero

theorem DiscriminantFormulaCertificate.nonsingular_bool
    {C : LawfulShortWeierstrass.{u}}
    (D : DiscriminantFormulaCertificate C) :
    C.K.field.eq C.E.discriminant C.K.field.zero = false :=
  C.K.eq_false_of_ne D.discriminant_ne_zero

theorem DiscriminantFormulaCertificate.stored_nonsingular_visible
    {C : LawfulShortWeierstrass.{u}}
    (_D : DiscriminantFormulaCertificate C) :
    C.K.field.eq C.E.discriminant C.K.field.zero = false :=
  C.E.nonsingular

variable {K : FieldLike.{u}}

/-- The right-hand side `x^3 + A*x + B`. -/
def rhs (E : ShortWeierstrass K) (x : K.Carrier) : K.Carrier :=
  K.add (K.add (K.cube x) (K.mul E.A x)) E.B

/-- Boolean curve equation for affine coordinates. -/
def onCurveBool (E : ShortWeierstrass K) (x y : K.Carrier) : Bool :=
  K.eq (K.square y) (rhs E x)

/-- Propositional curve equation for affine coordinates. -/
def OnAffineCurve (E : ShortWeierstrass K) (x y : K.Carrier) : Prop :=
  onCurveBool E x y = true

/--
For a lawful short-Weierstrass curve, the Boolean affine membership predicate is
equivalent to the propositional curve equation.
-/
theorem LawfulShortWeierstrass.onAffineCurve_iff_equation
    (C : LawfulShortWeierstrass.{u})
    (x y : C.K.field.Carrier) :
    OnAffineCurve C.E x y ↔
      C.K.field.square y = rhs C.E x := by
  unfold OnAffineCurve onCurveBool
  exact C.K.eqLaws.eq_true_iff
    (C.K.field.square y)
    (rhs C.E x)

/-- Extract the propositional affine curve equation from a lawful curve point proof. -/
theorem LawfulShortWeierstrass.equation_of_onAffineCurve
    (C : LawfulShortWeierstrass.{u})
    {x y : C.K.field.Carrier}
    (h : OnAffineCurve C.E x y) :
    C.K.field.square y = rhs C.E x :=
  (C.onAffineCurve_iff_equation x y).1 h

/-- Build the Boolean affine curve proof from the propositional equation. -/
theorem LawfulShortWeierstrass.onAffineCurve_of_equation
    (C : LawfulShortWeierstrass.{u})
    {x y : C.K.field.Carrier}
    (h : C.K.field.square y = rhs C.E x) :
    OnAffineCurve C.E x y :=
  (C.onAffineCurve_iff_equation x y).2 h

/--
The affine Weierstrass polynomial
`F(x,y) = y^2 - (x^3 + A*x + B)` in the current operation package.

This is typed expression data, not a developed polynomial theory.
-/
def affineWeierstrassPolynomial
    (C : LawfulShortWeierstrass.{u})
    (x y : C.K.field.Carrier) :
    C.K.field.Carrier :=
  C.K.field.add
    (C.K.field.square y)
    (C.K.field.neg (rhs C.E x))

/--
The formal `x`-partial of `F = y^2 - (x^3 + A*x + B)`,
namely `-(3*x^2 + A)`, in the current operation package.
-/
def affineWeierstrassPartialX
    (C : LawfulShortWeierstrass.{u})
    (x : C.K.field.Carrier) :
    C.K.field.Carrier :=
  C.K.field.neg
    (C.K.field.add
      (C.K.field.mul (natScalar C.K.field 3) (C.K.field.square x))
      C.E.A)

/--
The formal `y`-partial of `F = y^2 - (x^3 + A*x + B)`,
namely `2*y`, in the current operation package.
-/
def affineWeierstrassPartialY
    (C : LawfulShortWeierstrass.{u})
    (y : C.K.field.Carrier) :
    C.K.field.Carrier :=
  C.K.field.mul (natScalar C.K.field 2) y

/-- A typed affine singular point candidate for a lawful short-Weierstrass curve. -/
structure AffineSingularPoint
    (C : LawfulShortWeierstrass.{u}) where
  x : C.K.field.Carrier
  y : C.K.field.Carrier
  onCurve : OnAffineCurve C.E x y
  partialX_zero :
    affineWeierstrassPartialX C x = C.K.field.zero
  partialY_zero :
    affineWeierstrassPartialY C y = C.K.field.zero
  boundary : List String

/--
Certificate that the lawful short-Weierstrass curve is smooth enough for
the next theorem-facing arithmetic-geometry layer.

This does not prove the discriminant criterion. It records the exact gates that
a later proof of smoothness must supply.
-/
structure SmoothShortWeierstrassCertificate
    (C : LawfulShortWeierstrass.{u}) where
  discriminant : DiscriminantFormulaCertificate C
  noAffineSingularPoint : ¬ Nonempty (AffineSingularPoint C)
  infinitySmooth : Prop
  infinitySmoothCertified : infinitySmooth
  boundary : List String

theorem SmoothShortWeierstrassCertificate.discriminant_ne_zero
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothShortWeierstrassCertificate C) :
    C.E.discriminant ≠ C.K.field.zero :=
  S.discriminant.discriminant_ne_zero

theorem SmoothShortWeierstrassCertificate.no_affine_singular_point
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothShortWeierstrassCertificate C) :
    ¬ Nonempty (AffineSingularPoint C) :=
  S.noAffineSingularPoint

/-- Points on a short Weierstrass curve.  Affine points carry the equation proof. -/
inductive Point (E : ShortWeierstrass K) where
  | infinity : Point E
  | affine :
      (x y : K.Carrier) →
      OnAffineCurve E x y →
      Point E

/-- Predicate that a constructed point belongs to the curve. -/
def OnCurve (E : ShortWeierstrass K) : Point E → Prop
  | .infinity => True
  | .affine x y _ => OnAffineCurve E x y

/-- The point at infinity is always a point of the projective completion. -/
theorem infinity_onCurve (E : ShortWeierstrass K) :
    OnCurve E .infinity := by
  trivial

/-- An affine point exposes the stored equation proof. -/
theorem affine_onCurve
    (E : ShortWeierstrass K)
    (x y : K.Carrier)
    (h : OnAffineCurve E x y) :
    OnCurve E (.affine x y h) := by
  exact h

/-- A small symbolic curve over `F2`: `y^2 = x^3 + x + 1`. -/
def exampleCurveF2 : ShortWeierstrass F2.field where
  A := ⟨1, by decide⟩
  B := ⟨1, by decide⟩
  discriminant := ⟨1, by decide⟩
  nonsingular := by decide
  charNeTwoThree := False
  charBoundary := [
    "This is a finite symbolic example over F2.",
    "The short-Weierstrass characteristic restriction char ≠ 2,3 is not satisfied."
  ]

/-- A small symbolic curve over `F3`: `y^2 = x^3 + x + 1`. -/
def exampleCurveF3 : ShortWeierstrass F3.field where
  A := ⟨1, by decide⟩
  B := ⟨1, by decide⟩
  discriminant := ⟨1, by decide⟩
  nonsingular := by decide
  charNeTwoThree := False
  charBoundary := [
    "This is a finite symbolic example over F3.",
    "The short-Weierstrass characteristic restriction char ≠ 2,3 is not satisfied."
  ]

theorem exampleCurveF2_charNeTwoThree_false :
    ¬ exampleCurveF2.charNeTwoThree := by
  intro h
  exact h

theorem exampleCurveF3_charNeTwoThree_false :
    ¬ exampleCurveF3.charNeTwoThree := by
  intro h
  exact h

/-- A small symbolic curve over `F5`: `y^2 = x^3 + x + 1`. -/
def exampleCurveF5 : ShortWeierstrass F5.field where
  A := ⟨1, by decide⟩
  B := ⟨1, by decide⟩
  discriminant := ⟨1, by decide⟩
  nonsingular := by decide
  charNeTwoThree := True
  charBoundary := [
    "This is a finite symbolic example over F5.",
    "The short-Weierstrass characteristic restriction is recorded as boundary metadata."
  ]

end EllipticCurve
end Surface.Arithmetic
```
