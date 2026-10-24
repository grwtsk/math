# Complete source: GRWTSK.Analysis.ComplexAnalysis.AnalyticGenerators.Variant6a8fddf9eb0aec8baea8d3590a46dd3491da7fe18d0fa628e2bfa6860715546c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69ce651d9d95c005561cd76a9c74e53aa61bcea4` · SHA-256 `6a8fddf9eb0aec8baea8d3590a46dd3491da7fe18d0fa628e2bfa6860715546c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Analysis.AnalyticCertificate

set_option autoImplicit false

namespace Think.Analysis

universe u v w z

/-
Finite generator taxonomy for analytic theorem schemas.

Concrete analytic recognition theorems are not finite in number. This file
records the finite generator classes for such theorems and the abstract rule
that a generator hypothesis must produce the positive analytic certificate
formalized in `AnalyticCertificate.lean`.
-/

/--
Finite classes of positive mechanisms that can generate analytic theorem
schemas.

Each constructor is a generator class, not a proof of any specific analytic
theorem. A concrete theorem in one of these classes must still supply a
hypothesis-to-certificate implication.
-/
inductive AnalyticGeneratorClass where
  | certificate
  | powerSeriesMajorant
  | differentialHolomorphicity
  | integralRepresentation
  | moreraClosedForm
  | derivativeGrowthEstimate
  | uniformEstimateNormalFamily
  | complexification
  | continuationExtension
  | singularityRemovalClassification
  | algebraicClosure
  | implicitInversePreparation
  | odeRecurrenceFunctionalEquation
  | pdeAnalyticRegularity
  | microlocalAnalyticRegularity
  | harmonicPotentialTheoretic
  | transformRepresentation
  | spectralFunctionalCalculus
  | semigroupEvolution
  | variationalEulerLagrange
  | geometricAnalyticStructure
  | parameterDependence
  | sheafGermLocalToGlobal
  | approximationLimiting
  | distributionalWeakToAnalytic
deriving Repr, DecidableEq

/-- Canonical zero-based index for the finite generator taxonomy. -/
def AnalyticGeneratorClass.index : AnalyticGeneratorClass → Nat
  | .certificate => 0
  | .powerSeriesMajorant => 1
  | .differentialHolomorphicity => 2
  | .integralRepresentation => 3
  | .moreraClosedForm => 4
  | .derivativeGrowthEstimate => 5
  | .uniformEstimateNormalFamily => 6
  | .complexification => 7
  | .continuationExtension => 8
  | .singularityRemovalClassification => 9
  | .algebraicClosure => 10
  | .implicitInversePreparation => 11
  | .odeRecurrenceFunctionalEquation => 12
  | .pdeAnalyticRegularity => 13
  | .microlocalAnalyticRegularity => 14
  | .harmonicPotentialTheoretic => 15
  | .transformRepresentation => 16
  | .spectralFunctionalCalculus => 17
  | .semigroupEvolution => 18
  | .variationalEulerLagrange => 19
  | .geometricAnalyticStructure => 20
  | .parameterDependence => 21
  | .sheafGermLocalToGlobal => 22
  | .approximationLimiting => 23
  | .distributionalWeakToAnalytic => 24

/-- Exhaustive finite list of analytic generator classes. -/
def allAnalyticGeneratorClasses : List AnalyticGeneratorClass :=
  [ .certificate
  , .powerSeriesMajorant
  , .differentialHolomorphicity
  , .integralRepresentation
  , .moreraClosedForm
  , .derivativeGrowthEstimate
  , .uniformEstimateNormalFamily
  , .complexification
  , .continuationExtension
  , .singularityRemovalClassification
  , .algebraicClosure
  , .implicitInversePreparation
  , .odeRecurrenceFunctionalEquation
  , .pdeAnalyticRegularity
  , .microlocalAnalyticRegularity
  , .harmonicPotentialTheoretic
  , .transformRepresentation
  , .spectralFunctionalCalculus
  , .semigroupEvolution
  , .variationalEulerLagrange
  , .geometricAnalyticStructure
  , .parameterDependence
  , .sheafGermLocalToGlobal
  , .approximationLimiting
  , .distributionalWeakToAnalytic
  ]

theorem all_analytic_generator_classes_length :
    allAnalyticGeneratorClasses.length = 25 := by
  rfl

theorem analytic_generator_index_lt
    (g : AnalyticGeneratorClass) :
    g.index < 25 := by
  cases g <;> decide

theorem all_analytic_generator_classes_complete
    (g : AnalyticGeneratorClass) :
    g ∈ allAnalyticGeneratorClasses := by
  cases g <;> simp [allAnalyticGeneratorClasses]

/--
Generic local recognition predicate for a fixed certificate context.
A generator hypothesis recognizes analyticity only by producing the already
formalized positive local analytic certificate.
-/
def RecognizesLocalAnalyticCertificate
    {X : Type u} {Y : Type v} {Rep : Type w}
    (P : LocalAnalyticCertificatePredicates X Y Rep)
    (H : (X → Y) → X → Prop) : Prop :=
  ∀ (F : X → Y) (x : X),
    H F x → HasLocalAnalyticCertificate P F x

/--
A local analytic generator schema: a generator class plus hypotheses that
produce a local positive analytic certificate.
-/
structure LocalAnalyticGeneratorSchema
    (X : Type u) (Y : Type v) (Rep : Type w)
    (P : LocalAnalyticCertificatePredicates X Y Rep) where
  generator : AnalyticGeneratorClass
  hypotheses : (X → Y) → X → Prop
  recognizesCertificate :
    RecognizesLocalAnalyticCertificate P hypotheses

/--
Any local generator schema yields analyticity once paired with a local analytic
certificate theorem schema using the same certificate predicates.
-/
theorem local_generator_conditions_imply_analytic
    {X : Type u} {Y : Type v} {Rep : Type w}
    (T : UniversalLocalAnalyticTheoremSchema X Y Rep)
    (G : LocalAnalyticGeneratorSchema X Y Rep T.predicates)
    {F : X → Y} {x : X} :
    G.hypotheses F x → T.analyticAt F x :=
  fun h => positive_local_certificate_implies_analytic T
    (G.recognizesCertificate F x h)

/-- The generator class of a local schema is one of the exhaustive classes. -/
theorem local_generator_class_is_listed
    {X : Type u} {Y : Type v} {Rep : Type w}
    {P : LocalAnalyticCertificatePredicates X Y Rep}
    (G : LocalAnalyticGeneratorSchema X Y Rep P) :
    G.generator ∈ allAnalyticGeneratorClasses :=
  all_analytic_generator_classes_complete G.generator

/--
Generic global recognition predicate for a fixed cover-certificate context.
A generator hypothesis recognizes analyticity on a set only by producing the
already formalized positive global analytic certificate.
-/
def RecognizesGlobalAnalyticCertificate
    {X : Type u} {Y : Type v} {Rep : Type w} {I : Type z}
    (P : GlobalAnalyticCertificatePredicates X Y Rep I)
    (H : (X → Y) → Set X → Prop) : Prop :=
  ∀ (F : X → Y) (S : Set X),
    H F S → HasGlobalAnalyticCertificate P F S

/--
A global analytic generator schema: a generator class plus hypotheses that
produce a cover-level positive analytic certificate.
-/
structure GlobalAnalyticGeneratorSchema
    (X : Type u) (Y : Type v) (Rep : Type w) (I : Type z)
    (P : GlobalAnalyticCertificatePredicates X Y Rep I) where
  generator : AnalyticGeneratorClass
  hypotheses : (X → Y) → Set X → Prop
  recognizesCertificate :
    RecognizesGlobalAnalyticCertificate P hypotheses

/--
Any global generator schema yields analyticity once paired with a global analytic
certificate theorem schema using the same cover-certificate predicates.
-/
theorem global_generator_conditions_imply_analytic
    {X : Type u} {Y : Type v} {Rep : Type w} {I : Type z}
    (T : UniversalGlobalAnalyticTheoremSchema X Y Rep I)
    (G : GlobalAnalyticGeneratorSchema X Y Rep I T.predicates)
    {F : X → Y} {S : Set X} :
    G.hypotheses F S → T.analyticOn F S :=
  fun h => positive_global_certificate_implies_analytic T
    (G.recognizesCertificate F S h)

/-- The generator class of a global schema is one of the exhaustive classes. -/
theorem global_generator_class_is_listed
    {X : Type u} {Y : Type v} {Rep : Type w} {I : Type z}
    {P : GlobalAnalyticCertificatePredicates X Y Rep I}
    (G : GlobalAnalyticGeneratorSchema X Y Rep I P) :
    G.generator ∈ allAnalyticGeneratorClasses :=
  all_analytic_generator_classes_complete G.generator

/-- Certificate generators are exactly the direct positive-certificate class. -/
theorem certificate_generator_index :
    AnalyticGeneratorClass.certificate.index = 0 := by
  rfl

/-- The final generator in the finite taxonomy is the weak-to-analytic class. -/
theorem distributional_weak_to_analytic_generator_index :
    AnalyticGeneratorClass.distributionalWeakToAnalytic.index = 24 := by
  rfl

end Think.Analysis
```
