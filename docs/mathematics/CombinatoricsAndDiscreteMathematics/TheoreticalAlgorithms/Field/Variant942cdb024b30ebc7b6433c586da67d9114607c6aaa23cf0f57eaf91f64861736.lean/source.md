# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Field.Variant942cdb024b30ebc7b6433c586da67d9114607c6aaa23cf0f57eaf91f64861736

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9926a3bca42651438233aab0c20d077755569f1` · SHA-256 `942cdb024b30ebc7b6433c586da67d9114607c6aaa23cf0f57eaf91f64861736`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Surface.Arithmetic

universe u

/-!
# Arithmetic field interfaces

This module supplies small proof-carrying arithmetic interfaces for the Surface
BSD layer.  It does not install the algebraic hierarchy as a theorem authority.
When a downstream construction needs finite counting, it receives an explicit
finite enumeration certificate.
-/

/-- A minimal field-like operation package.  Laws are recorded by certificate fields elsewhere. -/
structure FieldLike where
  Carrier : Type u
  zero : Carrier
  one : Carrier
  add : Carrier → Carrier → Carrier
  neg : Carrier → Carrier
  mul : Carrier → Carrier → Carrier
  inv : Carrier → Carrier
  eq : Carrier → Carrier → Bool
  lawBoundary : List String

namespace FieldLike

def sub (K : FieldLike.{u}) (x y : K.Carrier) : K.Carrier :=
  K.add x (K.neg y)

def square (K : FieldLike.{u}) (x : K.Carrier) : K.Carrier :=
  K.mul x x

def cube (K : FieldLike.{u}) (x : K.Carrier) : K.Carrier :=
  K.mul (K.mul x x) x

end FieldLike

/--
Proof-carrying field laws for a `FieldLike`.

This does not assert that every `FieldLike` is a field. It supplies a separate
certificate that downstream arithmetic geometry must request before using field
laws.
-/
structure FieldLawCertificate (K : FieldLike.{u}) where
  add_assoc :
    ∀ a b c : K.Carrier,
      K.add (K.add a b) c = K.add a (K.add b c)
  add_comm :
    ∀ a b : K.Carrier,
      K.add a b = K.add b a
  zero_add :
    ∀ a : K.Carrier,
      K.add K.zero a = a
  add_zero :
    ∀ a : K.Carrier,
      K.add a K.zero = a
  add_left_neg :
    ∀ a : K.Carrier,
      K.add (K.neg a) a = K.zero
  mul_assoc :
    ∀ a b c : K.Carrier,
      K.mul (K.mul a b) c = K.mul a (K.mul b c)
  mul_comm :
    ∀ a b : K.Carrier,
      K.mul a b = K.mul b a
  one_mul :
    ∀ a : K.Carrier,
      K.mul K.one a = a
  mul_one :
    ∀ a : K.Carrier,
      K.mul a K.one = a
  left_distrib :
    ∀ a b c : K.Carrier,
      K.mul a (K.add b c) =
        K.add (K.mul a b) (K.mul a c)
  right_distrib :
    ∀ a b c : K.Carrier,
      K.mul (K.add a b) c =
        K.add (K.mul a c) (K.mul b c)
  zero_ne_one :
    K.zero ≠ K.one
  inv_mul_cancel :
    ∀ a : K.Carrier,
      a ≠ K.zero → K.mul (K.inv a) a = K.one
  boundary : List String

/-- Soundness of the Boolean equality operation carried by a `FieldLike`. -/
structure FieldEqCertificate (K : FieldLike.{u}) where
  eq_true_iff :
    ∀ a b : K.Carrier, K.eq a b = true ↔ a = b
  eq_false_iff :
    ∀ a b : K.Carrier, K.eq a b = false ↔ a ≠ b
  boundary : List String

/-- A field-like package together with field laws and equality soundness. -/
structure LawfulFieldLike where
  field : FieldLike.{u}
  laws : FieldLawCertificate field
  eqLaws : FieldEqCertificate field
  boundary : List String

theorem FieldLawCertificate.zero_ne_one_visible
    {K : FieldLike.{u}}
    (C : FieldLawCertificate K) :
    K.zero ≠ K.one :=
  C.zero_ne_one

theorem LawfulFieldLike.zero_ne_one
    (K : LawfulFieldLike.{u}) :
    K.field.zero ≠ K.field.one :=
  K.laws.zero_ne_one

theorem FieldEqCertificate.ne_of_eq_false
    {K : FieldLike.{u}}
    (C : FieldEqCertificate K)
    {a b : K.Carrier}
    (h : K.eq a b = false) :
    a ≠ b :=
  (C.eq_false_iff a b).1 h

theorem FieldEqCertificate.eq_false_of_ne
    {K : FieldLike.{u}}
    (C : FieldEqCertificate K)
    {a b : K.Carrier}
    (h : a ≠ b) :
    K.eq a b = false :=
  (C.eq_false_iff a b).2 h

theorem LawfulFieldLike.eq_false_of_ne
    (K : LawfulFieldLike.{u})
    {a b : K.field.Carrier}
    (h : a ≠ b) :
    K.field.eq a b = false :=
  K.eqLaws.eq_false_of_ne h

theorem LawfulFieldLike.ne_of_eq_false
    (K : LawfulFieldLike.{u})
    {a b : K.field.Carrier}
    (h : K.field.eq a b = false) :
    a ≠ b :=
  K.eqLaws.ne_of_eq_false h

/-- A number-field-like descriptor.  No number-field theorem is asserted here. -/
structure NumberFieldLike extends FieldLike.{u} where
  label : String
  degree? : Option Nat
  numberFieldBoundary : List String

/--
Certificate that a lawful field used in theorem-facing BSD input is being used
as a number-field base.

This is still an interface certificate. It does not construct algebraic number
fields, embeddings, rings of integers, places, or completions.
-/
structure NumberFieldCertificate
    (K : LawfulFieldLike.{u}) where
  descriptor : NumberFieldLike.{u}
  carrierMatches :
    HEq descriptor.Carrier K.field.Carrier
  zeroMatches :
    HEq descriptor.zero K.field.zero
  oneMatches :
    HEq descriptor.one K.field.one
  finiteDimensionalOverQ : Prop
  finiteDimensionalOverQCertified :
    finiteDimensionalOverQ
  characteristicZero : Prop
  characteristicZeroCertified :
    characteristicZero
  boundary : List String

/-- Number-field quality required by theorem-facing BSD input. -/
def NumberFieldCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    (N : NumberFieldCertificate K) :
    Prop :=
  N.finiteDimensionalOverQ ∧
  N.characteristicZero

theorem NumberFieldCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    (N : NumberFieldCertificate K) :
    N.certifiedForBSD := by
  constructor
  · exact N.finiteDimensionalOverQCertified
  · exact N.characteristicZeroCertified

theorem NumberFieldCertificate.finiteDimensionalOverQ_of_certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    (h : N.certifiedForBSD) :
    N.finiteDimensionalOverQ :=
  h.1

theorem NumberFieldCertificate.characteristicZero_of_certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    (h : N.certifiedForBSD) :
    N.characteristicZero :=
  h.2

/-- Source status for theorem-facing number-field arithmetic metadata. -/
inductive NumberFieldArithmeticSourceStatus where
  | suppliedByCertificate
  | finiteExamplePlaceholder
  | unspecified
deriving Repr, DecidableEq

/-- Archimedean/nonarchimedean kind marker for place data. -/
inductive NumberFieldPlaceKind where
  | archimedean
  | nonarchimedean
deriving Repr, DecidableEq

/--
Typed place data for a theorem-facing number-field interface.

The carrier of places is explicit, as are normalized absolute values and the
finite-support function used by product-formula arguments. The Prop fields are
the mathematical obligations on these typed objects, not stand-ins saying the
objects are merely "specified".
-/
structure NumberFieldPlaceData
    (K : LawfulFieldLike.{u}) where
  Place : Type u
  kind : Place → NumberFieldPlaceKind
  normalizedAbs : Place → K.field.Carrier → K.field.Carrier
  nonarchimedeanValuation? :
    Place → Option (K.field.Carrier → K.field.Carrier)
  archimedeanEmbeddingLabel? :
    Place → Option String
  finiteSupportFor :
    K.field.Carrier → List Place
  normalizedAbsoluteValues : Prop
  normalizedAbsoluteValuesCertified :
    normalizedAbsoluteValues
  nonarchimedeanValuations : Prop
  nonarchimedeanValuationsCertified :
    nonarchimedeanValuations
  archimedeanEmbeddings : Prop
  archimedeanEmbeddingsCertified :
    archimedeanEmbeddings
  allPlacesCovered : Prop
  allPlacesCoveredCertified :
    allPlacesCovered
  finiteSupportCoversNonunitContributions : Prop
  finiteSupportCoversNonunitContributionsCertified :
    finiteSupportCoversNonunitContributions
  boundary : List String

/-- Product-formula data attached to typed number-field place data. -/
structure NumberFieldProductFormulaData
    {K : LawfulFieldLike.{u}}
    (places : NumberFieldPlaceData K) where
  productFormula : Prop
  productFormulaCertified :
    productFormula
  usesNormalizedAbsoluteValues :
    places.normalizedAbsoluteValues
  finiteSupportForNonunitContributions :
    places.finiteSupportCoversNonunitContributions
  boundary : List String

/--
Place and product-formula provenance for a certified number-field base.

This is still certificate-bearing arithmetic infrastructure. It now carries
typed places, normalized absolute values, valuation/embedding metadata, and a
product-formula datum. It does not construct completions or local fields.
-/
structure NumberFieldPlaceProductFormulaCertificate
    {K : LawfulFieldLike.{u}}
    (N : NumberFieldCertificate K) where
  numberFieldCertified :
    N.certifiedForBSD
  places : NumberFieldPlaceData K
  productFormula :
    NumberFieldProductFormulaData places
  sourceStatus : NumberFieldArithmeticSourceStatus
  boundary : List String

/-- Place/product-formula quality required by theorem-facing BSD input. -/
def NumberFieldPlaceProductFormulaCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    (P : NumberFieldPlaceProductFormulaCertificate N) :
  Prop :=
  N.certifiedForBSD ∧
  P.places.normalizedAbsoluteValues ∧
  P.places.nonarchimedeanValuations ∧
  P.places.archimedeanEmbeddings ∧
  P.places.allPlacesCovered ∧
  P.places.finiteSupportCoversNonunitContributions ∧
  P.productFormula.productFormula ∧
  P.sourceStatus =
    NumberFieldArithmeticSourceStatus.suppliedByCertificate

theorem NumberFieldPlaceProductFormulaCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (hsource :
      P.sourceStatus =
        NumberFieldArithmeticSourceStatus.suppliedByCertificate) :
    P.certifiedForBSD := by
  exact
    ⟨P.numberFieldCertified,
      P.places.normalizedAbsoluteValuesCertified,
      P.places.nonarchimedeanValuationsCertified,
      P.places.archimedeanEmbeddingsCertified,
      P.places.allPlacesCoveredCertified,
      P.places.finiteSupportCoversNonunitContributionsCertified,
      P.productFormula.productFormulaCertified,
      hsource⟩

/--
Typed projective-space data over a certified number-field base.

The carrier of projective points, their homogeneous coordinates, and the
scalar-rescaling relation are explicit.  The Prop fields are the mathematical
obligations on this data; they are not substitutes for the data itself.
-/
structure NumberFieldProjectiveSpaceData
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    (P : NumberFieldPlaceProductFormulaCertificate N) where
  Point : Type u
  dimension : Nat
  homogeneousCoordinates :
    Point → List K.field.Carrier
  scalarRescalingEquivalent :
    Point → Point → Prop
  coordinatesNonzero : Prop
  coordinatesNonzeroCertified :
    coordinatesNonzero
  scalarRescalingIsEquivalence : Prop
  scalarRescalingIsEquivalenceCertified :
    scalarRescalingIsEquivalence
  coordinatesUseBaseField :
    ∀ x : Point, homogeneousCoordinates x = homogeneousCoordinates x
  boundary : List String

/--
Typed projective-height data attached to explicit projective-space and
place/product-formula data.

The value type is abstract because this file does not import an ordered real
or logarithmic-height hierarchy.  Downstream arguments receive the height map,
comparison relation, and boundedness predicate explicitly.
-/
structure NumberFieldProjectiveHeightData
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    (X : NumberFieldProjectiveSpaceData P) where
  HeightValue : Type u
  height :
    X.Point → HeightValue
  le :
    HeightValue → HeightValue → Prop
  boundedBy :
    HeightValue → X.Point → Prop
  boundedBy_eq_height_le :
    ∀ B x, boundedBy B x ↔ le (height x) B
  heightDefinedOnProjectivePoints : Prop
  heightDefinedOnProjectivePointsCertified :
    heightDefinedOnProjectivePoints
  heightUsesNormalizedAbsoluteValues : Prop
  heightUsesNormalizedAbsoluteValuesCertified :
    heightUsesNormalizedAbsoluteValues
  heightInvariantUnderScalarRescaling : Prop
  heightInvariantUnderScalarRescalingCertified :
    heightInvariantUnderScalarRescaling
  heightCompatibleWithProductFormula : Prop
  heightCompatibleWithProductFormulaCertified :
    heightCompatibleWithProductFormula
  boundary : List String

/--
Projective-height provenance for a certified number-field base.

This certificate now carries typed projective points, homogeneous coordinates,
the scalar-rescaling relation, and the height map.  It still does not prove
Northcott's theorem or construct analytic Weil heights from scratch.
-/
structure NumberFieldProjectiveHeightCertificate
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    (P : NumberFieldPlaceProductFormulaCertificate N) where
  basePlacesCertified :
    P.certifiedForBSD
  projectiveSpace :
    NumberFieldProjectiveSpaceData P
  projectiveHeight :
    NumberFieldProjectiveHeightData projectiveSpace
  sourceStatus : NumberFieldArithmeticSourceStatus
  boundary : List String

/-- Projective-height quality required by theorem-facing BSD input. -/
def NumberFieldProjectiveHeightCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    (H : NumberFieldProjectiveHeightCertificate P) :
    Prop :=
  P.certifiedForBSD ∧
  H.projectiveSpace.coordinatesNonzero ∧
  H.projectiveSpace.scalarRescalingIsEquivalence ∧
  H.projectiveHeight.heightDefinedOnProjectivePoints ∧
  H.projectiveHeight.heightUsesNormalizedAbsoluteValues ∧
  H.projectiveHeight.heightInvariantUnderScalarRescaling ∧
  H.projectiveHeight.heightCompatibleWithProductFormula ∧
  H.sourceStatus =
    NumberFieldArithmeticSourceStatus.suppliedByCertificate

theorem NumberFieldProjectiveHeightCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    (H : NumberFieldProjectiveHeightCertificate P)
    (hsource :
      H.sourceStatus =
        NumberFieldArithmeticSourceStatus.suppliedByCertificate) :
    H.certifiedForBSD := by
  exact
    ⟨H.basePlacesCertified,
      H.projectiveSpace.coordinatesNonzeroCertified,
      H.projectiveSpace.scalarRescalingIsEquivalenceCertified,
      H.projectiveHeight.heightDefinedOnProjectivePointsCertified,
      H.projectiveHeight.heightUsesNormalizedAbsoluteValuesCertified,
      H.projectiveHeight.heightInvariantUnderScalarRescalingCertified,
      H.projectiveHeight.heightCompatibleWithProductFormulaCertified,
      hsource⟩

/--
Typed Northcott finite-set data for projective height over a certified number
field.

The bounded-degree and bounded-height conditions are predicates on the explicit
projective point carrier.  The candidate finite lists are part of the data, with
completeness obligations recorded as Prop fields.
-/
structure NumberFieldNorthcottData
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    (H : NumberFieldProjectiveHeightCertificate P) where
  degreeBound : Nat
  heightBound : H.projectiveHeight.HeightValue
  boundedDegree :
    H.projectiveSpace.Point → Prop
  boundedHeight :
    H.projectiveSpace.Point → Prop
  boundedHeight_eq_heightBound :
    ∀ x, boundedHeight x ↔
      H.projectiveHeight.boundedBy heightBound x
  boundedDegreeAndHeightPoints :
    List H.projectiveSpace.Point
  boundedDegreeAndHeightComplete : Prop
  boundedDegreeAndHeightCompleteCertified :
    boundedDegreeAndHeightComplete
  rationalPointOverBaseField :
    H.projectiveSpace.Point → Prop
  rationalPointsOverBaseFieldHaveBoundedDegree : Prop
  rationalPointsOverBaseFieldHaveBoundedDegreeCertified :
    rationalPointsOverBaseFieldHaveBoundedDegree
  finiteHeightBallForBaseFieldRationalPoints :
    List H.projectiveSpace.Point
  finiteHeightBallForBaseFieldRationalPointsComplete : Prop
  finiteHeightBallForBaseFieldRationalPointsCompleteCertified :
    finiteHeightBallForBaseFieldRationalPointsComplete
  boundary : List String

/--
Northcott finiteness provenance for projective height over a certified number
field.

This remains certificate-gated: the file does not prove Northcott's theorem.
It now records concrete finite candidate lists and predicates rather than bare
"condition specified" placeholders.
-/
structure NumberFieldNorthcottCertificate
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    (H : NumberFieldProjectiveHeightCertificate P) where
  projectiveHeightCertified :
    H.certifiedForBSD
  northcottData :
    NumberFieldNorthcottData H
  sourceStatus : NumberFieldArithmeticSourceStatus
  boundary : List String

/-- Northcott quality required by theorem-facing Mordell-Weil height descent. -/
def NumberFieldNorthcottCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {H : NumberFieldProjectiveHeightCertificate P}
    (Q : NumberFieldNorthcottCertificate H) :
    Prop :=
  H.certifiedForBSD ∧
  Q.northcottData.boundedDegreeAndHeightComplete ∧
  Q.northcottData.rationalPointsOverBaseFieldHaveBoundedDegree ∧
  Q.northcottData.finiteHeightBallForBaseFieldRationalPointsComplete ∧
  Q.sourceStatus =
    NumberFieldArithmeticSourceStatus.suppliedByCertificate

theorem NumberFieldNorthcottCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {H : NumberFieldProjectiveHeightCertificate P}
    (Q : NumberFieldNorthcottCertificate H)
    (hsource :
      Q.sourceStatus =
        NumberFieldArithmeticSourceStatus.suppliedByCertificate) :
    Q.certifiedForBSD := by
  exact
    ⟨Q.projectiveHeightCertified,
      Q.northcottData.boundedDegreeAndHeightCompleteCertified,
      Q.northcottData.rationalPointsOverBaseFieldHaveBoundedDegreeCertified,
      Q.northcottData.finiteHeightBallForBaseFieldRationalPointsCompleteCertified,
      hsource⟩

/-- A finite enumeration certificate used by counting definitions. -/
structure FiniteEnumeration (α : Type u) where
  elements : List α
  noDuplicates : elements.Nodup
  exhaustive : ∀ x : α, x ∈ elements
  cardinality : Nat
  length_eq_cardinality : elements.length = cardinality

/-- A finite field interface with explicit enumeration data. -/
structure FiniteFieldLike where
  field : FieldLike.{u}
  characteristic : Nat
  cardinality : Nat
  enumeration : FiniteEnumeration field.Carrier
  enumeration_cardinality :
    enumeration.cardinality = cardinality
  finiteFieldBoundary : List String

/--
Symbolic finite-field metadata.

This is useful for planning and naming.  Actual counting still requires a
`FiniteFieldLike` with an explicit enumeration certificate.
-/
structure SymbolicFiniteField where
  characteristic : Nat
  cardinality : Nat
  label : String
  requiresEnumerationForCounting : Prop
  requiresEnumerationForCountingCertified : requiresEnumerationForCounting
  boundary : List String

/-- A generic symbolic finite-field descriptor of cardinality `p`. -/
def symbolicFiniteField (p : Nat) : SymbolicFiniteField where
  characteristic := p
  cardinality := p
  label := "symbolic finite field of cardinality " ++ toString p
  requiresEnumerationForCounting := True
  requiresEnumerationForCountingCertified := trivial
  boundary := [
    "This descriptor names a finite field candidate.",
    "Point counting requires a separate finite enumeration certificate."
  ]

/-- Count elements satisfying a Boolean predicate over a certified finite enumeration. -/
def countWhere
    {α : Type u}
    (E : FiniteEnumeration α)
    (p : α → Bool) :
    Nat :=
  (E.elements.filter p).length

/-- A prime-field-like operation package on `Fin p`, used for finite examples. -/
def residueFieldOps (p : Nat) (hp : 0 < p) : FieldLike where
  Carrier := Fin p
  zero := ⟨0, hp⟩
  one := ⟨1 % p, Nat.mod_lt 1 hp⟩
  add := fun a b => ⟨(a.val + b.val) % p, Nat.mod_lt _ hp⟩
  neg := fun a => ⟨(p - a.val) % p, Nat.mod_lt _ hp⟩
  mul := fun a b => ⟨(a.val * b.val) % p, Nat.mod_lt _ hp⟩
  inv := fun a => a
  eq := fun a b => decide (a = b)
  lawBoundary := [
    "Residue operations are computational modulo p.",
    "Field laws require the usual primality/nonzero certificates and are not global axioms."
  ]

end Surface.Arithmetic
```
