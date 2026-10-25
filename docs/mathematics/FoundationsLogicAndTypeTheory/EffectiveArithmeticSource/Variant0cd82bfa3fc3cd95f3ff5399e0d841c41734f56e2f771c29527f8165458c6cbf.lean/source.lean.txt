-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.UniformityModel.Variant7b047fa454455633f63f03aefc49f5aa1d67599be923eeb46ddfaf49b690f1c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7b047fa454455633f63f03aefc49f5aa1d67599be923eeb46ddfaf49b690f1c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.UniformityModel.Variant7b047fa454455633f63f03aefc49f5aa1d67599be923eeb46ddfaf49b690f1c1","mathematical_subject":"Foundations.Unclassified","original_sha256":"7b047fa454455633f63f03aefc49f5aa1d67599be923eeb46ddfaf49b690f1c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/EffectiveArithmeticSource.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.NNReal.Defs
import Mathematics.Resolution.EffectivePresentation

/-!
# Effectively presented arithmetic sources

The source of an arithmetic-security coupling includes its encoding, oracle
interface, and resource model.  Bare arithmetic geometry is intentionally not
an admissible source object.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.UniformityModel.Variant7b047fa454455633f63f03aefc49f5aa1d67599be923eeb46ddfaf49b690f1c1

namespace Mathematics.Resolution

universe u v w x y z q

inductive UniformityModel
  | pointwise
  | finiteFamily
  | parameterUniform
  | asymptotic
  deriving DecidableEq, Repr

/-- Time, query, space, approximation, and advantage-loss policy. -/
structure EffectiveResourceModel where
  timeBudget : Nat → Nat
  queryBudget : Nat → Nat
  spaceBudget : Nat → Nat
  approximationBudget : Nat → ℝ≥0
  advantageLossBudget : Nat → ℝ≥0
  uniformity : UniformityModel

/--
`(X, ζ, Ω, Enc_X, Q_X, R_X)` with all presentation data in the source object.
-/
structure EffectiveArithmeticSource
    (Geometry : Type u) (Incidence : Type v) (Operator : Type w)
    (Point : Type x) (Domain : Type y)
    (QueryIndex : Type z) (QueryValue : Type q) where
  geometry : Geometry
  incidence : Incidence
  operator : Operator
  parameter : Nat
  encode : Point → Domain
  query : QueryIndex → Domain → QueryValue
  resources : EffectiveResourceModel

/--
An effective source morphism carries maps, exact presentation compatibility,
resource cost, approximation loss, and cryptographic advantage degradation.
-/
structure EffectiveArithmeticMorphism
    {Geometry : Type u} {Incidence : Type v} {Operator : Type w}
    {Point : Type x} {Domain : Type y}
    {QueryIndex : Type z} {QueryValue : Type q}
    (source target :
      EffectiveArithmeticSource
        Geometry Incidence Operator Point Domain QueryIndex QueryValue) where
  geometryMap : Geometry → Geometry
  incidenceMap : Incidence → Incidence
  operatorMap : Operator → Operator
  pointMap : Point → Point
  domainMap : Domain → Domain
  queryMap : QueryIndex → QueryIndex
  queryValueMap : QueryValue → QueryValue
  geometryExact : geometryMap source.geometry = target.geometry
  incidenceExact : incidenceMap source.incidence = target.incidence
  operatorExact : operatorMap source.operator = target.operator
  encodingNatural :
    ∀ point,
      domainMap (source.encode point) =
        target.encode (pointMap point)
  queryNatural :
    ∀ query domain,
      queryValueMap (source.query query domain) =
        target.query (queryMap query) (domainMap domain)
  cost : ResourceCost
  approximationLoss : ℝ≥0
  advantageLoss : ℝ≥0

namespace EffectiveArithmeticMorphism

variable
  {Geometry : Type u} {Incidence : Type v} {Operator : Type w}
  {Point : Type x} {Domain : Type y}
  {QueryIndex : Type z} {QueryValue : Type q}

def identity
    (source :
      EffectiveArithmeticSource
        Geometry Incidence Operator Point Domain QueryIndex QueryValue) :
    EffectiveArithmeticMorphism source source where
  geometryMap := id
  incidenceMap := id
  operatorMap := id
  pointMap := id
  domainMap := id
  queryMap := id
  queryValueMap := id
  geometryExact := rfl
  incidenceExact := rfl
  operatorExact := rfl
  encodingNatural := fun _ => rfl
  queryNatural := fun _ _ => rfl
  cost := .zero
  approximationLoss := 0
  advantageLoss := 0

def comp
    {firstSource middle target :
      EffectiveArithmeticSource
        Geometry Incidence Operator Point Domain QueryIndex QueryValue}
    (first : EffectiveArithmeticMorphism firstSource middle)
    (second : EffectiveArithmeticMorphism middle target) :
    EffectiveArithmeticMorphism firstSource target where
  geometryMap := second.geometryMap ∘ first.geometryMap
  incidenceMap := second.incidenceMap ∘ first.incidenceMap
  operatorMap := second.operatorMap ∘ first.operatorMap
  pointMap := second.pointMap ∘ first.pointMap
  domainMap := second.domainMap ∘ first.domainMap
  queryMap := second.queryMap ∘ first.queryMap
  queryValueMap := second.queryValueMap ∘ first.queryValueMap
  geometryExact := by
    exact (congrArg second.geometryMap first.geometryExact).trans
      second.geometryExact
  incidenceExact := by
    exact (congrArg second.incidenceMap first.incidenceExact).trans
      second.incidenceExact
  operatorExact := by
    exact (congrArg second.operatorMap first.operatorExact).trans
      second.operatorExact
  encodingNatural := by
    intro point
    exact
      (congrArg second.domainMap (first.encodingNatural point)).trans
        (second.encodingNatural (first.pointMap point))
  queryNatural := by
    intro query domain
    exact
      (congrArg second.queryValueMap
        (first.queryNatural query domain)).trans
        (second.queryNatural
          (first.queryMap query) (first.domainMap domain))
  cost := first.cost.sequential second.cost
  approximationLoss :=
    first.approximationLoss + second.approximationLoss
  advantageLoss :=
    first.advantageLoss + second.advantageLoss

@[simp]
theorem comp_cost
    {firstSource middle target :
      EffectiveArithmeticSource
        Geometry Incidence Operator Point Domain QueryIndex QueryValue}
    (first : EffectiveArithmeticMorphism firstSource middle)
    (second : EffectiveArithmeticMorphism middle target) :
    (first.comp second).cost =
      first.cost.sequential second.cost :=
  rfl

@[simp]
theorem comp_advantageLoss
    {firstSource middle target :
      EffectiveArithmeticSource
        Geometry Incidence Operator Point Domain QueryIndex QueryValue}
    (first : EffectiveArithmeticMorphism firstSource middle)
    (second : EffectiveArithmeticMorphism middle target) :
    (first.comp second).advantageLoss =
      first.advantageLoss + second.advantageLoss :=
  rfl

end EffectiveArithmeticMorphism

end Mathematics.Resolution
