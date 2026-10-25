# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReificationExactness.Variant0ffb9698edc309574d722d303aed384dfa0dccde6cff1da57b6690dc7772cdd9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `818e70ed5b2f894f983c0849a297e1567df4c735` · SHA-256 `221b49e7d2c683174c2a82a971ae3b241bae868b070da49bbca498497ab8ac4a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Quotation.Variantb89c21488cc667e5a55f53ea7427b3f55832995678d10ff343b5dcc490d78d59","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b89c21488cc667e5a55f53ea7427b3f55832995678d10ff343b5dcc490d78d59","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Quotation.Variantb89c21488cc667e5a55f53ea7427b3f55832995678d10ff343b5dcc490d78d59","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b89c21488cc667e5a55f53ea7427b3f55832995678d10ff343b5dcc490d78d59","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/N/cord/src/theory/CordTheory/ReificationExactness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import CordTheory.Coordination
import CordTheory.InterpreterExactness

/-!
# Causally exact reification

Quotation, representation, data refinement, and reification are separate typed
constructions.  A reification reference has a designated partial proxy map and
a partial dereference map.  Static reference exactness is inherited from the
quotient-compatible-map theory, while live reflective exactness additionally
requires correspondence between admitted aspect and proxy transitions.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Quotation.Variantb89c21488cc667e5a55f53ea7427b3f55832995678d10ff343b5dcc490d78d59

namespace Cord

universe u v w

/-! ## Typed separation of four constructions -/

/--
Quotation exposes form in a separately typed syntax carrier and binds the
authorized identities on both sides of that system boundary.
-/
structure Quotation (Content : Type u) (Syntax : Type v)
    [Setoid Content] [Setoid Syntax] where
  quote : Content → Syntax
  preservesForm : ∀ left right, left ≈ right ↔ quote left ≈ quote right

namespace Quotation

variable {Content : Type u} {Syntax : Type v}
  [Setoid Content] [Setoid Syntax]

/-- Quotation preserves and reflects the admitted form identity. -/
theorem quotation_preserves_form (quotation : Quotation Content Syntax)
    (left right : Content) :
    left ≈ right ↔ quotation.quote left ≈ quotation.quote right :=
  quotation.preservesForm left right

end Quotation

/-- A representation produces descriptive data without asserting liveness. -/
structure Representation (Subject : Type u) (Data : Type v) where
  represent : Subject → Data

/--
Data refinement relates concrete and abstract state-transition components. It
names both operation families and the total concrete-to-abstract operation
translation before carrying the per-operation feedback/simulation proof.
-/
structure DataRefinement
    (Abstract : Type u) (Concrete : Type v)
    (AbstractOperation ConcreteOperation : Type w) where
  retrieve : Concrete → Abstract → Prop
  abstractOperations : Set AbstractOperation
  concreteOperations : Set ConcreteOperation
  translate : ConcreteOperation → AbstractOperation
  translationDeclared : ∀ operation, operation ∈ concreteOperations →
    translate operation ∈ abstractOperations
  abstractStep : Abstract → AbstractOperation → Abstract → Prop
  concreteStep : Concrete → ConcreteOperation → Concrete → Prop
  simulatesOperation : ∀ (operation : ConcreteOperation),
    operation ∈ concreteOperations →
    ∀ {concreteSource concreteTarget abstractSource},
      retrieve concreteSource abstractSource →
      concreteStep concreteSource operation concreteTarget →
      ∃ abstractTarget,
        abstractStep abstractSource (translate operation) abstractTarget ∧
          retrieve concreteTarget abstractTarget

namespace DataRefinement

variable {Abstract : Type u} {Concrete : Type v}
  {AbstractOperation ConcreteOperation : Type w}

/-- Every declared concrete operation is simulated by its translated operation. -/
theorem refinement_preserves_operation
    (refinement : DataRefinement
      Abstract Concrete AbstractOperation ConcreteOperation)
    (operation : ConcreteOperation)
    (declared : operation ∈ refinement.concreteOperations)
    {concreteSource concreteTarget : Concrete} {abstractSource : Abstract}
    (related : refinement.retrieve concreteSource abstractSource)
    (transition : refinement.concreteStep
      concreteSource operation concreteTarget) :
    ∃ abstractTarget,
      refinement.abstractStep abstractSource
          (refinement.translate operation) abstractTarget ∧
        refinement.retrieve concreteTarget abstractTarget :=
  refinement.simulatesOperation operation declared related transition

end DataRefinement

/-! ## Partial reference reification -/

/--
A designated partial proxy map together with a partial dereference operation.
Every proxy produced by `rho` is dereferenceable back to its source aspect up
to the authorized aspect identity.  This is reference structure, not yet a
claim of causal liveness.
-/
structure ReificationReference
    (Aspect : Type u) (Proxy : Type v) [Setoid Aspect] [Setoid Proxy] where
  rho : QuotientCompatibleInterpreter Aspect Proxy
  delta : QuotientCompatibleInterpreter Proxy Aspect
  dereferenceDefined : ∀ aspect (defined : aspect ∈ rho.dom),
    rho.eval aspect defined ∈ delta.dom
  dereferenceAfterReification : ∀ aspect (defined : aspect ∈ rho.dom),
    delta.eval (rho.eval aspect defined) (dereferenceDefined aspect defined) ≈
      aspect
  reificationDefined : ∀ proxy (defined : proxy ∈ delta.dom),
    delta.eval proxy defined ∈ rho.dom
  reificationAfterDereference : ∀ proxy (defined : proxy ∈ delta.dom),
    rho.eval (delta.eval proxy defined) (reificationDefined proxy defined) ≈
      proxy

namespace ReificationReference

variable {Aspect : Type u} {Proxy : Type v}
  [Setoid Aspect] [Setoid Proxy]

/-- A proxy reifies an aspect when the designated maps connect them both ways. -/
def Reifies (reference : ReificationReference Aspect Proxy)
    (proxy : Proxy) (aspect : Aspect) : Prop :=
  ∃ (aspectDefined : aspect ∈ reference.rho.dom)
    (proxyDefined : proxy ∈ reference.delta.dom),
    reference.rho.eval aspect aspectDefined ≈ proxy ∧
      reference.delta.eval proxy proxyDefined ≈ aspect

/-- Static designated reference exactness covers both actual designated maps. -/
def ReferenceExact (reference : ReificationReference Aspect Proxy) : Prop :=
  LevelExact reference.rho ∧ LevelExact reference.delta

/-- The total designated quotient map supplied by reference exactness. -/
def quotientReify (reference : ReificationReference Aspect Proxy)
    (exactness : reference.ReferenceExact) :
    Quotient (inferInstance : Setoid Aspect) →
      Quotient (inferInstance : Setoid Proxy) :=
  reference.rho.totalQuotientInterpreter exactness.1.1

/-- The total designated dereference induced on authorized quotient classes. -/
def quotientDereference (reference : ReificationReference Aspect Proxy)
    (exactness : reference.ReferenceExact) :
    Quotient (inferInstance : Setoid Proxy) →
      Quotient (inferInstance : Setoid Aspect) :=
  reference.delta.totalQuotientInterpreter exactness.2.1

/-- Every designated output really is a proxy for its source aspect. -/
theorem rho_output_reifies
    (reference : ReificationReference Aspect Proxy)
    (aspect : Aspect) (defined : aspect ∈ reference.rho.dom) :
    reference.Reifies (reference.rho.eval aspect defined) aspect := by
  refine ⟨defined, reference.dereferenceDefined aspect defined, ?_, ?_⟩
  · exact Setoid.refl _
  · exact reference.dereferenceAfterReification aspect defined

/-- The designated quotient dereference is a left inverse to reification. -/
theorem dereference_after_reification
    (reference : ReificationReference Aspect Proxy)
    (exactness : reference.ReferenceExact) :
    Function.comp (reference.quotientDereference exactness)
        (reference.quotientReify exactness) = id := by
  funext quotientAspect
  refine Quotient.inductionOn quotientAspect ?_
  intro aspect
  apply Quotient.sound
  exact reference.dereferenceAfterReification aspect (exactness.1.1 aspect)

/-- The designated quotient reification is a left inverse to dereference. -/
theorem reification_after_dereference
    (reference : ReificationReference Aspect Proxy)
    (exactness : reference.ReferenceExact) :
    Function.comp (reference.quotientReify exactness)
        (reference.quotientDereference exactness) = id := by
  funext quotientProxy
  refine Quotient.inductionOn quotientProxy ?_
  intro proxy
  apply Quotient.sound
  exact reference.reificationAfterDereference proxy (exactness.2.1 proxy)

/-- Reference exactness is exactly emptiness of the static U/K/O defects. -/
theorem reference_exact_iff_defects_empty
    (reference : ReificationReference Aspect Proxy) :
    reference.ReferenceExact ↔
      (¬ Nonempty (UndefinedDefect reference.rho)) ∧
      (¬ Nonempty (CollisionDefect reference.rho)) ∧
      (¬ Nonempty (OmissionDefect reference.rho)) ∧
      (¬ Nonempty (UndefinedDefect reference.delta)) ∧
      (¬ Nonempty (CollisionDefect reference.delta)) ∧
      (¬ Nonempty (OmissionDefect reference.delta)) := by
  constructor
  · intro exactness
    have rhoDefects :=
      (level_exact_iff_defects_empty reference.rho).mp exactness.1
    have deltaDefects :=
      (level_exact_iff_defects_empty reference.delta).mp exactness.2
    exact ⟨rhoDefects.1, rhoDefects.2.1, rhoDefects.2.2,
      deltaDefects.1, deltaDefects.2.1, deltaDefects.2.2⟩
  · intro defects
    constructor
    · exact (level_exact_iff_defects_empty reference.rho).mpr
        ⟨defects.1, defects.2.1, defects.2.2.1⟩
    · exact (level_exact_iff_defects_empty reference.delta).mpr
        ⟨defects.2.2.2.1, defects.2.2.2.2.1,
          defects.2.2.2.2.2⟩

/-- A designated reference bijection implies equality of quotient capacities. -/
theorem reference_exactness_implies_capacity_parity
    (reference : ReificationReference Aspect Proxy)
    (exactness : reference.ReferenceExact) :
    CapacityParity reference.rho :=
  level_exact_implies_capacity_parity reference.rho exactness.1

end ReificationReference

/-! ## Quotient-level labeled transition systems -/

/-- A transition system whose states already respect authorized identity. -/
structure QuotientTransitionSystem
    (State : Type u) [Setoid State] (Label : Type w) where
  step : Quotient (inferInstance : Setoid State) → Label →
    Quotient (inferInstance : Setoid State) → Prop

/-- Translation of admitted aspect operations into authorized proxy operations. -/
structure AdmittedLabelTranslation (AspectLabel : Type u) (ProxyLabel : Type v) where
  qualification : RecordId
  qualificationPresent : qualification.value ≠ 0
  translate : AspectLabel → ProxyLabel
  admitted : Set AspectLabel
  injectiveOnAdmitted : ∀ {left right},
    left ∈ admitted → right ∈ admitted →
      translate left = translate right → left = right

/--
Ordinary proof-bearing authority bound to one exact proxy transition.  The
classification of a transition is deliberately absent: only the admitted CPCC
authorization plus its exact request, decision, receipt, snapshot, and digest
can inhabit this carrier.
-/
structure ProofBearingProxyTransitionAuthority
    (ProxyState : Type u) (ProxyLabel : Type v) where
  request : RecordId
  decision : RecordId
  receipt : ReceiptId
  governingSnapshot : SnapshotId
  contentDigest : ContentHash
  source : ProxyState
  label : ProxyLabel
  target : ProxyState
  ordinaryAuthorization : CoordinationMutationAuthorization
  requestPresent : request.value ≠ 0
  decisionPresent : decision.value ≠ 0
  receiptPresent : receipt.value ≠ 0
  governingSnapshotPresent : governingSnapshot.value ≠ 0
  contentDigestPresent : contentDigest.value ≠ ""

/-- Aspect changes are reflected by corresponding proxy changes. -/
def AspectToProxyCoherent
    {Aspect : Type u} {Proxy : Type v}
    [Setoid Aspect] [Setoid Proxy]
    {AspectLabel : Type w} {ProxyLabel : Type w}
    (reference : ReificationReference Aspect Proxy)
    (referenceExact : reference.ReferenceExact)
    (aspectSystem : QuotientTransitionSystem Aspect AspectLabel)
    (proxySystem : QuotientTransitionSystem Proxy ProxyLabel)
    (labels : AdmittedLabelTranslation AspectLabel ProxyLabel) : Prop :=
  ∀ {source target} (label : AspectLabel), label ∈ labels.admitted →
    aspectSystem.step source label target →
      proxySystem.step
        (reference.quotientReify referenceExact source)
        (labels.translate label)
        (reference.quotientReify referenceExact target)

/--
Every admitted transition from a designated proxy has an underlying aspect
transition and ends at the designated proxy for the resulting aspect.
-/
def ProxyToAspectCoherent
    {Aspect : Type u} {Proxy : Type v}
    [Setoid Aspect] [Setoid Proxy]
    {AspectLabel : Type w} {ProxyLabel : Type w}
    (reference : ReificationReference Aspect Proxy)
    (referenceExact : reference.ReferenceExact)
    (aspectSystem : QuotientTransitionSystem Aspect AspectLabel)
    (proxySystem : QuotientTransitionSystem Proxy ProxyLabel)
    (labels : AdmittedLabelTranslation AspectLabel ProxyLabel) : Prop :=
  ∀ (source : Quotient (inferInstance : Setoid Aspect))
      (label : AspectLabel)
      (proxyTarget : Quotient (inferInstance : Setoid Proxy)),
    label ∈ labels.admitted →
    proxySystem.step
        (reference.quotientReify referenceExact source)
        (labels.translate label) proxyTarget →
      ∃ authority : ProofBearingProxyTransitionAuthority
          (Quotient (inferInstance : Setoid Proxy)) ProxyLabel,
        authority.source = reference.quotientReify referenceExact source ∧
          authority.label = labels.translate label ∧
          authority.target = proxyTarget ∧
          ∃ aspectTarget,
            aspectSystem.step source label aspectTarget ∧
              proxyTarget = reference.quotientReify referenceExact aspectTarget

/--
The shared observer-visible boundary for live reification.  It identifies the
system state, translated inputs/outputs, and forward feedback law without
selecting an intervention authority mode.
-/
structure LiveReificationBoundary
    (Aspect : Type u) (Proxy : Type v)
    [Setoid Aspect] [Setoid Proxy]
    (AspectLabel : Type w) (ProxyLabel : Type w) where
  reference : ReificationReference Aspect Proxy
  referenceExact : reference.ReferenceExact
  aspectSystem : QuotientTransitionSystem Aspect AspectLabel
  proxySystem : QuotientTransitionSystem Proxy ProxyLabel
  labels : AdmittedLabelTranslation AspectLabel ProxyLabel
  aspectToProxy : AspectToProxyCoherent reference referenceExact
    aspectSystem proxySystem labels

/-- A current forward-coherent view with an explicitly closed intervention port. -/
structure ReadOnlyLiveReification
    (Aspect : Type u) (Proxy : Type v)
    [Setoid Aspect] [Setoid Proxy]
    (AspectLabel : Type w) (ProxyLabel : Type w)
    extends LiveReificationBoundary Aspect Proxy AspectLabel ProxyLabel where
  proxyIntervention :
    Quotient (inferInstance : Setoid Proxy) → ProxyLabel →
      Quotient (inferInstance : Setoid Proxy) → Prop
  noProxyToAspectIntervention : ∀ source label target,
    ¬ proxyIntervention source label target

/-- Bidirectionally causal exactness requires proof-bearing reverse feedback. -/
structure CausallyExactReification
    (Aspect : Type u) (Proxy : Type v)
    [Setoid Aspect] [Setoid Proxy]
    (AspectLabel : Type w) (ProxyLabel : Type w)
    extends LiveReificationBoundary Aspect Proxy AspectLabel ProxyLabel where
  proxyToAspect : ProxyToAspectCoherent reference referenceExact
    aspectSystem proxySystem labels

namespace CausallyExactReification

variable {Aspect : Type u} {Proxy : Type v}
  [Setoid Aspect] [Setoid Proxy]
  {AspectLabel : Type w} {ProxyLabel : Type w}

/-- Causal exactness contains designated reference exactness. -/
theorem causal_exactness_implies_reference_exactness
    (exactness : CausallyExactReification
      Aspect Proxy AspectLabel ProxyLabel) :
    exactness.reference.ReferenceExact :=
  exactness.referenceExact

/-- Hence causal exactness also implies quotient-capacity parity. -/
theorem causal_exactness_implies_capacity_parity
    (exactness : CausallyExactReification
      Aspect Proxy AspectLabel ProxyLabel) :
    CapacityParity exactness.reference.rho :=
  exactness.reference.reference_exactness_implies_capacity_parity
    exactness.referenceExact

end CausallyExactReification

/-! ## Natural causal exactness through a reflective tower -/

/--
A reflective tower skeleton contains only the addressable state families,
designated references, and adjacent lifts.  It carries no level-exactness or
all-level theorem, so it can safely serve as the input to genuine induction.
-/
structure StructuralReflectiveReificationTower
    (Aspect Proxy Syntax : Nat → Type u)
    (AspectLabel ProxyLabel : Nat → Type v) where
  aspectIdentity : ∀ level, Setoid (Aspect level)
  proxyIdentity : ∀ level, Setoid (Proxy level)
  reference : ∀ level,
    @ReificationReference
      (Aspect level) (Proxy (level + 1))
      (aspectIdentity level) (proxyIdentity (level + 1))
  aspectSystem : ∀ level,
    @QuotientTransitionSystem
      (Aspect level) (aspectIdentity level) (AspectLabel level)
  proxySystem : ∀ level,
    @QuotientTransitionSystem
      (Proxy (level + 1)) (proxyIdentity (level + 1)) (ProxyLabel (level + 1))
  labelTranslation : ∀ level,
    AdmittedLabelTranslation (AspectLabel level) (ProxyLabel (level + 1))
  aspectLift : ∀ level, Aspect level → Aspect (level + 1)
  proxyLift : ∀ level, Proxy (level + 1) → Proxy (level + 2)
  aspectLiftExtensional : ∀ level {left right},
    (aspectIdentity level).r left right →
      (aspectIdentity (level + 1)).r
        (aspectLift level left) (aspectLift level right)
  proxyLiftExtensional : ∀ level {left right},
    (proxyIdentity (level + 1)).r left right →
      (proxyIdentity (level + 2)).r
        (proxyLift level left) (proxyLift level right)
  quote : ∀ level, Aspect level → Syntax (level + 1)
  operativeInterpreter : ∀ level, Aspect level
  applicationDomain : ∀ level, Set (Aspect level)
  applyAspect : ∀ level (_interpreter input : Aspect level),
    input ∈ applicationDomain level → Aspect level
  applyProxy : ∀ level,
    Proxy (level + 1) → Syntax (level + 1) → Proxy (level + 1)

namespace StructuralReflectiveReificationTower

variable {Aspect Proxy Syntax : Nat → Type u}
  {AspectLabel ProxyLabel : Nat → Type v}

/--
The actual system obligations at one structural level.  The proposition is
derived from the tower's exact maps, transition systems, feedback directions,
adjacent lift, and application boundary; callers cannot replace it with a
Boolean or an unrelated finite observation.
-/
def LevelExactAt (tower : StructuralReflectiveReificationTower
    Aspect Proxy Syntax AspectLabel ProxyLabel) (level : Nat) : Prop := by
  letI : Setoid (Aspect level) := tower.aspectIdentity level
  letI : Setoid (Aspect (level + 1)) := tower.aspectIdentity (level + 1)
  letI : Setoid (Proxy (level + 1)) := tower.proxyIdentity (level + 1)
  letI : Setoid (Proxy (level + 2)) := tower.proxyIdentity (level + 2)
  exact ∃
      (currentExact : (tower.reference level).ReferenceExact)
      (successorExact : (tower.reference (level + 1)).ReferenceExact),
    AspectToProxyCoherent
        (tower.reference level) currentExact
        (tower.aspectSystem level) (tower.proxySystem level)
        (tower.labelTranslation level) ∧
      ProxyToAspectCoherent
        (tower.reference level) currentExact
        (tower.aspectSystem level) (tower.proxySystem level)
        (tower.labelTranslation level) ∧
      (∀ aspect,
        (tower.proxyIdentity (level + 2)).r
          ((tower.reference (level + 1)).rho.eval
            (tower.aspectLift level aspect)
            (successorExact.1.1 (tower.aspectLift level aspect)))
          (tower.proxyLift level
            ((tower.reference level).rho.eval aspect
              (currentExact.1.1 aspect)))) ∧
      (∀ input (defined : input ∈ tower.applicationDomain level),
        (tower.proxyIdentity (level + 1)).r
          (tower.applyProxy level
            ((tower.reference level).rho.eval
              (tower.operativeInterpreter level)
              (currentExact.1.1 (tower.operativeInterpreter level)))
            (tower.quote level input))
          ((tower.reference level).rho.eval
            (tower.applyAspect level
              (tower.operativeInterpreter level) input defined)
            (currentExact.1.1
              (tower.applyAspect level
                (tower.operativeInterpreter level) input defined))))

end StructuralReflectiveReificationTower

/--
An all-level tower of aspects and addressable proxies.  Reification is upward;
quotation targets a separate syntax family.  The tower carries exact reference
matching, both admitted causal directions, naturality under aspect/proxy lifts,
and a meta-circular application law at every finite level.
-/
structure ExactReflectiveReificationTower
    (Aspect Proxy Syntax : Nat → Type u)
    (AspectLabel ProxyLabel : Nat → Type v) where
  aspectIdentity : ∀ level, Setoid (Aspect level)
  proxyIdentity : ∀ level, Setoid (Proxy level)
  reference : ∀ level,
    @ReificationReference
      (Aspect level) (Proxy (level + 1))
      (aspectIdentity level) (proxyIdentity (level + 1))
  referenceExact : ∀ level,
    @ReificationReference.ReferenceExact
      (Aspect level) (Proxy (level + 1))
      (aspectIdentity level) (proxyIdentity (level + 1))
      (reference level)
  aspectSystem : ∀ level,
    @QuotientTransitionSystem
      (Aspect level) (aspectIdentity level) (AspectLabel level)
  proxySystem : ∀ level,
    @QuotientTransitionSystem
      (Proxy (level + 1)) (proxyIdentity (level + 1)) (ProxyLabel (level + 1))
  labelTranslation : ∀ level,
    AdmittedLabelTranslation (AspectLabel level) (ProxyLabel (level + 1))
  aspectToProxy : ∀ level,
    @AspectToProxyCoherent
      (Aspect level) (Proxy (level + 1))
      (aspectIdentity level) (proxyIdentity (level + 1))
      (AspectLabel level) (ProxyLabel (level + 1))
      (reference level) (referenceExact level)
      (aspectSystem level) (proxySystem level) (labelTranslation level)
  proxyToAspect : ∀ level,
    @ProxyToAspectCoherent
      (Aspect level) (Proxy (level + 1))
      (aspectIdentity level) (proxyIdentity (level + 1))
      (AspectLabel level) (ProxyLabel (level + 1))
      (reference level) (referenceExact level)
      (aspectSystem level) (proxySystem level) (labelTranslation level)
  aspectLift : ∀ level, Aspect level → Aspect (level + 1)
  proxyLift : ∀ level, Proxy (level + 1) → Proxy (level + 2)
  aspectLiftExtensional : ∀ level {left right},
    (aspectIdentity level).r left right →
      (aspectIdentity (level + 1)).r
        (aspectLift level left) (aspectLift level right)
  proxyLiftExtensional : ∀ level {left right},
    (proxyIdentity (level + 1)).r left right →
      (proxyIdentity (level + 2)).r
        (proxyLift level left) (proxyLift level right)
  reificationNaturality : ∀ level aspect,
    (proxyIdentity (level + 2)).r
      ((reference (level + 1)).rho.eval
        (aspectLift level aspect)
        ((referenceExact (level + 1)).1.1 (aspectLift level aspect)))
      (proxyLift level
        ((reference level).rho.eval aspect
          ((referenceExact level).1.1 aspect)))
  quote : ∀ level, Aspect level → Syntax (level + 1)
  operativeInterpreter : ∀ level, Aspect level
  applicationDomain : ∀ level, Set (Aspect level)
  applyAspect : ∀ level (_interpreter input : Aspect level),
    input ∈ applicationDomain level → Aspect level
  applyProxy : ∀ level,
    Proxy (level + 1) → Syntax (level + 1) → Proxy (level + 1)
  metaCircularApply : ∀ level input
      (defined : input ∈ applicationDomain level),
    (proxyIdentity (level + 1)).r
      (applyProxy level
        ((reference level).rho.eval (operativeInterpreter level)
          ((referenceExact level).1.1 (operativeInterpreter level)))
        (quote level input))
      ((reference level).rho.eval
        (applyAspect level (operativeInterpreter level) input defined)
        ((referenceExact level).1.1
          (applyAspect level (operativeInterpreter level) input defined)))

namespace ExactReflectiveReificationTower

variable {Aspect Proxy Syntax : Nat → Type u}
  {AspectLabel ProxyLabel : Nat → Type v}

/-- The designated proxy of an aspect at one tower level. -/
def reify (tower : ExactReflectiveReificationTower
    Aspect Proxy Syntax AspectLabel ProxyLabel)
    (level : Nat) (aspect : Aspect level) : Proxy (level + 1) := by
  let aspectIdentity := tower.aspectIdentity level
  let proxyIdentity := tower.proxyIdentity (level + 1)
  let reference := tower.reference level
  let exactness := tower.referenceExact level
  letI : Setoid (Aspect level) := aspectIdentity
  letI : Setoid (Proxy (level + 1)) := proxyIdentity
  exact reference.rho.eval aspect (exactness.1.1 aspect)

/-- The total designated reification induced on authorized quotient classes. -/
def quotientReify (tower : ExactReflectiveReificationTower
    Aspect Proxy Syntax AspectLabel ProxyLabel) (level : Nat) :
    Quotient (tower.aspectIdentity level) →
      Quotient (tower.proxyIdentity (level + 1)) := by
  let aspectIdentity := tower.aspectIdentity level
  let proxyIdentity := tower.proxyIdentity (level + 1)
  let reference := tower.reference level
  let exactness := tower.referenceExact level
  letI : Setoid (Aspect level) := aspectIdentity
  letI : Setoid (Proxy (level + 1)) := proxyIdentity
  exact reference.rho.totalQuotientInterpreter exactness.1.1

/-- The designated quotient reification is bijective, not an unrelated bijection. -/
theorem quotient_reify_bijective
    (tower : ExactReflectiveReificationTower
      Aspect Proxy Syntax AspectLabel ProxyLabel) (level : Nat) :
    Function.Bijective (quotientReify tower level) := by
  letI : Setoid (Aspect level) := tower.aspectIdentity level
  letI : Setoid (Proxy (level + 1)) := tower.proxyIdentity (level + 1)
  constructor
  · intro left right sameProxy
    refine Quotient.inductionOn₂ left right ?_ sameProxy
    intro leftAspect rightAspect sameProxy
    apply Quotient.sound
    apply (tower.referenceExact level).1.2.1
      leftAspect rightAspect
      ((tower.referenceExact level).1.1 leftAspect)
      ((tower.referenceExact level).1.1 rightAspect)
    change
      Quotient.mk (tower.proxyIdentity (level + 1))
          ((tower.reference level).rho.eval leftAspect
            ((tower.referenceExact level).1.1 leftAspect)) =
        Quotient.mk (tower.proxyIdentity (level + 1))
          ((tower.reference level).rho.eval rightAspect
            ((tower.referenceExact level).1.1 rightAspect)) at sameProxy
    exact Quotient.exact sameProxy
  · intro proxyClass
    refine Quotient.inductionOn proxyClass ?_
    intro proxy
    rcases (tower.referenceExact level).1.2.2 proxy with
      ⟨aspect, _defined, represented⟩
    refine ⟨Quotient.mk _ aspect, ?_⟩
    change
      Quotient.mk (tower.proxyIdentity (level + 1))
          ((tower.reference level).rho.eval aspect
            ((tower.referenceExact level).1.1 aspect)) =
        Quotient.mk (tower.proxyIdentity (level + 1)) proxy
    exact Quotient.sound represented

/-- The component equivalence whose forward map is the designated `rho`. -/
noncomputable def quotientReificationEquivalence
    (tower : ExactReflectiveReificationTower
      Aspect Proxy Syntax AspectLabel ProxyLabel) (level : Nat) :
    Quotient (tower.aspectIdentity level) ≃
      Quotient (tower.proxyIdentity (level + 1)) :=
  Equiv.ofBijective (quotientReify tower level)
    (quotient_reify_bijective tower level)

/-- The aspect lift induced on authorized quotient classes. -/
def quotientAspectLift (tower : ExactReflectiveReificationTower
    Aspect Proxy Syntax AspectLabel ProxyLabel) (level : Nat) :
    Quotient (tower.aspectIdentity level) →
      Quotient (tower.aspectIdentity (level + 1)) :=
  Quotient.lift
    (fun aspect => Quotient.mk _ (tower.aspectLift level aspect))
    (fun _left _right related =>
      Quotient.sound (tower.aspectLiftExtensional level related))

/-- The proxy lift induced on authorized quotient classes. -/
def quotientProxyLift (tower : ExactReflectiveReificationTower
    Aspect Proxy Syntax AspectLabel ProxyLabel) (level : Nat) :
    Quotient (tower.proxyIdentity (level + 1)) →
      Quotient (tower.proxyIdentity (level + 2)) :=
  Quotient.lift
    (fun proxy => Quotient.mk _ (tower.proxyLift level proxy))
    (fun _left _right related =>
      Quotient.sound (tower.proxyLiftExtensional level related))

/-- The designated reification maps form a commuting quotient naturality square. -/
theorem quotient_reification_naturality
    (tower : ExactReflectiveReificationTower
      Aspect Proxy Syntax AspectLabel ProxyLabel) (level : Nat) :
    Function.comp (quotientReify tower (level + 1))
        (quotientAspectLift tower level) =
      Function.comp (quotientProxyLift tower level)
        (quotientReify tower level) := by
  funext quotientAspect
  refine Quotient.inductionOn quotientAspect ?_
  intro aspect
  apply Quotient.sound
  exact tower.reificationNaturality level aspect

/-- Naturality of the designated reification map at one adjacent pair. -/
def NaturalAt (tower : ExactReflectiveReificationTower
    Aspect Proxy Syntax AspectLabel ProxyLabel) (level : Nat) : Prop :=
  ∀ aspect,
    (tower.proxyIdentity (level + 2)).r
      (tower.reify (level + 1) (tower.aspectLift level aspect))
      (tower.proxyLift level (tower.reify level aspect))

/-- The live, reified interpreter realizes lower-level application on quotations. -/
def MetaCircularAt (tower : ExactReflectiveReificationTower
    Aspect Proxy Syntax AspectLabel ProxyLabel) (level : Nat) : Prop :=
  ∀ input (defined : input ∈ tower.applicationDomain level),
    (tower.proxyIdentity (level + 1)).r
      (tower.applyProxy level
        (tower.reify level (tower.operativeInterpreter level))
        (tower.quote level input))
      (tower.reify level
        (tower.applyAspect level (tower.operativeInterpreter level) input defined))

/-- The complete objectwise obligations at a finite reflective level. -/
def ExactAt (tower : ExactReflectiveReificationTower
    Aspect Proxy Syntax AspectLabel ProxyLabel) (level : Nat) : Prop :=
  @ReificationReference.ReferenceExact
      (Aspect level) (Proxy (level + 1))
      (tower.aspectIdentity level) (tower.proxyIdentity (level + 1))
      (tower.reference level) ∧
    @AspectToProxyCoherent
      (Aspect level) (Proxy (level + 1))
      (tower.aspectIdentity level) (tower.proxyIdentity (level + 1))
      (AspectLabel level) (ProxyLabel (level + 1))
      (tower.reference level) (tower.referenceExact level)
      (tower.aspectSystem level) (tower.proxySystem level)
      (tower.labelTranslation level) ∧
    @ProxyToAspectCoherent
      (Aspect level) (Proxy (level + 1))
      (tower.aspectIdentity level) (tower.proxyIdentity (level + 1))
      (AspectLabel level) (ProxyLabel (level + 1))
      (tower.reference level) (tower.referenceExact level)
      (tower.aspectSystem level) (tower.proxySystem level)
      (tower.labelTranslation level) ∧
    tower.NaturalAt level ∧ tower.MetaCircularAt level

/-- The tower fields establish exact reflective reification at each finite level. -/
theorem exact_at (tower : ExactReflectiveReificationTower
    Aspect Proxy Syntax AspectLabel ProxyLabel) (level : Nat) :
    tower.ExactAt level := by
  refine ⟨tower.referenceExact level, tower.aspectToProxy level,
    tower.proxyToAspect level, ?_, ?_⟩
  · simpa [NaturalAt, reify] using tower.reificationNaturality level
  · simpa [MetaCircularAt, reify] using tower.metaCircularApply level

/-- Exact reflective reification is certified at every `Nat`-indexed level. -/
theorem all_levels_exact (tower : ExactReflectiveReificationTower
    Aspect Proxy Syntax AspectLabel ProxyLabel) :
    ∀ level, tower.ExactAt level :=
  tower.exact_at

/-- Quotient-capacity parity for one adjacent aspect/proxy level. -/
def CapacityParityAt (tower : ExactReflectiveReificationTower
    Aspect Proxy Syntax AspectLabel ProxyLabel) (level : Nat) : Prop := by
  let aspectIdentity := tower.aspectIdentity level
  let proxyIdentity := tower.proxyIdentity (level + 1)
  let reference := tower.reference level
  letI : Setoid (Aspect level) := aspectIdentity
  letI : Setoid (Proxy (level + 1)) := proxyIdentity
  exact CapacityParity reference.rho

/-- Every exact tower level has equal authorized aspect/proxy capacity. -/
theorem level_capacity_parity (tower : ExactReflectiveReificationTower
    Aspect Proxy Syntax AspectLabel ProxyLabel) (level : Nat) :
    tower.CapacityParityAt level := by
  let aspectIdentity := tower.aspectIdentity level
  let proxyIdentity := tower.proxyIdentity (level + 1)
  let reference := tower.reference level
  let exactness := tower.referenceExact level
  letI : Setoid (Aspect level) := aspectIdentity
  letI : Setoid (Proxy (level + 1)) := proxyIdentity
  simpa [CapacityParityAt] using
    reference.reference_exactness_implies_capacity_parity exactness

/-- Objectwise capacity parity follows at all levels, but is only a shadow. -/
theorem all_levels_capacity_parity (tower : ExactReflectiveReificationTower
    Aspect Proxy Syntax AspectLabel ProxyLabel) :
    ∀ level, tower.CapacityParityAt level :=
  tower.level_capacity_parity

/--
A base case and successor invariant prove a level predicate throughout a
structural tower.  No already-exact or finite-prefix tower is accepted.
-/
theorem all_levels_exact_of_induction
    (tower : StructuralReflectiveReificationTower
      Aspect Proxy Syntax AspectLabel ProxyLabel)
    (base : tower.LevelExactAt 0)
    (successor : ∀ level,
      tower.LevelExactAt level → tower.LevelExactAt (level + 1)) :
    ∀ level, tower.LevelExactAt level := by
  intro level
  induction level with
  | zero => exact base
  | succ level inductionHypothesis =>
      simpa [Nat.succ_eq_add_one] using successor level inductionHypothesis

end ExactReflectiveReificationTower

/-! ## A static reference bijection need not be causal -/

section StaticNoncausalCounterexample

local instance boolIdentity : Setoid Bool := equalitySetoid Bool

private def booleanIdentityInterpreter :
    QuotientCompatibleInterpreter Bool Bool where
  dom := Set.univ
  eval := fun input _defined => input
  domainSaturated := by
    intro left right _related
    constructor <;> intro _ <;> exact Set.mem_univ _
  extensional := by
    intro _left _right _ _ related
    exact related

private def booleanReference : ReificationReference Bool Bool where
  rho := booleanIdentityInterpreter
  delta := booleanIdentityInterpreter
  dereferenceDefined := by
    intro aspect _defined
    exact Set.mem_univ aspect
  dereferenceAfterReification := by
    intro _aspect _defined
    rfl
  reificationDefined := by
    intro proxy _defined
    exact Set.mem_univ proxy
  reificationAfterDereference := by
    intro _proxy _defined
    rfl

private theorem booleanIdentityInterpreterExact :
    LevelExact booleanIdentityInterpreter := by
  refine ⟨?_, ?_, ?_⟩
  · intro input
    exact Set.mem_univ input
  · intro _left _right _ _ sameOutput
    exact sameOutput
  · intro output
    exact ⟨output, Set.mem_univ output, rfl⟩

private theorem booleanReferenceExact : booleanReference.ReferenceExact :=
  ⟨booleanIdentityInterpreterExact, booleanIdentityInterpreterExact⟩

private def changingAspectSystem : QuotientTransitionSystem Bool PUnit where
  step := fun source _label target =>
    source = Quotient.mk _ false ∧ target = Quotient.mk _ true

private def staticProxySystem : QuotientTransitionSystem Bool PUnit where
  step := fun _source _label _target => False

private def allUnitLabels : AdmittedLabelTranslation PUnit PUnit where
  qualification := ⟨1⟩
  qualificationPresent := by decide
  translate := id
  admitted := Set.univ
  injectiveOnAdmitted := by
    intro left right _ _ _same
    cases left
    cases right
    rfl

/-- Even a total static identity registry can fail live aspect-to-proxy coherence. -/
theorem static_reference_exact_does_not_imply_causal_coherence :
    ∃ (reference : ReificationReference Bool Bool)
      (exactness : reference.ReferenceExact),
      ¬ AspectToProxyCoherent reference exactness
        changingAspectSystem staticProxySystem allUnitLabels := by
  refine ⟨booleanReference, booleanReferenceExact, ?_⟩
  intro coherent
  have proxyStep := coherent (source := Quotient.mk _ false)
    (target := Quotient.mk _ true) PUnit.unit (Set.mem_univ _)
    ⟨rfl, rfl⟩
  exact proxyStep

end StaticNoncausalCounterexample

/-! ## Relationship occurrences and statement proxies -/

/--
Exact reification of relation occurrences with explicit role projections.
`Occurrence` is intentionally not identified with an extensional role tuple.
-/
structure RelationshipOccurrenceReification
    (Occurrence : Type u) (ProxyEntity : Type v)
    [Setoid Occurrence] [Setoid ProxyEntity]
    (Role : Type w) (RoleValue : Role → Type u) where
  reference : ReificationReference Occurrence ProxyEntity
  referenceExact : reference.ReferenceExact
  addressedOccurrence : Occurrence
  addressableProxy : ProxyEntity
  addressable : reference.Reifies addressableProxy addressedOccurrence
  occurrenceRole : (role : Role) → Occurrence → RoleValue role
  proxyRole : (role : Role) → ProxyEntity → RoleValue role
  proxyRoleExtensional : ∀ (role : Role) {left right},
    left ≈ right → proxyRole role left = proxyRole role right
  reconstructRole : ∀ (role : Role) (occurrence : Occurrence)
      (defined : occurrence ∈ reference.rho.dom),
    proxyRole role (reference.rho.eval occurrence defined) =
      occurrenceRole role occurrence

namespace RelationshipOccurrenceReification

variable {Occurrence : Type u} {ProxyEntity : Type v}
  [Setoid Occurrence] [Setoid ProxyEntity]
  {Role : Type w} {RoleValue : Role → Type u}

/-- Every role is recovered from the proxy of its relation occurrence. -/
theorem role_reconstruction
    (reification : RelationshipOccurrenceReification
      Occurrence ProxyEntity Role RoleValue)
    (role : Role) :
    reification.proxyRole role reification.addressableProxy =
      reification.occurrenceRole role reification.addressedOccurrence := by
  rcases reification.addressable with
    ⟨defined, _proxyDefined, reified, _dereferenced⟩
  calc
    reification.proxyRole role reification.addressableProxy =
        reification.proxyRole role
          (reification.reference.rho.eval
            reification.addressedOccurrence defined) :=
      reification.proxyRoleExtensional role (Setoid.symm reified)
    _ = reification.occurrenceRole role reification.addressedOccurrence :=
      reification.reconstructRole role reification.addressedOccurrence defined

end RelationshipOccurrenceReification

/-- Assertion state is independent of the existence of a statement proxy. -/
inductive StatementAssertionStatus
  | merelyDescribed
  | asserted
  | denied
  | hypothetical
  | quoted
  | queried
  deriving DecidableEq, Repr, Inhabited

/--
A first-class, addressable statement proxy with its exact rho/delta reference,
observer context, provenance, and separately typed assertion status.
-/
structure StatementReification (Statement : Type u) (Proxy : Type v)
    [Setoid Statement] [Setoid Proxy] where
  reference : ReificationReference Statement Proxy
  referenceExact : reference.ReferenceExact
  statement : Statement
  proxy : Proxy
  addressable : reference.Reifies proxy statement
  context : RecordId
  provenance : RecordId
  contextPresent : context.value ≠ 0
  provenancePresent : provenance.value ≠ 0
  assertionStatus : StatementAssertionStatus

namespace StatementReification

variable {Statement : Type u} {Proxy : Type v}
  [Setoid Statement] [Setoid Proxy]

def ReifiesStatement (reification : StatementReification Statement Proxy)
    (proxy : Proxy) (statement : Statement) : Prop :=
  reification.reference.Reifies proxy statement

def IsAsserted (reification : StatementReification Statement Proxy) : Prop :=
  reification.assertionStatus = .asserted

section StatementCounterexample

local instance statementBoolIdentity : Setoid Bool := equalitySetoid Bool

private def describedFalseStatement : StatementReification Bool Bool where
  reference := booleanReference
  referenceExact := booleanReferenceExact
  statement := false
  proxy := false
  addressable := booleanReference.rho_output_reifies false (Set.mem_univ false)
  context := ⟨1⟩
  provenance := ⟨1⟩
  contextPresent := by decide
  provenancePresent := by decide
  assertionStatus := .merelyDescribed

/-- Constructing a statement proxy neither asserts it nor makes false content hold. -/
theorem statement_reification_does_not_imply_assertion :
    ∃ (reification : StatementReification Bool Bool)
      (proxy : Bool) (statement : Bool),
      reification.ReifiesStatement proxy statement ∧
        ¬ reification.IsAsserted ∧ statement ≠ true := by
  refine ⟨describedFalseStatement, false, false,
    describedFalseStatement.addressable, ?_, by decide⟩
  simp [IsAsserted, describedFalseStatement]

end StatementCounterexample

end StatementReification

end Cord
```
