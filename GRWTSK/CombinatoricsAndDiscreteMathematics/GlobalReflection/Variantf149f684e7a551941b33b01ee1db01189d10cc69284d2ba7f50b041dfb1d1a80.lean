-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.DevelopmentSurface.Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.DevelopmentSurface.Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/N/cord/src/theory/CordTheory/GlobalReflection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import CordTheory.HardwareCorrespondence
import CordTheory.InterpreterExactness

/-!
# Host-bounded bidirectional global reflection

This module formalizes a versioned architecture in which changes propagate over
typed, bidirectional artifact dependencies.  In particular, a change at a
right-hand location produces an inspectable impact obligation at the related
left-hand location; propagation never silently mutates that location.

The two admitted refinement lanes are ontology → Rust source → Lean proof and
memory → compute.  A refinement certificate retains target-relative accuracy,
strictly increases declared precision, and carries explicit evidence.  These
are conditional certificate fields, not claims that every translation has the
properties.

"Global" means complete over one explicitly materialized finite graph.  The
graph and reflection rounds must fit a pinned human-host capability profile.
Agent supervision, agreement, evidence, and reflection cannot mint authority:
all produced work remains candidate-only, non-mutating, finitely bounded, and
residual-producing when no lawful correction exists.  Nothing here specifies
an unbounded evaluator or self-authorizing reflective tower.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DevelopmentSurface.Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6

namespace Cord

/-- Stable identifier for the bounded global-reflection theory. -/
def globalReflectionTheoryIdentifier : String := "CORD-GLOBAL-REFLECTION-1"

/-- Version of the bounded global-reflection theory. -/
def globalReflectionTheoryVersion : String := "0.3.0-rc.3"

/-! ## Development, formal-projection, and support surfaces -/

/-- The three semantic development surfaces assessed for equilibrium. -/
inductive DevelopmentSurface
  | ontology
  | specification
  | source
  deriving DecidableEq, Repr, Inhabited, Fintype

namespace DevelopmentSurface

def all : Finset DevelopmentSurface := Finset.univ

theorem card_all : all.card = 3 := by
  decide

/-- Specification participates in equilibrium as a development surface. -/
theorem specification_in_equilibrium :
    DevelopmentSurface.specification ∈ all := by
  simp [all]

end DevelopmentSurface

/-- Lean is a proof projection of the development surfaces, not a fourth source surface. -/
inductive FormalProjection
  | leanProof
  deriving DecidableEq, Repr, Inhabited, Fintype

/-- Evidence and execution resources support comparison without becoming semantic surfaces. -/
inductive SupportSurface
  | evidence
  | memory
  | compute
  deriving DecidableEq, Repr, Inhabited, Fintype

/-- A tagged carrier prevents development, proof, and support roles from being conflated. -/
inductive EquilibriumSurfaceRole
  | development (surface : DevelopmentSurface)
  | formalProjection (projection : FormalProjection)
  | support (surface : SupportSurface)
  deriving DecidableEq, Repr

namespace EquilibriumSurfaceRole

def IsDevelopment : EquilibriumSurfaceRole → Prop
  | .development _ => True
  | .formalProjection _ | .support _ => False

theorem specification_is_development :
    IsDevelopment (.development .specification) := by
  trivial

theorem formal_projection_is_not_development (projection : FormalProjection) :
    ¬ IsDevelopment (.formalProjection projection) := by
  simp [IsDevelopment]

theorem support_is_not_development (surface : SupportSurface) :
    ¬ IsDevelopment (.support surface) := by
  simp [IsDevelopment]

end EquilibriumSurfaceRole

/-! ## Conditional three-surface interpreter equilibrium -/

universe w

/--
Level-indexed carriers and authorized identity policies for the three
development surfaces.  The semantic lift is evidence used by the naturality
squares; this schema does not assert that the current repository supplies such
a family.
-/
structure DevelopmentSurfaceFamily where
  Carrier : DevelopmentSurface → Nat → Type w
  identity : ∀ surface level, Setoid (Carrier surface level)
  semanticLift : ∀ surface level,
    Carrier surface level → Carrier surface (level + 1)
  semanticLiftExtensional : ∀ surface level {left right},
    (identity surface level).r left right →
      (identity surface (level + 1)).r
        (semanticLift surface level left)
        (semanticLift surface level right)

/-- Install each declared surface identity as the canonical local quotient policy. -/
instance DevelopmentSurfaceFamily.carrierSetoid
    (family : DevelopmentSurfaceFamily)
    (surface : DevelopmentSurface) (level : Nat) :
    Setoid (family.Carrier surface level) :=
  family.identity surface level

/-- The declared grades of a same-level surface map and its next-level code. -/
structure DirectedDevelopmentGradePolicy where
  sourceInputGrade : Nat → Nat
  targetOutputGrade : Nat → Nat
  interpreterCodeGrade : Nat → Nat
  interpreterRepresentationGrade : Nat → Nat

/--
One directed interpretation between two development surfaces at one level.
The designated map is quotient-compatible and effectively exact.  The tower
below supplies and interprets its next-level representation.  A raw
representative section is required only if raw regeneration is claimed.
-/
structure DirectedDevelopmentInterpreter
    (family : DevelopmentSurfaceFamily)
    (fromSurface toSurface : DevelopmentSurface) (level : Nat) where
  interpreter :
    @QuotientCompatibleInterpreter
      (family.Carrier fromSurface level) (family.Carrier toSurface level)
      (family.identity fromSurface level) (family.identity toSurface level)
  reflectiveExact :
    @ReflectivelyCertifiedExact
      (family.Carrier fromSurface level) (family.Carrier toSurface level)
      (family.identity fromSurface level) (family.identity toSurface level)
      interpreter
  rawRegenerationClaimed : Prop
  canonicalRepresentativeSection : rawRegenerationClaimed →
    @CanonicalRepresentativeSection
      (family.Carrier fromSurface level)
      (family.identity fromSurface level)

namespace DirectedDevelopmentInterpreter

def Exact
    {family : DevelopmentSurfaceFamily}
    {fromSurface toSurface : DevelopmentSurface} {level : Nat}
    (directed : DirectedDevelopmentInterpreter family fromSurface toSurface level) : Prop :=
  @LevelExact
    (family.Carrier fromSurface level) (family.Carrier toSurface level)
    (family.identity fromSurface level) (family.identity toSurface level)
    directed.interpreter

/-- Effective exactness explicitly includes the supplied two-sided quotient inverse. -/
def EffectivelyExact
    {family : DevelopmentSurfaceFamily}
    {fromSurface toSurface : DevelopmentSurface} {level : Nat}
    (directed : DirectedDevelopmentInterpreter family fromSurface toSurface level) : Prop :=
  Nonempty (@EffectiveExact
    (family.Carrier fromSurface level) (family.Carrier toSurface level)
    (family.identity fromSurface level) (family.identity toSurface level)
    directed.interpreter)

/-- The level certificate has no undisclosed blocking residual. -/
def NoBlockingResidual
    {family : DevelopmentSurfaceFamily}
    {fromSurface toSurface : DevelopmentSurface} {level : Nat}
    (directed : DirectedDevelopmentInterpreter family fromSurface toSurface level) : Prop :=
  ∀ residual, ¬ directed.reflectiveExact.blockingResidual residual

/--
If raw regeneration is claimed, a canonical source representative is supplied
and representative readback projects to the effective inverse's quotient class.
-/
def RawRegenerationSupported
    {family : DevelopmentSurfaceFamily}
    {fromSurface toSurface : DevelopmentSurface} {level : Nat}
    (directed : DirectedDevelopmentInterpreter family fromSurface toSurface level) : Prop :=
  directed.rawRegenerationClaimed →
    ∃ representatives : @CanonicalRepresentativeSection
        (family.Carrier fromSurface level)
        (family.identity fromSurface level),
      ∀ output : Quotient (family.identity toSurface level),
        Quotient.mk (family.identity fromSurface level)
            (directed.reflectiveExact.effectiveExact.representativeReadback
              representatives output) =
          directed.reflectiveExact.effectiveExact.effectiveInverse.inverse output

/-- Reflective certification contains level exactness, not merely carrier parity. -/
theorem certified_exact
    {family : DevelopmentSurfaceFamily}
    {fromSurface toSurface : DevelopmentSurface} {level : Nat}
    (directed : DirectedDevelopmentInterpreter family fromSurface toSurface level) :
    directed.Exact :=
  directed.reflectiveExact.effectiveExact.levelExact

/-- Reflective certification also supplies the constructive quotient inverse. -/
theorem certified_effectively_exact
    {family : DevelopmentSurfaceFamily}
    {fromSurface toSurface : DevelopmentSurface} {level : Nat}
    (directed : DirectedDevelopmentInterpreter family fromSurface toSurface level) :
    directed.EffectivelyExact :=
  ⟨directed.reflectiveExact.effectiveExact⟩

/-- Blocking residual freedom is inherited from the reflective certificate. -/
theorem no_blocking_residual
    {family : DevelopmentSurfaceFamily}
    {fromSurface toSurface : DevelopmentSurface} {level : Nat}
    (directed : DirectedDevelopmentInterpreter family fromSurface toSurface level) :
    directed.NoBlockingResidual :=
  directed.reflectiveExact.noBlockingResidual

/-- A raw-regeneration claim carries both its section and projection law. -/
theorem raw_regeneration_supported
    {family : DevelopmentSurfaceFamily}
    {fromSurface toSurface : DevelopmentSurface} {level : Nat}
    (directed : DirectedDevelopmentInterpreter family fromSurface toSurface level) :
    directed.RawRegenerationSupported := by
  intro claimed
  let representatives := directed.canonicalRepresentativeSection claimed
  refine ⟨representatives, ?_⟩
  intro output
  exact directed.reflectiveExact.effectiveExact.representative_readback_projects_to_inverse_class
    representatives output

end DirectedDevelopmentInterpreter

/--
An all-level directed family.  The reflective certificate's naturality and
grade propositions are identified with concrete commuting and index equations;
they therefore cannot be discharged by unrelated propositions.
-/
structure DirectedDevelopmentInterpreterTower
    (family : DevelopmentSurfaceFamily)
    (fromSurface toSurface : DevelopmentSurface) where
  atLevel : ∀ level,
    DirectedDevelopmentInterpreter family fromSurface toSurface level
  gradePolicy : DirectedDevelopmentGradePolicy
  interpreterRepresentationCode : ∀ level,
    family.Carrier fromSurface (level + 1)
  interpreterRepresentationCodeDefined : ∀ level,
    interpreterRepresentationCode level ∈
      (atLevel (level + 1)).interpreter.dom
  interpretedInterpreterRepresentation : ∀ level,
    family.Carrier toSurface (level + 1)
  applyInterpretedRepresentation : ∀ level,
    family.Carrier toSurface (level + 1) →
      ∀ input, input ∈ (atLevel level).interpreter.dom →
        family.Carrier toSurface level
  interpreterApplicationExtensional : ∀ level
      {leftRepresentation rightRepresentation leftInput rightInput}
      (leftDefined : leftInput ∈ (atLevel level).interpreter.dom)
      (rightDefined : rightInput ∈ (atLevel level).interpreter.dom),
    (family.identity toSurface (level + 1)).r
        leftRepresentation rightRepresentation →
    (family.identity fromSurface level).r leftInput rightInput →
      (family.identity toSurface level).r
        (applyInterpretedRepresentation level
          leftRepresentation leftInput leftDefined)
        (applyInterpretedRepresentation level
          rightRepresentation rightInput rightDefined)
  liftedInputDefined : ∀ level input
      (_defined : input ∈ (atLevel level).interpreter.dom),
    family.semanticLift fromSurface level input ∈
      (atLevel (level + 1)).interpreter.dom
  naturalityCharacterization : ∀ level,
    (atLevel level).reflectiveExact.naturality ↔
      ∀ input (defined : input ∈ (atLevel level).interpreter.dom),
        (family.identity toSurface (level + 1)).r
          ((atLevel (level + 1)).interpreter.eval
            (family.semanticLift fromSurface level input)
            (liftedInputDefined level input defined))
          (family.semanticLift toSurface level
            ((atLevel level).interpreter.eval input defined))
  metaCircularRealizationCharacterization : ∀ level,
    (atLevel level).reflectiveExact.representedInterpreterRealization ↔
      (family.identity toSurface (level + 1)).r
          ((atLevel (level + 1)).interpreter.eval
            (interpreterRepresentationCode level)
            (interpreterRepresentationCodeDefined level))
          (interpretedInterpreterRepresentation level) ∧
        ∀ input (defined : input ∈ (atLevel level).interpreter.dom),
          (family.identity toSurface level).r
            (applyInterpretedRepresentation level
              (interpretedInterpreterRepresentation level) input defined)
            ((atLevel level).interpreter.eval input defined)
  gradePreservationCharacterization : ∀ level,
    (atLevel level).reflectiveExact.gradePreservation ↔
      gradePolicy.sourceInputGrade level = level ∧
      gradePolicy.targetOutputGrade level = level ∧
      gradePolicy.interpreterCodeGrade level = level + 1 ∧
      gradePolicy.interpreterRepresentationGrade level = level + 1

namespace DirectedDevelopmentInterpreterTower

def NaturalAt
    {family : DevelopmentSurfaceFamily}
    {fromSurface toSurface : DevelopmentSurface}
    (tower : DirectedDevelopmentInterpreterTower family fromSurface toSurface)
    (level : Nat) : Prop :=
  ∀ input (defined : input ∈ (tower.atLevel level).interpreter.dom),
    (family.identity toSurface (level + 1)).r
      ((tower.atLevel (level + 1)).interpreter.eval
        (family.semanticLift fromSurface level input)
        (tower.liftedInputDefined level input defined))
      (family.semanticLift toSurface level
        ((tower.atLevel level).interpreter.eval input defined))

def GradePreservedAt
    {family : DevelopmentSurfaceFamily}
    {fromSurface toSurface : DevelopmentSurface}
    (tower : DirectedDevelopmentInterpreterTower family fromSurface toSurface)
    (level : Nat) : Prop :=
  tower.gradePolicy.sourceInputGrade level = level ∧
    tower.gradePolicy.targetOutputGrade level = level ∧
    tower.gradePolicy.interpreterCodeGrade level = level + 1 ∧
    tower.gradePolicy.interpreterRepresentationGrade level = level + 1

/--
The level-`n + 1` directed interpreter interprets representation code, and the
resulting next-level representation applies as the level-`n` designated map.
-/
def MetaCircularAt
    {family : DevelopmentSurfaceFamily}
    {fromSurface toSurface : DevelopmentSurface}
    (tower : DirectedDevelopmentInterpreterTower family fromSurface toSurface)
    (level : Nat) : Prop :=
  (family.identity toSurface (level + 1)).r
      ((tower.atLevel (level + 1)).interpreter.eval
        (tower.interpreterRepresentationCode level)
        (tower.interpreterRepresentationCodeDefined level))
      (tower.interpretedInterpreterRepresentation level) ∧
    ∀ input (defined : input ∈ (tower.atLevel level).interpreter.dom),
      (family.identity toSurface level).r
        (tower.applyInterpretedRepresentation level
          (tower.interpretedInterpreterRepresentation level) input defined)
        ((tower.atLevel level).interpreter.eval input defined)

theorem natural_at
    {family : DevelopmentSurfaceFamily}
    {fromSurface toSurface : DevelopmentSurface}
    (tower : DirectedDevelopmentInterpreterTower family fromSurface toSurface)
    (level : Nat) : tower.NaturalAt level :=
  (tower.naturalityCharacterization level).mp
    (tower.atLevel level).reflectiveExact.naturalityEvidence

theorem grade_preserved_at
    {family : DevelopmentSurfaceFamily}
    {fromSurface toSurface : DevelopmentSurface}
    (tower : DirectedDevelopmentInterpreterTower family fromSurface toSurface)
    (level : Nat) : tower.GradePreservedAt level :=
  (tower.gradePreservationCharacterization level).mp
    (tower.atLevel level).reflectiveExact.gradePreservationEvidence

/-- The concrete two-stage next-level interpretation/application law. -/
theorem meta_circular_at
    {family : DevelopmentSurfaceFamily}
    {fromSurface toSurface : DevelopmentSurface}
    (tower : DirectedDevelopmentInterpreterTower family fromSurface toSurface)
    (level : Nat) : tower.MetaCircularAt level :=
  (tower.metaCircularRealizationCharacterization level).mp
    (tower.atLevel level).reflectiveExact.representedInterpreterRealizationEvidence

end DirectedDevelopmentInterpreterTower

/-- The only immediate semantic edges admitted by the CORD three-surface cycle. -/
inductive ThreeSurfaceEquilibriumEdge :
    DevelopmentSurface → DevelopmentSurface → Prop
  | ontologyToSpecification :
      ThreeSurfaceEquilibriumEdge .ontology .specification
  | specificationToSource :
      ThreeSurfaceEquilibriumEdge .specification .source
  | sourceToOntology :
      ThreeSurfaceEquilibriumEdge .source .ontology

/-- There is no direct ontology-to-source equilibrium edge. -/
theorem no_direct_ontology_to_source_equilibrium :
    ¬ ThreeSurfaceEquilibriumEdge .ontology .source := by
  intro edge
  cases edge

/-- Every admitted two-step ontology-to-source route has specification in the middle. -/
theorem ontology_to_source_requires_specification
    {middle : DevelopmentSurface}
    (_first : ThreeSurfaceEquilibriumEdge .ontology middle)
    (_second : ThreeSurfaceEquilibriumEdge middle .source) :
    middle = .specification := by
  cases _first
  rfl

/--
Conditional all-level CORD equilibrium schema.  A value must supply three
different exact interpreter towers and every obligation below; no value for
the current repository is constructed in this module.
-/
structure CordThreeSurfaceEquilibriumTower
    (family : DevelopmentSurfaceFamily) where
  ontologyToSpecification :
    DirectedDevelopmentInterpreterTower family .ontology .specification
  specificationToSource :
    DirectedDevelopmentInterpreterTower family .specification .source
  sourceToOntology :
    DirectedDevelopmentInterpreterTower family .source .ontology

namespace CordThreeSurfaceEquilibriumTower

def ExactAt (tower : CordThreeSurfaceEquilibriumTower family)
    (level : Nat) : Prop :=
  (tower.ontologyToSpecification.atLevel level).Exact ∧
    (tower.specificationToSource.atLevel level).Exact ∧
    (tower.sourceToOntology.atLevel level).Exact

def EffectivelyExactAt (tower : CordThreeSurfaceEquilibriumTower family)
    (level : Nat) : Prop :=
  (tower.ontologyToSpecification.atLevel level).EffectivelyExact ∧
    (tower.specificationToSource.atLevel level).EffectivelyExact ∧
    (tower.sourceToOntology.atLevel level).EffectivelyExact

def GradePreservedAt (tower : CordThreeSurfaceEquilibriumTower family)
    (level : Nat) : Prop :=
  tower.ontologyToSpecification.GradePreservedAt level ∧
    tower.specificationToSource.GradePreservedAt level ∧
    tower.sourceToOntology.GradePreservedAt level

def NaturalAt (tower : CordThreeSurfaceEquilibriumTower family)
    (level : Nat) : Prop :=
  tower.ontologyToSpecification.NaturalAt level ∧
    tower.specificationToSource.NaturalAt level ∧
    tower.sourceToOntology.NaturalAt level

def MetaCircularAt (tower : CordThreeSurfaceEquilibriumTower family)
    (level : Nat) : Prop :=
  tower.ontologyToSpecification.MetaCircularAt level ∧
    tower.specificationToSource.MetaCircularAt level ∧
    tower.sourceToOntology.MetaCircularAt level

def RawRegenerationAt (tower : CordThreeSurfaceEquilibriumTower family)
    (level : Nat) : Prop :=
  (tower.ontologyToSpecification.atLevel level).RawRegenerationSupported ∧
    (tower.specificationToSource.atLevel level).RawRegenerationSupported ∧
    (tower.sourceToOntology.atLevel level).RawRegenerationSupported

def NoBlockingResidualAt (tower : CordThreeSurfaceEquilibriumTower family)
    (level : Nat) : Prop :=
  (tower.ontologyToSpecification.atLevel level).NoBlockingResidual ∧
    (tower.specificationToSource.atLevel level).NoBlockingResidual ∧
    (tower.sourceToOntology.atLevel level).NoBlockingResidual

/-- The complete conditional obligation spectrum for one tower level. -/
def FullEquilibriumObligationsAt
    (tower : CordThreeSurfaceEquilibriumTower family) (level : Nat) : Prop :=
  tower.ExactAt level ∧
    tower.EffectivelyExactAt level ∧
    tower.GradePreservedAt level ∧
    tower.NaturalAt level ∧
    tower.MetaCircularAt level ∧
    tower.RawRegenerationAt level ∧
    tower.NoBlockingResidualAt level

/-- All three designated maps are quotient exact at each level. -/
theorem three_surface_exactness
    (tower : CordThreeSurfaceEquilibriumTower family) (level : Nat) :
    tower.ExactAt level :=
  ⟨(tower.ontologyToSpecification.atLevel level).certified_exact,
    (tower.specificationToSource.atLevel level).certified_exact,
    (tower.sourceToOntology.atLevel level).certified_exact⟩

/-- All three maps carry constructive two-sided quotient inverses. -/
theorem three_surface_effective_exactness
    (tower : CordThreeSurfaceEquilibriumTower family) (level : Nat) :
    tower.EffectivelyExactAt level :=
  ⟨(tower.ontologyToSpecification.atLevel level).certified_effectively_exact,
    (tower.specificationToSource.atLevel level).certified_effectively_exact,
    (tower.sourceToOntology.atLevel level).certified_effectively_exact⟩

/-- The three declared input, output, and representation grades have exact indices. -/
theorem three_surface_grade_preservation
    (tower : CordThreeSurfaceEquilibriumTower family) (level : Nat) :
    tower.GradePreservedAt level :=
  ⟨tower.ontologyToSpecification.grade_preserved_at level,
    tower.specificationToSource.grade_preserved_at level,
    tower.sourceToOntology.grade_preserved_at level⟩

/-- The three cross-level interpretation squares commute at each level. -/
theorem three_surface_naturality
    (tower : CordThreeSurfaceEquilibriumTower family) (level : Nat) :
    tower.NaturalAt level :=
  ⟨tower.ontologyToSpecification.natural_at level,
    tower.specificationToSource.natural_at level,
    tower.sourceToOntology.natural_at level⟩

/--
For every edge, source-surface code is interpreted at level `n + 1`; the
resulting target representation applies to realize the level-`n` designated map.
-/
theorem three_surface_realization
    (tower : CordThreeSurfaceEquilibriumTower family) (level : Nat) :
    tower.MetaCircularAt level :=
  ⟨tower.ontologyToSpecification.meta_circular_at level,
    tower.specificationToSource.meta_circular_at level,
    tower.sourceToOntology.meta_circular_at level⟩

/-- Every raw-regeneration claim supplies a correct canonical representative section. -/
theorem three_surface_raw_regeneration_sections
    (tower : CordThreeSurfaceEquilibriumTower family) (level : Nat) :
    tower.RawRegenerationAt level :=
  ⟨(tower.ontologyToSpecification.atLevel level).raw_regeneration_supported,
    (tower.specificationToSource.atLevel level).raw_regeneration_supported,
    (tower.sourceToOntology.atLevel level).raw_regeneration_supported⟩

/-- No directed certificate hides a blocking residual at the claimed level. -/
theorem three_surface_no_blocking_residuals
    (tower : CordThreeSurfaceEquilibriumTower family) (level : Nat) :
    tower.NoBlockingResidualAt level :=
  ⟨(tower.ontologyToSpecification.atLevel level).no_blocking_residual,
    (tower.specificationToSource.atLevel level).no_blocking_residual,
    (tower.sourceToOntology.atLevel level).no_blocking_residual⟩

/--
An admitted schema exposes exactness, constructive inverses, exact grades,
naturality, next-level meta-circular realization, conditional raw sections,
and an empty blocking-residual frontier at every level of all three surfaces.
-/
theorem all_level_three_surface_obligations
    (tower : CordThreeSurfaceEquilibriumTower family) :
    ∀ level, tower.FullEquilibriumObligationsAt level := by
  intro level
  exact ⟨tower.three_surface_exactness level,
    tower.three_surface_effective_exactness level,
    tower.three_surface_grade_preservation level,
    tower.three_surface_naturality level,
    tower.three_surface_realization level,
    tower.three_surface_raw_regeneration_sections level,
    tower.three_surface_no_blocking_residuals level⟩

end CordThreeSurfaceEquilibriumTower

/-! ## Finite current-state equilibrium monitoring -/

/-- The four semantic outcomes already exposed by equilibrium assessment. -/
inductive EquilibriumMonitorSemanticStatus
  | fullEquilibrium
  | boundedProvisionalEquilibrium
  | nonEquilibrium
  | indeterminate
  deriving DecidableEq, Repr, Inhabited, Fintype

/-- Finite monitor termination is separate from semantic equilibrium status. -/
inductive EquilibriumMonitorTermination
  | confirmedFull
  | cycleBoundReached
  | noProgressLimitReached
  deriving DecidableEq, Repr, Inhabited, Fintype

/-- Positive host-bounded work limits for one explicitly invoked episode. -/
structure EquilibriumMonitorBounds where
  maxCycles : Nat
  maxCyclesPositive : 0 < maxCycles
  noProgressLimit : Option Nat
  noProgressLimitPositive : ∀ limit,
    noProgressLimit = some limit → 0 < limit
  pollIntervalMilliseconds : Nat
  wallTimeLimitMilliseconds : Nat
  wallTimeLimitPositive : 0 < wallTimeLimitMilliseconds
  memoryLimitBytes : Nat
  memoryLimitPositive : 0 < memoryLimitBytes
  maximumReceiptBytes : Nat
  maximumReceiptBytesPositive : 0 < maximumReceiptBytes
  maximumExternalCalls : Nat
  externalCallsDisabled : maximumExternalCalls = 0

/-- One active-only, content-bound current observation. -/
structure EquilibriumMonitorObservation where
  inputIdentity : ContentHash
  inputIdentityNonempty : inputIdentity.value ≠ ""
  assessmentIdentity : ContentHash
  assessmentIdentityNonempty : assessmentIdentity.value ≠ ""
  semanticStatus : EquilibriumMonitorSemanticStatus
  activeOnly : Bool
  activeOnlyEvidence : activeOnly = true
  quarantineInput : Bool
  quarantineRejected : quarantineInput = false
  staleActivePin : Bool
  staleActivePinRejected : staleActivePin = false

/-- A monitor may only describe an unperformed candidate handoff to ordinary `cord enter`. -/
structure EquilibriumMonitorRepairHandoff where
  entryBoundary : String
  ordinaryEntryBoundary : entryBoundary = "cord enter"
  requestIdentity : ContentHash
  requestIdentityNonempty : requestIdentity.value ≠ ""
  candidateOnly : Bool
  remainsCandidate : candidateOnly = true
  invocationPerformed : Bool
  invocationNotPerformed : invocationPerformed = false
  ontologyAdmissionEffect : Bool
  ontologyAdmissionNotEffectPath : ontologyAdmissionEffect = false
  mutationAuthority : Bool
  handoffNotAuthority : mutationAuthority = false

/--
One finite monitoring episode. Only the current observation and immediately
previous assessment identity are retained; the proof fields prevent a terminal
receipt from being reinterpreted as history, a runner, or authority.
-/
structure EquilibriumMonitoringEpisode where
  requestSnapshot : ContentHash
  ontologySnapshot : ContentHash
  specificationSnapshot : ContentHash
  sourceSnapshot : ContentHash
  correspondenceSnapshot : ContentHash
  hostSnapshot : ContentHash
  evaluatorSnapshot : ContentHash
  authorityEnvelopeSnapshot : ContentHash
  governingSnapshotsNonempty :
    requestSnapshot.value ≠ "" ∧
      ontologySnapshot.value ≠ "" ∧
      specificationSnapshot.value ≠ "" ∧
      sourceSnapshot.value ≠ "" ∧
      correspondenceSnapshot.value ≠ "" ∧
      hostSnapshot.value ≠ "" ∧
      evaluatorSnapshot.value ≠ "" ∧
      authorityEnvelopeSnapshot.value ≠ ""
  bounds : EquilibriumMonitorBounds
  cyclesObserved : Nat
  cyclesWithinBound : cyclesObserved ≤ bounds.maxCycles
  wallTimeConsumedMilliseconds : Nat
  wallTimeWithinBound :
    wallTimeConsumedMilliseconds ≤ bounds.wallTimeLimitMilliseconds
  peakMemoryBytes : Nat
  memoryWithinBound : peakMemoryBytes ≤ bounds.memoryLimitBytes
  terminalReceiptBytes : Nat
  receiptWithinBound : terminalReceiptBytes ≤ bounds.maximumReceiptBytes
  externalCallsConsumed : Nat
  noExternalCallsConsumed : externalCallsConsumed = 0
  currentObservation : EquilibriumMonitorObservation
  previousAssessmentIdentity : Option ContentHash
  confirmationCount : Nat
  noProgressCount : Nat
  termination : EquilibriumMonitorTermination
  confirmedFullEvidence : termination = .confirmedFull →
    currentObservation.semanticStatus = .fullEquilibrium ∧
      previousAssessmentIdentity = some currentObservation.assessmentIdentity ∧
      confirmationCount = 2
  repairHandoff : Option EquilibriumMonitorRepairHandoff
  processLocalState : Bool
  processLocalOnly : processLocalState = true
  compactTerminalReceipt : Bool
  receiptIsCompact : compactTerminalReceipt = true
  retainedCycleHistory : Bool
  noRetainedCycleHistory : retainedCycleHistory = false
  externalAfterTree : Bool
  noExternalAfterTree : externalAfterTree = false
  candidateOntology : Bool
  noCandidateOntology : candidateOntology = false
  runnerMutation : Bool
  noRunnerMutation : runnerMutation = false
  persistentCycleState : Bool
  noPersistentCycleState : persistentCycleState = false
  semanticAdmissionEffect : Bool
  noSemanticAdmissionEffect : semanticAdmissionEffect = false
  mutationAuthority : Bool
  episodeNotAuthority : mutationAuthority = false

namespace EquilibriumMonitoringEpisode

/-- Confirmed full equilibrium requires exactly two consecutive identical full assessments. -/
theorem confirmed_full_requires_two_identical_full_assessments
    (episode : EquilibriumMonitoringEpisode)
    (confirmed : episode.termination = .confirmedFull) :
    episode.currentObservation.semanticStatus = .fullEquilibrium ∧
      episode.previousAssessmentIdentity =
        some episode.currentObservation.assessmentIdentity ∧
      episode.confirmationCount = 2 :=
  episode.confirmedFullEvidence confirmed

/-- Every episode remains positive-bounded, active-only, process-local, and history-free. -/
theorem finite_current_only_process_local
    (episode : EquilibriumMonitoringEpisode) :
    0 < episode.bounds.maxCycles ∧
      episode.cyclesObserved ≤ episode.bounds.maxCycles ∧
      0 < episode.bounds.wallTimeLimitMilliseconds ∧
      episode.wallTimeConsumedMilliseconds ≤
        episode.bounds.wallTimeLimitMilliseconds ∧
      0 < episode.bounds.memoryLimitBytes ∧
      episode.peakMemoryBytes ≤ episode.bounds.memoryLimitBytes ∧
      0 < episode.bounds.maximumReceiptBytes ∧
      episode.terminalReceiptBytes ≤ episode.bounds.maximumReceiptBytes ∧
      episode.bounds.maximumExternalCalls = 0 ∧
      episode.externalCallsConsumed = 0 ∧
      episode.currentObservation.activeOnly = true ∧
      episode.currentObservation.quarantineInput = false ∧
      episode.currentObservation.staleActivePin = false ∧
      episode.processLocalState = true ∧
      episode.compactTerminalReceipt = true ∧
      episode.retainedCycleHistory = false :=
  ⟨episode.bounds.maxCyclesPositive, episode.cyclesWithinBound,
    episode.bounds.wallTimeLimitPositive, episode.wallTimeWithinBound,
    episode.bounds.memoryLimitPositive, episode.memoryWithinBound,
    episode.bounds.maximumReceiptBytesPositive, episode.receiptWithinBound,
    episode.bounds.externalCallsDisabled, episode.noExternalCallsConsumed,
    episode.currentObservation.activeOnlyEvidence,
    episode.currentObservation.quarantineRejected,
    episode.currentObservation.staleActivePinRejected,
    episode.processLocalOnly, episode.receiptIsCompact,
    episode.noRetainedCycleHistory⟩

/-- Monitoring cannot mutate a runner, persist cycle state, authorize ontology, or mint authority. -/
theorem monitoring_is_not_an_effect_or_authority
    (episode : EquilibriumMonitoringEpisode) :
    episode.externalAfterTree = false ∧
      episode.candidateOntology = false ∧
      episode.runnerMutation = false ∧
      episode.persistentCycleState = false ∧
      episode.semanticAdmissionEffect = false ∧
      episode.mutationAuthority = false :=
  ⟨episode.noExternalAfterTree, episode.noCandidateOntology,
    episode.noRunnerMutation, episode.noPersistentCycleState,
    episode.noSemanticAdmissionEffect, episode.episodeNotAuthority⟩

/-- Any exposed repair remains an unperformed candidate at the ordinary entry boundary. -/
theorem repair_handoff_is_candidate_only_ordinary_entry
    (episode : EquilibriumMonitoringEpisode)
    (handoff : EquilibriumMonitorRepairHandoff)
    (present : episode.repairHandoff = some handoff) :
    handoff.entryBoundary = "cord enter" ∧
      handoff.candidateOnly = true ∧
      handoff.invocationPerformed = false ∧
      handoff.ontologyAdmissionEffect = false ∧
      handoff.mutationAuthority = false := by
  have _boundToEpisode : episode.repairHandoff = some handoff := present
  exact ⟨handoff.ordinaryEntryBoundary, handoff.remainsCandidate,
    handoff.invocationNotPerformed, handoff.ontologyAdmissionNotEffectPath,
    handoff.handoffNotAuthority⟩

end EquilibriumMonitoringEpisode

/-! ## Finite system/environment and coupling coverage -/

/-- The four finite reflective levels used by a bounded system observation. -/
inductive SystemReflectionLevel
  | objectState
  | description
  | evaluator
  | supervision
  deriving DecidableEq, Repr, Inhabited, Fintype

namespace SystemReflectionLevel

def rank : SystemReflectionLevel → Nat
  | .objectState => 0
  | .description => 1
  | .evaluator => 2
  | .supervision => 3

/-- Object state, descriptions, evaluators, and supervision are distinct levels. -/
theorem strict_tower :
    rank .objectState < rank .description ∧
      rank .description < rank .evaluator ∧
      rank .evaluator < rank .supervision := by
  decide

end SystemReflectionLevel

/-- Finite resource limits attached to one component or boundary. -/
structure SystemResourceBounds where
  memoryBytes : Nat
  memoryPositive : 0 < memoryBytes
  computeWork : Nat
  computePositive : 0 < computeWork
  recordCount : Nat
  recordCountPositive : 0 < recordCount
  externalCalls : Nat

/-- Finite resource demand of one port, observer, or feedback channel. -/
structure SystemResourceDemand where
  memoryBytes : Nat
  computeWork : Nat
  recordCount : Nat
  externalCalls : Nat
  deriving DecidableEq, Repr

namespace SystemResourceDemand

def Fits (demand : SystemResourceDemand) (bounds : SystemResourceBounds) : Prop :=
  demand.memoryBytes ≤ bounds.memoryBytes ∧
    demand.computeWork ≤ bounds.computeWork ∧
    demand.recordCount ≤ bounds.recordCount ∧
    demand.externalCalls ≤ bounds.externalCalls

end SystemResourceDemand

/-- An exact authority snapshot whose output cannot be minted by observation. -/
structure SystemAuthorityEnvelope where
  snapshot : ContentHash
  snapshotNonempty : snapshot.value ≠ ""
  entryAuthority : Option AuthorityId
  outputAuthority : Option AuthorityId
  outputAuthorityInherited : ∀ authority,
    outputAuthority = some authority → entryAuthority = some authority
  observationAuthority : Bool
  observationNotAuthority : observationAuthority = false

namespace SystemAuthorityEnvelope

/-- A system observation cannot introduce an output authority absent at entry. -/
theorem output_authority_inherited
    (envelope : SystemAuthorityEnvelope) {authority : AuthorityId}
    (output : envelope.outputAuthority = some authority) :
    envelope.entryAuthority = some authority :=
  envelope.outputAuthorityInherited authority output

end SystemAuthorityEnvelope

/-- Exact endpoint kind for a declared interaction port. -/
inductive SystemEndpoint
  | component (identity : ContentHash)
  | environment (scope : ContentHash)
  deriving DecidableEq, Repr

/-- The admitted direction of one typed interaction port. -/
inductive InteractionPortDirection
  | input
  | output
  | observation
  | control
  | residual
  deriving DecidableEq, Repr, Inhabited, Fintype

/-- The declared effect class remains distinct from an authority decision. -/
inductive InteractionEffectClass
  | readOnly
  | candidateChange
  | authorizedMutation
  deriving DecidableEq, Repr, Inhabited, Fintype

/-- One exact current L0 state of a bounded component. -/
structure SystemStateSnapshot where
  id : RecordId
  identity : ContentHash
  identityNonempty : identity.value ≠ ""
  componentIdentity : ContentHash
  componentIdentityNonempty : componentIdentity.value ≠ ""
  schemaIdentity : ContentHash
  schemaIdentityNonempty : schemaIdentity.value ≠ ""
  governingSnapshots : Finset ContentHash
  governingSnapshotsNonempty : governingSnapshots.Nonempty
  governingSnapshotsPinned : ∀ snapshot,
    snapshot ∈ governingSnapshots → snapshot.value ≠ ""
  observationOrdinal : Nat
  uncertainty : Finset ResidualId
  current : Bool
  currentEvidence : current = true
  commandState : Bool
  notACommand : commandState = false
  desiredState : Bool
  notDesiredState : desiredState = false
  authorityDecision : Bool
  notAuthorityDecision : authorityDecision = false
  level : SystemReflectionLevel
  objectLevel : level = .objectState

/-- One L1 system/environment boundary with finite declared crossings. -/
structure SystemEnvironmentBoundary where
  id : RecordId
  identity : ContentHash
  identityNonempty : identity.value ≠ ""
  componentIdentity : ContentHash
  componentIdentityNonempty : componentIdentity.value ≠ ""
  governingSnapshot : ContentHash
  governingSnapshotNonempty : governingSnapshot.value ≠ ""
  systemScope : Finset ContentHash
  environmentScope : Finset ContentHash
  componentInSystemScope : componentIdentity ∈ systemScope
  scopesDisjoint : Disjoint systemScope environmentScope
  permittedPortIdentities : Finset ContentHash
  observerScope : Finset ContentHash
  authority : SystemAuthorityEnvelope
  resources : SystemResourceBounds
  level : SystemReflectionLevel
  descriptionLevel : level = .description

/-- One L1 typed input, output, observation, control, or residual port. -/
structure TypedInteractionPort where
  id : RecordId
  identity : ContentHash
  identityNonempty : identity.value ≠ ""
  ownerComponent : ContentHash
  boundaryIdentity : ContentHash
  direction : InteractionPortDirection
  payloadSchema : ContentHash
  payloadSchemaNonempty : payloadSchema.value ≠ ""
  source : SystemEndpoint
  target : SystemEndpoint
  effectClass : InteractionEffectClass
  authorityEnvelopeSnapshot : ContentHash
  authorityEnvelopeSnapshotNonempty : authorityEnvelopeSnapshot.value ≠ ""
  requiredAuthority : Option AuthorityId
  multiplicityBound : Nat
  multiplicityBoundPositive : 0 < multiplicityBound
  resourceDemand : SystemResourceDemand
  feedbackCorrelationKey : Option ContentHash
  feedbackCorrelationKeyNonempty : ∀ key,
    feedbackCorrelationKey = some key → key.value ≠ ""
  level : SystemReflectionLevel
  descriptionLevel : level = .description

namespace TypedInteractionPort

/-- The exact endpoint pattern establishes a real system/environment crossing. -/
def Crosses (port : TypedInteractionPort)
    (boundary : SystemEnvironmentBoundary) : Prop :=
  port.boundaryIdentity = boundary.identity ∧
    match port.source, port.target with
    | .component source, .environment target =>
        source = boundary.componentIdentity ∧ target ∈ boundary.environmentScope
    | .environment source, .component target =>
        source ∈ boundary.environmentScope ∧ target = boundary.componentIdentity
    | _, _ => False

/-- A boundary mediates a crossing only through its exact declared port. -/
def MediatedBy (port : TypedInteractionPort)
    (boundary : SystemEnvironmentBoundary) : Prop :=
  port.Crosses boundary ∧
    port.identity ∈ boundary.permittedPortIdentities ∧
    port.authorityEnvelopeSnapshot = boundary.authority.snapshot ∧
    port.resourceDemand.Fits boundary.resources ∧
    (∀ authority,
      port.requiredAuthority = some authority →
        boundary.authority.entryAuthority = some authority) ∧
    (port.effectClass = .authorizedMutation →
      ∃ authority,
        port.requiredAuthority = some authority ∧
          boundary.authority.entryAuthority = some authority)

/-- Effectful and observational outputs require an exact feedback return. -/
def RequiresFeedback (port : TypedInteractionPort) : Prop :=
  port.direction = .output ∨
    port.direction = .observation ∨
    port.direction = .control

end TypedInteractionPort

/-- A higher-level observer with finite visibility, evidence, and blind spots. -/
structure SystemObserver where
  id : RecordId
  identity : ContentHash
  identityNonempty : identity.value ≠ ""
  componentIdentity : ContentHash
  visiblePorts : Finset ContentHash
  blindSpotDiscrepancies : Finset RecordId
  observationMethod : ContentHash
  observationMethodNonempty : observationMethod.value ≠ ""
  evidenceOutput : Finset RecordId
  evidenceOutputNonempty : evidenceOutput.Nonempty
  resourceDemand : SystemResourceDemand
  authorityEnvelopeSnapshot : ContentHash
  authorityEnvelopeSnapshotNonempty : authorityEnvelopeSnapshot.value ≠ ""
  observedLevel : SystemReflectionLevel
  evaluatorLevel : SystemReflectionLevel
  levelSeparated : observedLevel.rank < evaluatorLevel.rank
  observationAuthority : Bool
  observationNotAuthority : observationAuthority = false

/-- Current, stale, or miscorrelated status of one materialized feedback channel. -/
inductive FeedbackChannelStatus
  | current
  | stale
  | miscorrelated
  deriving DecidableEq, Repr, Inhabited, Fintype

/-- One L1 feedback description returning an exact result to an observer. -/
structure FeedbackChannel where
  id : RecordId
  identity : ContentHash
  identityNonempty : identity.value ≠ ""
  componentIdentity : ContentHash
  boundaryIdentity : ContentHash
  emittedPortIdentity : ContentHash
  returnPortIdentity : ContentHash
  emittedStateIdentity : ContentHash
  emittedStateIdentityNonempty : emittedStateIdentity.value ≠ ""
  returnedStateIdentity : ContentHash
  returnedStateIdentityNonempty : returnedStateIdentity.value ≠ ""
  correlationIdentity : ContentHash
  correlationIdentityNonempty : correlationIdentity.value ≠ ""
  observerIdentity : ContentHash
  status : FeedbackChannelStatus
  latencyBound : Nat
  latencyBoundPositive : 0 < latencyBound
  resourceDemand : SystemResourceDemand
  authorityEnvelopeSnapshot : ContentHash
  authorityEnvelopeSnapshotNonempty : authorityEnvelopeSnapshot.value ≠ ""
  observationAuthority : Bool
  feedbackNotAuthority : observationAuthority = false
  level : SystemReflectionLevel
  descriptionLevel : level = .description

/-- Every admitted coupling discrepancy has an exact, exhaustive kind. -/
inductive SystemCouplingDiscrepancyKind
  | systemBoundaryGap
  | environmentBoundaryGap
  | hiddenCoupling
  | unobservedComponent
  | unobservedActor
  | missingInput
  | missingOutput
  | missingFeedback
  | staleFeedback
  | observerBlindSpot
  | ambiguousAuthority
  | authorityEscalation
  | unboundedResource
  | resourceAccountingGap
  | portSchemaMismatch
  deriving DecidableEq, Repr, Inhabited, Fintype

/-- A typed L2 witness that remains a residual until exact current discharge. -/
structure SystemCouplingDiscrepancy where
  id : RecordId
  kind : SystemCouplingDiscrepancyKind
  componentIdentity : ContentHash
  boundaryIdentity : Option ContentHash
  portIdentity : Option ContentHash
  feedbackIdentity : Option ContentHash
  observerIdentity : Option ContentHash
  governingSnapshots : Finset ContentHash
  governingSnapshotsNonempty : governingSnapshots.Nonempty
  governingSnapshotsPinned : ∀ snapshot,
    snapshot ∈ governingSnapshots → snapshot.value ≠ ""
  evidence : Finset RecordId
  evidenceNonempty : evidence.Nonempty
  impact : RecordId
  correctionCandidate : Option RecordId
  reviewRecord : RecordId
  residual : ResidualId
  residualNonzero : residual.value ≠ 0
  exactCurrentDischargeEvidence : Option RecordId
  dischargeEvidenceNonzero : ∀ evidenceRecord,
    exactCurrentDischargeEvidence = some evidenceRecord →
      evidenceRecord.value ≠ 0
  level : SystemReflectionLevel
  evaluatorLevel : level = .evaluator

namespace SystemCouplingDiscrepancy

def Open (discrepancy : SystemCouplingDiscrepancy) : Prop :=
  discrepancy.exactCurrentDischargeEvidence = none

end SystemCouplingDiscrepancy

/-- Observations that cannot, by themselves, discharge a coupling discrepancy. -/
inductive NondischargingSystemObservation
  | continuedActivity
  | successfulCompilation
  | successfulProofChecking
  | agentAgreement
  | timeout
  | unavailableObserver
  deriving DecidableEq, Repr, Inhabited, Fintype

/-- One observed interaction that must resolve to an exact declared port. -/
structure ObservedSystemInteraction where
  id : RecordId
  portIdentity : ContentHash
  direction : InteractionPortDirection
  payloadSchema : ContentHash
  source : SystemEndpoint
  target : SystemEndpoint
  effectClass : InteractionEffectClass
  authorityEnvelopeSnapshot : ContentHash
  requiredAuthority : Option AuthorityId
  multiplicityBound : Nat
  resourceDemand : SystemResourceDemand

namespace ObservedSystemInteraction

def Matches (interaction : ObservedSystemInteraction)
    (port : TypedInteractionPort) : Prop :=
  interaction.portIdentity = port.identity ∧
    interaction.direction = port.direction ∧
    interaction.payloadSchema = port.payloadSchema ∧
    interaction.source = port.source ∧
    interaction.target = port.target ∧
    interaction.effectClass = port.effectClass ∧
    interaction.authorityEnvelopeSnapshot = port.authorityEnvelopeSnapshot ∧
    interaction.requiredAuthority = port.requiredAuthority ∧
    interaction.multiplicityBound = port.multiplicityBound ∧
    interaction.resourceDemand = port.resourceDemand

end ObservedSystemInteraction

/-- The nine finite ownership dimensions compared by coupling coverage. -/
inductive SystemCouplingCoverageDimension
  | component
  | boundary
  | state
  | port
  | dependency
  | feedback
  | observer
  | authority
  | resource
  deriving DecidableEq, Repr, Inhabited, Fintype

/-- Coverage status is independent for every required dimension. -/
inductive SystemCouplingCoverageStatus
  | covered
  | discrepant
  | boundedWithFrontier
  | unknown
  deriving DecidableEq, Repr, Inhabited, Fintype

/-- One exact finite universe for every coupling dimension. -/
structure SystemCouplingUniverse where
  components : Finset ContentHash
  boundaries : Finset ContentHash
  states : Finset ContentHash
  ports : Finset ContentHash
  dependencies : Finset ContentHash
  feedbackChannels : Finset ContentHash
  observers : Finset ContentHash
  authorityEnvelopes : Finset ContentHash
  resourceAccounts : Finset ContentHash
  deriving DecidableEq

/-- A finite L2 comparison of declared and observed coupling universes. -/
structure SystemCouplingCoverageAssessment where
  id : RecordId
  identity : ContentHash
  identityNonempty : identity.value ≠ ""
  componentIdentity : ContentHash
  boundaryIdentity : ContentHash
  stateIdentity : ContentHash
  governingSnapshot : ContentHash
  governingSnapshotNonempty : governingSnapshot.value ≠ ""
  ownershipManifestIdentity : ContentHash
  ownershipManifestIdentityNonempty : ownershipManifestIdentity.value ≠ ""
  canonicalAssessmentIdentity : ContentHash
  canonicalAssessmentIdentityNonempty : canonicalAssessmentIdentity.value ≠ ""
  declared : SystemCouplingUniverse
  observed : SystemCouplingUniverse
  dimensionStatus : SystemCouplingCoverageDimension →
    SystemCouplingCoverageStatus
  exclusionEvidence : Finset RecordId
  completeOwnershipUniverse : Bool
  ownershipUniverseEvidence : Option RecordId
  completeUniverseHasEvidence : completeOwnershipUniverse = true →
    ∃ evidenceRecord,
      ownershipUniverseEvidence = some evidenceRecord ∧
        evidenceRecord.value ≠ 0
  discrepancyIdentities : Finset RecordId
  residuals : Finset ResidualId
  discrepancyResidual : RecordId → Option ResidualId
  discrepancyResidualCovered : ∀ discrepancy,
    discrepancy ∈ discrepancyIdentities →
      ∃ residual,
        discrepancyResidual discrepancy = some residual ∧
          residual ∈ residuals
  level : SystemReflectionLevel
  evaluatorLevel : level = .evaluator

/-- Process-local evidence that an external registry admitted one exact
ownership-manifest/assessment pair.  Constructing the structural assessment
does not construct this value. -/
structure SystemCouplingCoverageAdmission where
  registrySnapshot : ContentHash
  registrySnapshotNonempty : registrySnapshot.value ≠ ""
  ownershipManifestIdentity : ContentHash
  canonicalAssessmentIdentity : ContentHash
  processLocal : Bool
  processLocalTrue : processLocal = true

namespace SystemCouplingCoverageAssessment

/-- Structural closure is candidate evidence over a complete finite universe. -/
def StructurallyClosedCandidate (assessment : SystemCouplingCoverageAssessment) : Prop :=
  assessment.completeOwnershipUniverse = true ∧
    assessment.declared = assessment.observed ∧
    (∀ dimension, assessment.dimensionStatus dimension = .covered) ∧
    assessment.exclusionEvidence = ∅ ∧
    assessment.discrepancyIdentities = ∅ ∧
    assessment.residuals = ∅

/-- Exhaustive coverage additionally requires a process-local registry
admission bound to the exact manifest and complete assessment identities. -/
def AdmittedFull (assessment : SystemCouplingCoverageAssessment)
    (admission : SystemCouplingCoverageAdmission) : Prop :=
  assessment.StructurallyClosedCandidate ∧
    admission.ownershipManifestIdentity = assessment.ownershipManifestIdentity ∧
    admission.canonicalAssessmentIdentity = assessment.canonicalAssessmentIdentity

end SystemCouplingCoverageAssessment

/-- One finite component carrying all system, observation, and residual interfaces. -/
structure BoundedSystemComponent where
  id : RecordId
  identity : ContentHash
  identityNonempty : identity.value ≠ ""
  boundary : SystemEnvironmentBoundary
  state : SystemStateSnapshot
  portCount : Nat
  port : Fin portCount → TypedInteractionPort
  observedInteractionCount : Nat
  observedInteraction : Fin observedInteractionCount → ObservedSystemInteraction
  feedbackCount : Nat
  feedback : Fin feedbackCount → FeedbackChannel
  observerCount : Nat
  observer : Fin observerCount → SystemObserver
  authority : SystemAuthorityEnvelope
  resources : SystemResourceBounds
  discrepancyCount : Nat
  discrepancy : Fin discrepancyCount → SystemCouplingDiscrepancy
  residuals : Finset ResidualId

namespace BoundedSystemComponent

/-- Every actual boundary crossing is mediated by one exact declared port. -/
def BoundaryClosed (component : BoundedSystemComponent) : Prop :=
  component.boundary.componentIdentity = component.identity ∧
    component.state.componentIdentity = component.identity ∧
    component.state.current = true ∧
    (∀ index,
      let port := component.port index
      port.ownerComponent = component.identity ∧
        port.boundaryIdentity = component.boundary.identity ∧
        (port.Crosses component.boundary →
          port.MediatedBy component.boundary))

/-- Every observed input, output, control, effect, or residual has one exact port. -/
def TypedPortsResolve (component : BoundedSystemComponent) : Prop :=
  ∀ interactionIndex,
    ∃! portIndex,
      (component.observedInteraction interactionIndex).Matches
        (component.port portIndex)

/-- One feedback channel exactly returns a port result to a visible observer. -/
def CorrelatesFeedback (component : BoundedSystemComponent)
    (port : TypedInteractionPort) (channel : FeedbackChannel)
    (observer : SystemObserver) (returnPort : TypedInteractionPort) : Prop :=
  channel.componentIdentity = component.identity ∧
    channel.boundaryIdentity = component.boundary.identity ∧
    channel.emittedPortIdentity = port.identity ∧
    channel.returnPortIdentity = returnPort.identity ∧
    port.feedbackCorrelationKey = some channel.correlationIdentity ∧
    channel.status = .current ∧
    channel.observerIdentity = observer.identity ∧
    port.identity ∈ observer.visiblePorts ∧
    returnPort.identity ∈ observer.visiblePorts ∧
    observer.componentIdentity = component.identity ∧
    observer.observedLevel.rank < observer.evaluatorLevel.rank ∧
    channel.authorityEnvelopeSnapshot = component.authority.snapshot ∧
    observer.authorityEnvelopeSnapshot = component.authority.snapshot ∧
    channel.resourceDemand.Fits component.resources ∧
    observer.resourceDemand.Fits component.resources ∧
    channel.observationAuthority = false ∧
    observer.observationAuthority = false

/-- Every effectful or observational output used by the component has feedback. -/
def FeedbackObservationClosed (component : BoundedSystemComponent) : Prop :=
  ∀ portIndex,
    let port := component.port portIndex
    port.RequiresFeedback →
      ∃ feedbackIndex observerIndex returnPortIndex,
        component.CorrelatesFeedback port
          (component.feedback feedbackIndex)
          (component.observer observerIndex)
          (component.port returnPortIndex)

/-- Port, observer, feedback, and boundary work stays within inherited bounds. -/
def AuthorityResourceConstrained (component : BoundedSystemComponent) : Prop :=
  component.boundary.authority.snapshot = component.authority.snapshot ∧
    component.boundary.resources.memoryBytes ≤ component.resources.memoryBytes ∧
    component.boundary.resources.computeWork ≤ component.resources.computeWork ∧
    component.boundary.resources.recordCount ≤ component.resources.recordCount ∧
    component.boundary.resources.externalCalls ≤ component.resources.externalCalls ∧
    (∀ portIndex,
      let port := component.port portIndex
      port.authorityEnvelopeSnapshot = component.authority.snapshot ∧
        port.resourceDemand.Fits component.resources ∧
        (∀ authority,
          port.requiredAuthority = some authority →
            component.authority.entryAuthority = some authority)) ∧
    (∀ observerIndex,
      let observer := component.observer observerIndex
      observer.authorityEnvelopeSnapshot = component.authority.snapshot ∧
        observer.resourceDemand.Fits component.resources ∧
        observer.observationAuthority = false) ∧
    (∀ feedbackIndex,
      let feedback := component.feedback feedbackIndex
      feedback.authorityEnvelopeSnapshot = component.authority.snapshot ∧
        feedback.resourceDemand.Fits component.resources ∧
        feedback.observationAuthority = false)

/-- Every open typed discrepancy remains explicitly present as a residual. -/
def PreservesOpenDiscrepancies (component : BoundedSystemComponent) : Prop :=
  ∀ index,
    let discrepancy := component.discrepancy index
    discrepancy.componentIdentity = component.identity ∧
      (discrepancy.Open → discrepancy.residual ∈ component.residuals)

end BoundedSystemComponent

/-- Exact binding of a coverage assessment to its finite component carrier. -/
def CoverageBindsComponent (component : BoundedSystemComponent)
    (assessment : SystemCouplingCoverageAssessment) : Prop :=
  assessment.componentIdentity = component.identity ∧
    assessment.boundaryIdentity = component.boundary.identity ∧
    assessment.stateIdentity = component.state.identity ∧
    component.identity ∈ assessment.declared.components ∧
    component.boundary.identity ∈ assessment.declared.boundaries ∧
    component.state.identity ∈ assessment.declared.states ∧
    (∀ portIndex,
      (component.port portIndex).identity ∈ assessment.declared.ports) ∧
    (∀ feedbackIndex,
      (component.feedback feedbackIndex).identity ∈
        assessment.declared.feedbackChannels) ∧
    (∀ observerIndex,
      (component.observer observerIndex).identity ∈ assessment.declared.observers)

/-- A proof-bearing carrier for the four admitted system-coupling laws. -/
structure SystemCouplingCertificate where
  component : BoundedSystemComponent
  assessment : SystemCouplingCoverageAssessment
  boundaryClosed : component.BoundaryClosed
  typedPortsResolve : component.TypedPortsResolve
  feedbackObservationClosed : component.FeedbackObservationClosed
  authorityResourceConstrained : component.AuthorityResourceConstrained
  openDiscrepanciesPreserved : component.PreservesOpenDiscrepancies
  coverageBindsComponent : CoverageBindsComponent component assessment

namespace SystemCouplingCertificate

/-- Every crossing is exact, typed, authority-bound, and resource-bounded. -/
theorem system_environment_boundary_law
    (certificate : SystemCouplingCertificate) :
    certificate.component.BoundaryClosed :=
  certificate.boundaryClosed

/-- Every observed interaction resolves to one matching declared port. -/
theorem typed_port_coupling_law
    (certificate : SystemCouplingCertificate) :
    certificate.component.TypedPortsResolve :=
  certificate.typedPortsResolve

/-- Every relevant output has current correlated feedback visible to an observer. -/
theorem feedback_observation_closure_law
    (certificate : SystemCouplingCertificate) :
    certificate.component.FeedbackObservationClosed :=
  certificate.feedbackObservationClosed

/-- Hidden or unobserved coupling cannot disappear without exact current discharge. -/
theorem hidden_coupling_residual_preservation_law
    (certificate : SystemCouplingCertificate)
    (index : Fin certificate.component.discrepancyCount)
    (openDiscrepancy : (certificate.component.discrepancy index).Open) :
    (certificate.component.discrepancy index).residual ∈
      certificate.component.residuals :=
  (certificate.openDiscrepanciesPreserved index).2 openDiscrepancy

/-- Builds, proofs, agreement, activity, timeout, and absence of an observer are not discharge. -/
theorem nondischarging_observation_preserves_residual
    (certificate : SystemCouplingCertificate)
    (index : Fin certificate.component.discrepancyCount)
    (_observation : NondischargingSystemObservation)
    (openDiscrepancy : (certificate.component.discrepancy index).Open) :
    (certificate.component.discrepancy index).residual ∈
      certificate.component.residuals :=
  certificate.hidden_coupling_residual_preservation_law index openDiscrepancy

/-- An admitted full claim entails an evidenced complete finite universe and no frontier. -/
theorem full_coverage_requires_complete_finite_universe
    (certificate : SystemCouplingCertificate)
    (admission : SystemCouplingCoverageAdmission)
    (full : certificate.assessment.AdmittedFull admission) :
    certificate.assessment.completeOwnershipUniverse = true ∧
      (∃ evidenceRecord,
        certificate.assessment.ownershipUniverseEvidence = some evidenceRecord ∧
          evidenceRecord.value ≠ 0) ∧
      certificate.assessment.declared = certificate.assessment.observed ∧
      (∀ dimension,
        certificate.assessment.dimensionStatus dimension = .covered) ∧
      certificate.assessment.discrepancyIdentities = ∅ ∧
      certificate.assessment.residuals = ∅ := by
  rcases full with ⟨structurallyClosed, _manifestBound, _assessmentBound⟩
  rcases structurallyClosed with
    ⟨complete, equalUniverse, allCovered, _noExclusions,
      noDiscrepancies, noResiduals⟩
  exact ⟨complete,
    certificate.assessment.completeUniverseHasEvidence complete,
    equalUniverse, allCovered, noDiscrepancies, noResiduals⟩

/-- The system carrier keeps L0 state, L1 descriptions, and L2 evaluation distinct. -/
theorem finite_level_separation
    (certificate : SystemCouplingCertificate) :
    certificate.component.state.level = .objectState ∧
      certificate.component.boundary.level = .description ∧
      (∀ portIndex,
        (certificate.component.port portIndex).level = .description) ∧
      (∀ feedbackIndex,
        (certificate.component.feedback feedbackIndex).level = .description) ∧
      (∀ observerIndex,
        (certificate.component.observer observerIndex).observedLevel.rank <
          (certificate.component.observer observerIndex).evaluatorLevel.rank) ∧
      certificate.assessment.level = .evaluator :=
  ⟨certificate.component.state.objectLevel,
    certificate.component.boundary.descriptionLevel,
    fun index => (certificate.component.port index).descriptionLevel,
    fun index => (certificate.component.feedback index).descriptionLevel,
    fun index => (certificate.component.observer index).levelSeparated,
    certificate.assessment.evaluatorLevel⟩

/-- Coupling observation inherits authority and all work remains finitely bounded. -/
theorem authority_and_resources_remain_constrained
    (certificate : SystemCouplingCertificate) :
    certificate.component.AuthorityResourceConstrained ∧
      certificate.component.authority.observationAuthority = false ∧
      (∀ authority,
        certificate.component.authority.outputAuthority = some authority →
          certificate.component.authority.entryAuthority = some authority) :=
  ⟨certificate.authorityResourceConstrained,
    certificate.component.authority.observationNotAuthority,
    fun _authority output =>
      certificate.component.authority.output_authority_inherited output⟩

end SystemCouplingCertificate

/-- One L3 choice evaluated under the previously pinned L2 evaluator snapshot. -/
structure SystemCouplingSupervision where
  assessment : SystemCouplingCoverageAssessment
  governingEvaluatorSnapshot : ContentHash
  governingEvaluatorSnapshotNonempty : governingEvaluatorSnapshot.value ≠ ""
  evaluatorUsed : ContentHash
  pinnedEvaluatorUsed : evaluatorUsed = governingEvaluatorSnapshot
  proposedEvaluatorSnapshot : Option ContentHash
  reviewRecord : RecordId
  retainedResiduals : Finset ResidualId
  assessmentResidualsRetained : assessment.residuals ⊆ retainedResiduals
  level : SystemReflectionLevel
  supervisionLevel : level = .supervision
  mutationAuthority : Bool
  supervisionNotAuthority : mutationAuthority = false

namespace SystemCouplingSupervision

/-- A proposed evaluator is data; the current step still uses the pinned evaluator. -/
theorem evaluator_cannot_rewrite_its_governing_rule
    (supervision : SystemCouplingSupervision) :
    supervision.evaluatorUsed = supervision.governingEvaluatorSnapshot ∧
      supervision.assessment.residuals ⊆ supervision.retainedResiduals ∧
      supervision.level = .supervision ∧
      supervision.mutationAuthority = false :=
  ⟨supervision.pinnedEvaluatorUsed,
    supervision.assessmentResidualsRetained,
    supervision.supervisionLevel,
    supervision.supervisionNotAuthority⟩

end SystemCouplingSupervision

/-!
Stable theorem-export namespace used by the Rust/Lean correspondence inventory.
The proof-bearing carrier remains `SystemCouplingCertificate`; these declarations
do not introduce a second semantic implementation.
-/
namespace SystemsReflection

theorem system_environment_boundary_law
    (certificate : SystemCouplingCertificate) :
    certificate.component.BoundaryClosed :=
  certificate.system_environment_boundary_law

theorem typed_port_coupling_law
    (certificate : SystemCouplingCertificate) :
    certificate.component.TypedPortsResolve :=
  certificate.typed_port_coupling_law

theorem feedback_observation_closure_law
    (certificate : SystemCouplingCertificate) :
    certificate.component.FeedbackObservationClosed :=
  certificate.feedback_observation_closure_law

theorem hidden_coupling_residual_preservation_law
    (certificate : SystemCouplingCertificate)
    (index : Fin certificate.component.discrepancyCount)
    (openDiscrepancy : (certificate.component.discrepancy index).Open) :
    (certificate.component.discrepancy index).residual ∈
      certificate.component.residuals :=
  certificate.hidden_coupling_residual_preservation_law index openDiscrepancy

end SystemsReflection

/-! ## Typed artifacts and source locations -/

/-- The five artifact strata participating in the two refinement lanes. -/
inductive ArtifactStratum
  | ontology
  | rustSource
  | leanProof
  | memory
  | compute
  deriving DecidableEq, Repr, Inhabited, Fintype

namespace ArtifactStratum

def all : Finset ArtifactStratum := Finset.univ

theorem card_all : all.card = 5 := by
  decide

end ArtifactStratum

/-- The refinement lane of an artifact stratum. -/
inductive RefinementLane
  | formal
  | execution
  deriving DecidableEq, Repr, Inhabited, Fintype

namespace ArtifactStratum

def lane : ArtifactStratum → RefinementLane
  | .ontology | .rustSource | .leanProof => .formal
  | .memory | .compute => .execution

/-- Rank within a lane; ranks are not compared across lanes. -/
def laneRank : ArtifactStratum → Nat
  | .ontology | .memory => 0
  | .rustSource | .compute => 1
  | .leanProof => 2

end ArtifactStratum

/--
A locator indexed by its artifact stratum.  Equal strings in differently
indexed locations do not make their artifacts interchangeable.
-/
structure ArtifactLocation (stratum : ArtifactStratum) where
  key : String
  sourceUnit : RecordId
  deriving DecidableEq, Repr

/-- An immutable artifact identity at one typed location and snapshot. -/
structure TypedArtifact (stratum : ArtifactStratum) where
  id : RecordId
  location : ArtifactLocation stratum
  snapshot : SnapshotId
  contentHash : ContentHash
  deriving DecidableEq, Repr

namespace TypedArtifact

/-- Every identity and immutable source binding of a materialized artifact is nonempty. -/
def WellFormed {stratum : ArtifactStratum}
    (artifact : TypedArtifact stratum) : Prop :=
  artifact.id.value ≠ 0 ∧
  artifact.location.key ≠ "" ∧
  artifact.location.sourceUnit.value ≠ 0 ∧
  artifact.snapshot.value ≠ 0 ∧
  artifact.contentHash.value ≠ ""

end TypedArtifact

/-- Existential packaging used only for a finite heterogeneous graph. -/
structure AnyTypedArtifact where
  stratum : ArtifactStratum
  artifact : TypedArtifact stratum

/-- A source-bound candidate change; it is not an applied mutation. -/
structure CandidateArtifactChange
    {stratum : ArtifactStratum} (artifact : TypedArtifact stratum) where
  id : RecordId
  artifactWellFormed : artifact.WellFormed
  beforeHash : ContentHash
  afterHash : ContentHash
  beforeMatchesArtifact : beforeHash = artifact.contentHash
  afterHashNonempty : afterHash.value ≠ ""
  changed : beforeHash ≠ afterHash
  evidence : Finset RecordId
  candidateOnly : Bool
  mutationAuthority : Bool

namespace CandidateArtifactChange

def CandidateScoped {stratum : ArtifactStratum}
    {artifact : TypedArtifact stratum}
    (change : CandidateArtifactChange artifact) : Prop :=
  change.id.value ≠ 0 ∧ change.evidence.Nonempty ∧
    change.candidateOnly = true ∧ change.mutationAuthority = false

theorem cannot_authorize_mutation {stratum : ArtifactStratum}
    {artifact : TypedArtifact stratum}
    (change : CandidateArtifactChange artifact)
    (scopeProof : change.CandidateScoped) :
    change.mutationAuthority = false :=
  scopeProof.2.2.2

end CandidateArtifactChange

/-! ## Bidirectional inter-reliance and B-to-A propagation -/

/-- Observable source-structure relationships between artifacts. -/
inductive InterRelianceKind
  | imports
  | generates
  | verifies
  | realizes
  | caches
  | executes
  | reflects
  deriving DecidableEq, Repr, Inhabited, Fintype

/-- A typed review obligation at a dependent target. -/
structure ImpactObligation (targetStratum : ArtifactStratum) where
  id : RecordId
  target : TypedArtifact targetStratum
  dependency : DependencyId
  sourceChange : RecordId
  requiredReview : RecordId
  residual : Option ResidualId

/--
An exact two-way inter-reliance edge.  Each propagation function returns an
obligation whose target is proved to be the opposite endpoint.
-/
structure InterRelianceEdge
    {leftStratum rightStratum : ArtifactStratum}
    (left : TypedArtifact leftStratum)
    (right : TypedArtifact rightStratum) where
  dependency : DependencyId
  leftToRightKind : InterRelianceKind
  rightToLeftKind : InterRelianceKind
  propagateLeftToRight :
    CandidateArtifactChange left → ImpactObligation rightStratum
  propagateRightToLeft :
    CandidateArtifactChange right → ImpactObligation leftStratum
  leftToRightTargetsRight : ∀ change,
    (propagateLeftToRight change).target = right
  rightToLeftTargetsLeft : ∀ change,
    (propagateRightToLeft change).target = left
  leftToRightDependencyExact : ∀ change,
    (propagateLeftToRight change).dependency = dependency
  rightToLeftDependencyExact : ∀ change,
    (propagateRightToLeft change).dependency = dependency
  leftToRightChangeExact : ∀ change,
    (propagateLeftToRight change).sourceChange = change.id
  rightToLeftChangeExact : ∀ change,
    (propagateRightToLeft change).sourceChange = change.id
  leftToRightReviewNonzero : ∀ change,
    (propagateLeftToRight change).requiredReview.value ≠ 0
  rightToLeftReviewNonzero : ∀ change,
    (propagateRightToLeft change).requiredReview.value ≠ 0

namespace InterRelianceEdge

/-- A change at location B produces an exact impact obligation at location A. -/
theorem change_at_b_reflects_at_a
    {leftStratum rightStratum : ArtifactStratum}
    {locationA : TypedArtifact leftStratum}
    {locationB : TypedArtifact rightStratum}
    (edge : InterRelianceEdge locationA locationB)
    (changeAtB : CandidateArtifactChange locationB) :
    ∃ impactAtA,
      impactAtA = edge.propagateRightToLeft changeAtB ∧
      impactAtA.target = locationA ∧
      impactAtA.dependency = edge.dependency ∧
      impactAtA.sourceChange = changeAtB.id ∧
      impactAtA.requiredReview.value ≠ 0 := by
  refine ⟨edge.propagateRightToLeft changeAtB, rfl,
    edge.rightToLeftTargetsLeft changeAtB,
    edge.rightToLeftDependencyExact changeAtB,
    edge.rightToLeftChangeExact changeAtB,
    edge.rightToLeftReviewNonzero changeAtB⟩

/-- Symmetrically, a change at A produces an exact obligation at B. -/
theorem change_at_a_reflects_at_b
    {leftStratum rightStratum : ArtifactStratum}
    {locationA : TypedArtifact leftStratum}
    {locationB : TypedArtifact rightStratum}
    (edge : InterRelianceEdge locationA locationB)
    (changeAtA : CandidateArtifactChange locationA) :
    ∃ impactAtB,
      impactAtB = edge.propagateLeftToRight changeAtA ∧
      impactAtB.target = locationB ∧
      impactAtB.dependency = edge.dependency ∧
      impactAtB.sourceChange = changeAtA.id ∧
      impactAtB.requiredReview.value ≠ 0 := by
  refine ⟨edge.propagateLeftToRight changeAtA, rfl,
    edge.leftToRightTargetsRight changeAtA,
    edge.leftToRightDependencyExact changeAtA,
    edge.leftToRightChangeExact changeAtA,
    edge.leftToRightReviewNonzero changeAtA⟩

end InterRelianceEdge

/-- A witnessed two-way balancing pass over one inter-reliance edge. -/
structure BidirectionalImpactBalance
    {leftStratum rightStratum : ArtifactStratum}
    {left : TypedArtifact leftStratum}
    {right : TypedArtifact rightStratum} where
  edge : InterRelianceEdge left right
  changeAtLeft : CandidateArtifactChange left
  changeAtRight : CandidateArtifactChange right
  impactAtLeft : ImpactObligation leftStratum
  impactAtRight : ImpactObligation rightStratum
  rightReflectedAtLeft :
    impactAtLeft = edge.propagateRightToLeft changeAtRight
  leftReflectedAtRight :
    impactAtRight = edge.propagateLeftToRight changeAtLeft
  candidateOnly : Bool
  mutationAuthority : Bool

namespace BidirectionalImpactBalance

def CandidateScoped
    {leftStratum rightStratum : ArtifactStratum}
    {left : TypedArtifact leftStratum}
    {right : TypedArtifact rightStratum}
    (balance : BidirectionalImpactBalance (left := left) (right := right)) : Prop :=
  balance.changeAtLeft.CandidateScoped ∧
  balance.changeAtRight.CandidateScoped ∧
  balance.candidateOnly = true ∧
  balance.mutationAuthority = false

/-- A balancing pass creates review obligations but no mutation authority. -/
theorem balance_not_authority
    {leftStratum rightStratum : ArtifactStratum}
    {left : TypedArtifact leftStratum}
    {right : TypedArtifact rightStratum}
    (balance : BidirectionalImpactBalance (left := left) (right := right))
    (scopeProof : balance.CandidateScoped) :
    balance.mutationAuthority = false :=
  scopeProof.2.2.2

end BidirectionalImpactBalance

/-! ## Evidence-bound accuracy-to-precision refinement -/

/-- Separate target-relative accuracy and declared precision coordinates. -/
@[ext] structure ArtifactQuality where
  accuracy : ScoreMillionths
  precision : ScoreMillionths
  deriving DecidableEq, Repr

/-- Artifact-indexed evaluators denoted by one cross-stratum metric record. -/
structure CrossStratumQualityEvaluator
    (sourceStratum targetStratum : ArtifactStratum) where
  sourceAccuracy : TypedArtifact sourceStratum → ScoreMillionths
  targetAccuracy : TypedArtifact targetStratum → ScoreMillionths
  sourcePrecision : TypedArtifact sourceStratum → ScoreMillionths
  targetPrecision : TypedArtifact targetStratum → ScoreMillionths

/-- A resolved comparison target pinned independently of either artifact snapshot. -/
structure ArtifactComparisonTarget where
  id : RecordId
  snapshot : ContentHash
  evidence : Finset RecordId
  evidencePresent : evidence.Nonempty
  idNonzero : id.value ≠ 0
  snapshotNonempty : snapshot.value ≠ ""

/-- A named balance predicate over quality and uncertainty coordinates. -/
structure ArtifactBalanceCriterion where
  id : RecordId
  accepts : ArtifactQuality → ArtifactQuality →
    ScoreMillionths → ScoreMillionths → Prop
  idNonzero : id.value ≠ 0

/-- The only immediate steps admitted by the two refinement lanes. -/
inductive ImmediateArtifactRefinement :
    ArtifactStratum → ArtifactStratum → Prop
  | ontologyToRust : ImmediateArtifactRefinement .ontology .rustSource
  | rustToLean : ImmediateArtifactRefinement .rustSource .leanProof
  | memoryToCompute : ImmediateArtifactRefinement .memory .compute

namespace ImmediateArtifactRefinement

/-- Every admitted refinement stays within its lane. -/
theorem same_lane {source target : ArtifactStratum}
    (step : ImmediateArtifactRefinement source target) :
    source.lane = target.lane := by
  cases step <;> rfl

/-- Every admitted refinement advances exactly one lane rank. -/
theorem advances_one {source target : ArtifactStratum}
    (step : ImmediateArtifactRefinement source target) :
    target.laneRank = source.laneRank + 1 := by
  cases step <;> rfl

end ImmediateArtifactRefinement

/--
A lawful refinement witness retains accuracy, strictly increases precision,
and names nonempty evidence.  It remains candidate-only and nonauthoritative.
-/
structure EvidenceBoundRefinement
    (sourceStratum targetStratum : ArtifactStratum) where
  source : TypedArtifact sourceStratum
  target : TypedArtifact targetStratum
  immediate : ImmediateArtifactRefinement sourceStratum targetStratum
  sourceQuality : ArtifactQuality
  targetQuality : ArtifactQuality
  sourceUncertainty : ScoreMillionths
  targetUncertainty : ScoreMillionths
  accuracyMetric : RecordId
  targetRecord : RecordId
  balanceCriterion : RecordId
  evidenceSnapshot : ContentHash
  comparisonTarget : ArtifactComparisonTarget
  qualityEvaluator :
    CrossStratumQualityEvaluator sourceStratum targetStratum
  resolvedBalanceCriterion : ArtifactBalanceCriterion
  resolveTarget : RecordId → Option ArtifactComparisonTarget
  resolveMetric : RecordId → Option
    (CrossStratumQualityEvaluator sourceStratum targetStratum)
  resolveBalanceCriterion : RecordId → Option ArtifactBalanceCriterion
  targetResolved : resolveTarget targetRecord = some comparisonTarget
  metricResolved : resolveMetric accuracyMetric = some qualityEvaluator
  balanceCriterionResolved :
    resolveBalanceCriterion balanceCriterion = some resolvedBalanceCriterion
  targetIdentityExact : comparisonTarget.id = targetRecord
  comparisonTargetSnapshotExact :
    comparisonTarget.snapshot = evidenceSnapshot
  comparisonTargetEvidenceExact : comparisonTarget.evidence = evidence
  balanceCriterionIdentityExact :
    resolvedBalanceCriterion.id = balanceCriterion
  evidence : Finset RecordId
  evidencePresent : evidence.Nonempty
  contextNonempty :
    accuracyMetric.value ≠ 0 ∧ targetRecord.value ≠ 0 ∧
      balanceCriterion.value ≠ 0 ∧ evidenceSnapshot.value ≠ ""
  metricSupported : accuracyMetric ∈ evidence
  targetSupported : targetRecord ∈ evidence
  balanceCriterionSupported : balanceCriterion ∈ evidence
  sourceAccuracyMeasured :
    qualityEvaluator.sourceAccuracy source = sourceQuality.accuracy
  targetAccuracyMeasured :
    qualityEvaluator.targetAccuracy target = targetQuality.accuracy
  sourcePrecisionMeasured :
    qualityEvaluator.sourcePrecision source = sourceQuality.precision
  targetPrecisionMeasured :
    qualityEvaluator.targetPrecision target = targetQuality.precision
  balanceCriterionAccepts :
    resolvedBalanceCriterion.accepts sourceQuality targetQuality
      sourceUncertainty targetUncertainty
  accuracyRetained : sourceQuality.accuracy ≤ targetQuality.accuracy
  precisionIncreased : sourceQuality.precision < targetQuality.precision
  uncertaintyNotIncreased : targetUncertainty ≤ sourceUncertainty
  candidateOnly : Bool
  mutationAuthority : Bool

namespace EvidenceBoundRefinement

def CandidateScoped {source target : ArtifactStratum}
    (refinement : EvidenceBoundRefinement source target) : Prop :=
  refinement.candidateOnly = true ∧
  refinement.mutationAuthority = false

/-- Monotone improvement cannot be certified without an explicit evidence record. -/
theorem improvement_requires_explicit_evidence
    {source target : ArtifactStratum}
    (refinement : EvidenceBoundRefinement source target) :
    ∃ evidenceRecord, evidenceRecord ∈ refinement.evidence :=
  refinement.evidencePresent

/-- Metric, target, and balance criterion share one explicit evidence context. -/
theorem comparison_context_is_supported
    {source target : ArtifactStratum}
    (refinement : EvidenceBoundRefinement source target) :
    refinement.accuracyMetric ∈ refinement.evidence ∧
      refinement.targetRecord ∈ refinement.evidence ∧
      refinement.balanceCriterion ∈ refinement.evidence :=
  ⟨refinement.metricSupported, refinement.targetSupported,
    refinement.balanceCriterionSupported⟩

/-- The resolved comparison target carries the exact refinement evidence context. -/
theorem comparison_target_is_evidence_bound
    {source target : ArtifactStratum}
    (refinement : EvidenceBoundRefinement source target) :
    refinement.comparisonTarget.snapshot = refinement.evidenceSnapshot ∧
      refinement.comparisonTarget.evidence = refinement.evidence :=
  ⟨refinement.comparisonTargetSnapshotExact,
    refinement.comparisonTargetEvidenceExact⟩

/-- Both quality coordinates are evaluations of the exact source/target artifacts. -/
theorem measurements_are_artifact_bound
    {source target : ArtifactStratum}
    (refinement : EvidenceBoundRefinement source target) :
    refinement.qualityEvaluator.sourceAccuracy refinement.source =
        refinement.sourceQuality.accuracy ∧
      refinement.qualityEvaluator.targetAccuracy refinement.target =
        refinement.targetQuality.accuracy ∧
      refinement.qualityEvaluator.sourcePrecision refinement.source =
        refinement.sourceQuality.precision ∧
      refinement.qualityEvaluator.targetPrecision refinement.target =
        refinement.targetQuality.precision :=
  ⟨refinement.sourceAccuracyMeasured, refinement.targetAccuracyMeasured,
    refinement.sourcePrecisionMeasured, refinement.targetPrecisionMeasured⟩

/-- The named records resolve to the exact target, evaluators, and criterion used. -/
theorem comparison_records_resolve
    {source target : ArtifactStratum}
    (refinement : EvidenceBoundRefinement source target) :
    refinement.resolveTarget refinement.targetRecord =
        some refinement.comparisonTarget ∧
      refinement.resolveMetric refinement.accuracyMetric =
        some refinement.qualityEvaluator ∧
      refinement.resolveBalanceCriterion refinement.balanceCriterion =
        some refinement.resolvedBalanceCriterion :=
  ⟨refinement.targetResolved, refinement.metricResolved,
    refinement.balanceCriterionResolved⟩

/-- Accuracy is retained rather than traded away for increased precision. -/
theorem accuracy_is_monotone {source target : ArtifactStratum}
    (refinement : EvidenceBoundRefinement source target) :
    refinement.sourceQuality.accuracy ≤ refinement.targetQuality.accuracy :=
  refinement.accuracyRetained

/-- Precision strictly increases across a certified immediate refinement. -/
theorem precision_is_strictly_monotone
    {source target : ArtifactStratum}
    (refinement : EvidenceBoundRefinement source target) :
    refinement.sourceQuality.precision < refinement.targetQuality.precision :=
  refinement.precisionIncreased

/-- Refinement cannot hide a precision gain behind increased declared uncertainty. -/
theorem uncertainty_is_nonincreasing
    {source target : ArtifactStratum}
    (refinement : EvidenceBoundRefinement source target) :
    refinement.targetUncertainty ≤ refinement.sourceUncertainty :=
  refinement.uncertaintyNotIncreased

theorem refinement_not_authority {source target : ArtifactStratum}
    (refinement : EvidenceBoundRefinement source target)
    (scopeProof : refinement.CandidateScoped) :
    refinement.mutationAuthority = false :=
  scopeProof.2

end EvidenceBoundRefinement

/-- A linked ontology → Rust source → Lean proof refinement chain. -/
structure OntologyRustLeanRefinement where
  ontologyToRust : EvidenceBoundRefinement .ontology .rustSource
  rustToLean : EvidenceBoundRefinement .rustSource .leanProof
  sharedRustArtifact :
    ontologyToRust.target = rustToLean.source
  sharedRustQuality :
    ontologyToRust.targetQuality = rustToLean.sourceQuality
  sharedRustUncertainty :
    ontologyToRust.targetUncertainty = rustToLean.sourceUncertainty
  sharedAccuracyMetric :
    ontologyToRust.accuracyMetric = rustToLean.accuracyMetric
  sharedTargetRecord :
    ontologyToRust.targetRecord = rustToLean.targetRecord
  sharedBalanceCriterion :
    ontologyToRust.balanceCriterion = rustToLean.balanceCriterion
  sharedEvidenceSnapshot :
    ontologyToRust.evidenceSnapshot = rustToLean.evidenceSnapshot
  sharedEvidence :
    ontologyToRust.evidence = rustToLean.evidence
  sharedComparisonTarget :
    ontologyToRust.comparisonTarget = rustToLean.comparisonTarget
  sharedResolvedBalanceCriterion :
    ontologyToRust.resolvedBalanceCriterion =
      rustToLean.resolvedBalanceCriterion

namespace OntologyRustLeanRefinement

/-- Accuracy admitted at the ontology anchor is retained through Lean. -/
theorem ontology_accuracy_retained_in_lean
    (chain : OntologyRustLeanRefinement) :
    chain.ontologyToRust.sourceQuality.accuracy ≤
      chain.rustToLean.targetQuality.accuracy := by
  have second := chain.rustToLean.accuracyRetained
  rw [← chain.sharedRustQuality] at second
  exact Nat.le_trans chain.ontologyToRust.accuracyRetained second

/-- Precision strictly increases from the ontology anchor through Rust to Lean. -/
theorem ontology_to_lean_precision_increases
    (chain : OntologyRustLeanRefinement) :
    chain.ontologyToRust.sourceQuality.precision <
      chain.rustToLean.targetQuality.precision := by
  have second := chain.rustToLean.precisionIncreased
  rw [← chain.sharedRustQuality] at second
  exact Nat.lt_trans chain.ontologyToRust.precisionIncreased second

/-- Declared uncertainty cannot increase from the ontology anchor through Lean. -/
theorem ontology_to_lean_uncertainty_nonincreasing
    (chain : OntologyRustLeanRefinement) :
    chain.rustToLean.targetUncertainty ≤
      chain.ontologyToRust.sourceUncertainty := by
  have second := chain.rustToLean.uncertaintyNotIncreased
  rw [← chain.sharedRustUncertainty] at second
  exact Nat.le_trans second chain.ontologyToRust.uncertaintyNotIncreased

/-- Both links have explicit evidence; no implicit compiler authority is assumed. -/
theorem both_steps_have_evidence (chain : OntologyRustLeanRefinement) :
    chain.ontologyToRust.evidence.Nonempty ∧
      chain.rustToLean.evidence.Nonempty :=
  ⟨chain.ontologyToRust.evidencePresent,
    chain.rustToLean.evidencePresent⟩

/-- The formal lane compares quality only under one shared named context. -/
theorem one_comparison_context (chain : OntologyRustLeanRefinement) :
    chain.ontologyToRust.accuracyMetric =
        chain.rustToLean.accuracyMetric ∧
      chain.ontologyToRust.targetRecord =
        chain.rustToLean.targetRecord ∧
      chain.ontologyToRust.balanceCriterion =
        chain.rustToLean.balanceCriterion ∧
      chain.ontologyToRust.evidenceSnapshot =
        chain.rustToLean.evidenceSnapshot ∧
      chain.ontologyToRust.evidence =
        chain.rustToLean.evidence ∧
      chain.ontologyToRust.comparisonTarget =
        chain.rustToLean.comparisonTarget ∧
      chain.ontologyToRust.resolvedBalanceCriterion =
        chain.rustToLean.resolvedBalanceCriterion :=
  ⟨chain.sharedAccuracyMetric, chain.sharedTargetRecord,
    chain.sharedBalanceCriterion, chain.sharedEvidenceSnapshot,
    chain.sharedEvidence, chain.sharedComparisonTarget,
    chain.sharedResolvedBalanceCriterion⟩

end OntologyRustLeanRefinement

/-- A linked memory → compute accuracy-to-precision refinement. -/
structure MemoryComputeRefinement where
  memoryToCompute : EvidenceBoundRefinement .memory .compute

namespace MemoryComputeRefinement

theorem memory_accuracy_retained_in_compute
    (chain : MemoryComputeRefinement) :
    chain.memoryToCompute.sourceQuality.accuracy ≤
      chain.memoryToCompute.targetQuality.accuracy :=
  chain.memoryToCompute.accuracyRetained

theorem memory_to_compute_precision_increases
    (chain : MemoryComputeRefinement) :
    chain.memoryToCompute.sourceQuality.precision <
      chain.memoryToCompute.targetQuality.precision :=
  chain.memoryToCompute.precisionIncreased

theorem step_has_evidence (chain : MemoryComputeRefinement) :
    chain.memoryToCompute.evidence.Nonempty :=
  chain.memoryToCompute.evidencePresent

end MemoryComputeRefinement

/-! ## Finite host capability specialization -/

/-- Finite host features that a candidate execution plan may select. -/
inductive HostFeature
  | scalarCpu
  | vectorInstructions
  | hardwareThreads
  | gpu
  | neuralAccelerator
  | persistentMemory
  | secureExecution
  deriving DecidableEq, Repr, Inhabited, Fintype

/-- A pinned capability observation of the human's host device. -/
structure HostCapabilityProfile where
  id : RecordId
  observationSnapshot : ContentHash
  availableFeatures : Finset HostFeature
  memoryUnits : Nat
  computeUnits : Nat
  maximumArtifacts : Nat
  maximumDependencies : Nat
  maximumReflectionRounds : Nat
  deriving DecidableEq

/-- Resource and feature demand of one finite global-reflection execution. -/
structure HostReflectionDemand where
  memoryUnits : Nat
  computeUnits : Nat
  artifactCount : Nat
  dependencyCount : Nat
  reflectionRounds : Nat
  requiredFeatures : Finset HostFeature
  deriving DecidableEq

namespace HostReflectionDemand

def Fits (demand : HostReflectionDemand)
    (host : HostCapabilityProfile) : Prop :=
  demand.memoryUnits ≤ host.memoryUnits ∧
  demand.computeUnits ≤ host.computeUnits ∧
  demand.artifactCount ≤ host.maximumArtifacts ∧
  demand.dependencyCount ≤ host.maximumDependencies ∧
  demand.reflectionRounds ≤ host.maximumReflectionRounds ∧
  demand.requiredFeatures ⊆ host.availableFeatures

end HostReflectionDemand

/-- A theory-pinned execution plan specialized to observed host capabilities. -/
structure HostSpecializedReflectionPlan where
  host : HostCapabilityProfile
  demand : HostReflectionDemand
  fits : demand.Fits host
  selectedFeatures : Finset HostFeature
  requiredFeaturesSelected : demand.requiredFeatures ⊆ selectedFeatures
  selectedFeaturesAvailable : selectedFeatures ⊆ host.availableFeatures
  theoryBuild : ContentHash
  theoryPinned : theoryBuild.value ≠ ""
  ontologySnapshot : OntologySnapshotId
  ontologyPinned : ontologySnapshot.value ≠ 0
  candidateOnly : Bool
  mutationAuthority : Bool

namespace HostSpecializedReflectionPlan

def CandidateScoped (plan : HostSpecializedReflectionPlan) : Prop :=
  plan.candidateOnly = true ∧ plan.mutationAuthority = false

/-- Every required feature selected by the plan is present on the pinned host. -/
theorem required_feature_is_host_available
    (plan : HostSpecializedReflectionPlan)
    {feature : HostFeature}
    (required : feature ∈ plan.demand.requiredFeatures) :
    feature ∈ plan.host.availableFeatures :=
  plan.selectedFeaturesAvailable (plan.requiredFeaturesSelected required)

/-- Host specialization is execution evidence, never mutation authority. -/
theorem specialization_not_authority
    (plan : HostSpecializedReflectionPlan)
    (scopeProof : plan.CandidateScoped) :
    plan.mutationAuthority = false :=
  scopeProof.2

end HostSpecializedReflectionPlan

/-! ## Finite, reverse-complete global dependency graph -/

/-- Existential packaging of one proof-bearing typed inter-reliance edge. -/
structure AnyInterRelianceEdge where
  leftStratum : ArtifactStratum
  rightStratum : ArtifactStratum
  left : TypedArtifact leftStratum
  right : TypedArtifact rightStratum
  witness : InterRelianceEdge left right

/--
A finite heterogeneous artifact graph with an explicit reverse edge for every
edge.  Completeness is scoped to `Fin nodeCount` and `Fin edgeCount`.
-/
structure FiniteInterRelianceGraph where
  nodeCount : Nat
  node : Fin nodeCount → AnyTypedArtifact
  edgeCount : Nat
  edgeSource : Fin edgeCount → Fin nodeCount
  edgeTarget : Fin edgeCount → Fin nodeCount
  edgeDependency : Fin edgeCount → DependencyId
  edgeKind : Fin edgeCount → InterRelianceKind
  edgeWitness : Fin edgeCount → AnyInterRelianceEdge
  edgeSourceExact : ∀ edge,
    node (edgeSource edge) = {
      stratum := (edgeWitness edge).leftStratum
      artifact := (edgeWitness edge).left
    }
  edgeTargetExact : ∀ edge,
    node (edgeTarget edge) = {
      stratum := (edgeWitness edge).rightStratum
      artifact := (edgeWitness edge).right
    }
  edgeDependencyExact : ∀ edge,
    edgeDependency edge = (edgeWitness edge).witness.dependency
  edgeKindExact : ∀ edge,
    edgeKind edge = (edgeWitness edge).witness.leftToRightKind
  reverseEdge : Fin edgeCount → Fin edgeCount
  reverseInvolutive : ∀ edge, reverseEdge (reverseEdge edge) = edge
  reverseSource : ∀ edge, edgeSource (reverseEdge edge) = edgeTarget edge
  reverseTarget : ∀ edge, edgeTarget (reverseEdge edge) = edgeSource edge
  reverseDependency : ∀ edge,
    edgeDependency (reverseEdge edge) = edgeDependency edge

namespace FiniteInterRelianceGraph

/-- The indexed relation kind is the left-to-right kind of its typed witness. -/
theorem edge_kind_is_typed_relation
    (graph : FiniteInterRelianceGraph)
    (edge : Fin graph.edgeCount) :
    graph.edgeKind edge =
      (graph.edgeWitness edge).witness.leftToRightKind :=
  graph.edgeKindExact edge

/-- Every materialized dependency has an exact return dependency. -/
theorem every_edge_has_return (graph : FiniteInterRelianceGraph)
    (edge : Fin graph.edgeCount) :
    ∃ returnEdge,
      graph.edgeSource returnEdge = graph.edgeTarget edge ∧
      graph.edgeTarget returnEdge = graph.edgeSource edge ∧
      graph.edgeDependency returnEdge = graph.edgeDependency edge ∧
      graph.reverseEdge returnEdge = edge := by
  refine ⟨graph.reverseEdge edge, graph.reverseSource edge,
    graph.reverseTarget edge, graph.reverseDependency edge, ?_⟩
  exact graph.reverseInvolutive edge

/-- Every indexed graph edge carries an actual typed propagation witness. -/
theorem edge_has_typed_inter_reliance
    (graph : FiniteInterRelianceGraph)
    (edge : Fin graph.edgeCount) :
    graph.edgeKind edge =
        (graph.edgeWitness edge).witness.leftToRightKind ∧
      graph.edgeDependency edge =
        (graph.edgeWitness edge).witness.dependency ∧
      graph.node (graph.edgeSource edge) = {
        stratum := (graph.edgeWitness edge).leftStratum
        artifact := (graph.edgeWitness edge).left
      } ∧
      graph.node (graph.edgeTarget edge) = {
        stratum := (graph.edgeWitness edge).rightStratum
        artifact := (graph.edgeWitness edge).right
      } :=
  ⟨graph.edgeKindExact edge, graph.edgeDependencyExact edge,
    graph.edgeSourceExact edge, graph.edgeTargetExact edge⟩

end FiniteInterRelianceGraph

/-! ## Agent-supervised global reflection without authority escalation -/

/--
One supervised execution over a finite graph.  Any output authority must be the
same authority already present at entry; the reflective output itself remains
candidate-only and has no mutation authority.
-/
structure SupervisedGlobalReflection
    (Agent : Type*) [DecidableEq Agent] where
  id : RecordId
  graph : FiniteInterRelianceGraph
  participants : Finset Agent
  supervisor : Agent
  supervisorParticipates : supervisor ∈ participants
  supervisionReceipt : ReceiptId
  hostPlan : HostSpecializedReflectionPlan
  nodeDemandExact : hostPlan.demand.artifactCount = graph.nodeCount
  dependencyDemandExact :
    hostPlan.demand.dependencyCount = graph.edgeCount
  executedRounds : Nat
  roundsWithinDemand : executedRounds ≤ hostPlan.demand.reflectionRounds
  entryAuthority : Option AuthorityId
  outputAuthority : Option AuthorityId
  outputAuthorityInherited : ∀ authority,
    outputAuthority = some authority → entryAuthority = some authority
  evidence : Finset RecordId
  residuals : Finset ResidualId
  candidateOnly : Bool
  mutationAuthority : Bool
  unboundedReflectionClaimed : Bool
  selfAuthorizingReflectionClaimed : Bool

namespace SupervisedGlobalReflection

def CandidateScoped {Agent : Type*} [DecidableEq Agent]
    (reflection : SupervisedGlobalReflection Agent) : Prop :=
  reflection.participants.Nonempty ∧
  reflection.supervisionReceipt.value ≠ 0 ∧
  reflection.hostPlan.CandidateScoped ∧
  reflection.candidateOnly = true ∧
  reflection.mutationAuthority = false ∧
  reflection.unboundedReflectionClaimed = false ∧
  reflection.selfAuthorizingReflectionClaimed = false

/-- Supervision is explicit: the supervisor belongs to the finite participant set. -/
theorem supervisor_is_participant
    {Agent : Type*} [DecidableEq Agent]
    (reflection : SupervisedGlobalReflection Agent) :
    reflection.supervisor ∈ reflection.participants :=
  reflection.supervisorParticipates

/-- Reflection cannot mint a new authority identifier. -/
theorem no_authority_escalation
    {Agent : Type*} [DecidableEq Agent]
    (reflection : SupervisedGlobalReflection Agent)
    {authority : AuthorityId}
    (output : reflection.outputAuthority = some authority) :
    reflection.entryAuthority = some authority :=
  reflection.outputAuthorityInherited authority output

/-- Agent supervision and global coverage do not create mutation authority. -/
theorem supervision_not_mutation_authority
    {Agent : Type*} [DecidableEq Agent]
    (reflection : SupervisedGlobalReflection Agent)
    (scopeProof : reflection.CandidateScoped) :
    reflection.mutationAuthority = false :=
  scopeProof.2.2.2.2.1

/-- A scoped execution is explicitly finite and cannot claim self-authorization. -/
theorem finite_candidate_boundary
    {Agent : Type*} [DecidableEq Agent]
    (reflection : SupervisedGlobalReflection Agent)
    (scopeProof : reflection.CandidateScoped) :
    reflection.mutationAuthority = false ∧
      reflection.unboundedReflectionClaimed = false ∧
      reflection.selfAuthorizingReflectionClaimed = false :=
  ⟨scopeProof.2.2.2.2.1,
    scopeProof.2.2.2.2.2.1,
    scopeProof.2.2.2.2.2.2⟩

/-- The materialized artifact graph fits the pinned host artifact budget. -/
theorem graph_nodes_fit_host
    {Agent : Type*} [DecidableEq Agent]
    (reflection : SupervisedGlobalReflection Agent) :
    reflection.graph.nodeCount ≤ reflection.hostPlan.host.maximumArtifacts := by
  rcases reflection.hostPlan.fits with
    ⟨_memory, _compute, artifactBound, _dependencies, _rounds, _features⟩
  simpa [reflection.nodeDemandExact] using artifactBound

/-- The materialized dependency graph fits the pinned host edge budget. -/
theorem graph_edges_fit_host
    {Agent : Type*} [DecidableEq Agent]
    (reflection : SupervisedGlobalReflection Agent) :
    reflection.graph.edgeCount ≤
      reflection.hostPlan.host.maximumDependencies := by
  rcases reflection.hostPlan.fits with
    ⟨_memory, _compute, _artifacts, dependencyBound, _rounds, _features⟩
  simpa [reflection.dependencyDemandExact] using dependencyBound

/-- Executed reflection rounds cannot exceed the host's finite round budget. -/
theorem rounds_fit_host
    {Agent : Type*} [DecidableEq Agent]
    (reflection : SupervisedGlobalReflection Agent) :
    reflection.executedRounds ≤
      reflection.hostPlan.host.maximumReflectionRounds := by
  rcases reflection.hostPlan.fits with
    ⟨_memory, _compute, _artifacts, _dependencies, roundBound, _features⟩
  exact le_trans reflection.roundsWithinDemand roundBound

end SupervisedGlobalReflection

/-! ## Lawful correction or explicit residual -/

/-!
One direction-specific discharge binds the actual typed change and actual
`ImpactObligation` produced by the indexed `InterRelianceEdge`. Its evidence
contains the change evidence, correction candidate, and exact required-review
record. Thus a nominal nonzero identifier cannot stand in for discharge.
-/
inductive TypedEdgeImpactDischarge
    (edge : AnyInterRelianceEdge) (candidate : RecordId) where
  | leftToRight
      (change : CandidateArtifactChange edge.left)
      (changeScoped : change.CandidateScoped)
      (impact : ImpactObligation edge.rightStratum)
      (impactExact :
        impact = edge.witness.propagateLeftToRight change)
      (evidence : Finset RecordId)
      (evidencePresent : evidence.Nonempty)
      (changeEvidenceIncluded : change.evidence ⊆ evidence)
      (candidateReferenced : candidate ∈ evidence)
      (requiredReviewDischarged : impact.requiredReview ∈ evidence)
  | rightToLeft
      (change : CandidateArtifactChange edge.right)
      (changeScoped : change.CandidateScoped)
      (impact : ImpactObligation edge.leftStratum)
      (impactExact :
        impact = edge.witness.propagateRightToLeft change)
      (evidence : Finset RecordId)
      (evidencePresent : evidence.Nonempty)
      (changeEvidenceIncluded : change.evidence ⊆ evidence)
      (candidateReferenced : candidate ∈ evidence)
      (requiredReviewDischarged : impact.requiredReview ∈ evidence)

namespace TypedEdgeImpactDischarge

/-- Every typed discharge has an explicit evidence record. -/
theorem evidence_is_nonempty
    {edge : AnyInterRelianceEdge} {candidate : RecordId}
    (discharge : TypedEdgeImpactDischarge edge candidate) :
    ∃ evidenceRecord : RecordId, match discharge with
      | .leftToRight _ _ _ _ evidence _ _ _ _ =>
          evidenceRecord ∈ evidence
      | .rightToLeft _ _ _ _ evidence _ _ _ _ =>
          evidenceRecord ∈ evidence := by
  cases discharge with
  | leftToRight _ _ _ _ _ evidencePresent _ _ _ =>
      exact evidencePresent
  | rightToLeft _ _ _ _ _ evidencePresent _ _ _ =>
      exact evidencePresent

end TypedEdgeImpactDischarge

/-- Actual typed impact discharge for every edge of one finite graph. -/
structure GraphImpactDischarge
    (graph : FiniteInterRelianceGraph) (candidate : RecordId) where
  candidateNonzero : candidate.value ≠ 0
  discharge : ∀ edge,
    TypedEdgeImpactDischarge (graph.edgeWitness edge) candidate

/-- A reviewable correction candidate with before/after quality coordinates. -/
structure GlobalCorrectionCandidate where
  id : RecordId
  supervisionReceipt : ReceiptId
  evidence : Finset RecordId
  accuracyMetric : RecordId
  targetRecord : RecordId
  balanceCriterion : RecordId
  evidenceSnapshot : ContentHash
  beforeQuality : ArtifactQuality
  afterQuality : ArtifactQuality
  impactDischarged : Bool
  withinHostBudget : Bool
  candidateOnly : Bool
  mutationAuthority : Bool
  deriving DecidableEq

namespace GlobalCorrectionCandidate

/-- The correction's metric, target, and balance criterion are evidence-bound. -/
def ContextBound (candidate : GlobalCorrectionCandidate) : Prop :=
  candidate.accuracyMetric.value ≠ 0 ∧
  candidate.targetRecord.value ≠ 0 ∧
  candidate.balanceCriterion.value ≠ 0 ∧
  candidate.evidenceSnapshot.value ≠ "" ∧
  candidate.accuracyMetric ∈ candidate.evidence ∧
  candidate.targetRecord ∈ candidate.evidence ∧
  candidate.balanceCriterion ∈ candidate.evidence

/--
Lawfulness is conjunctive.  In particular, improvement requires evidence,
accuracy retention, strict precision growth, supervision, impact closure, and
host-budget compliance while remaining candidate-only and nonauthoritative.
-/
def Lawful (candidate : GlobalCorrectionCandidate) : Prop :=
  candidate.id.value ≠ 0 ∧
  candidate.supervisionReceipt.value ≠ 0 ∧
  candidate.evidence.Nonempty ∧
  candidate.ContextBound ∧
  candidate.beforeQuality.accuracy ≤ candidate.afterQuality.accuracy ∧
  candidate.beforeQuality.precision < candidate.afterQuality.precision ∧
  candidate.impactDischarged = true ∧
  candidate.withinHostBudget = true ∧
  candidate.candidateOnly = true ∧
  candidate.mutationAuthority = false

/-- No monotone-improvement claim is lawful without explicit evidence. -/
theorem lawful_improvement_requires_evidence
    (candidate : GlobalCorrectionCandidate)
    (lawful : candidate.Lawful) :
    ∃ evidenceRecord, evidenceRecord ∈ candidate.evidence :=
  lawful.2.2.1

/-- Every lawful correction resolves a nonempty evidence-bound comparison context. -/
theorem lawful_context_is_bound
    (candidate : GlobalCorrectionCandidate)
    (lawful : candidate.Lawful) : candidate.ContextBound :=
  lawful.2.2.2.1

/-- Every lawful correction remains nonauthoritative. -/
theorem lawful_correction_not_authority
    (candidate : GlobalCorrectionCandidate)
    (lawful : candidate.Lawful) :
    candidate.mutationAuthority = false :=
  lawful.2.2.2.2.2.2.2.2.2

end GlobalCorrectionCandidate

/-- A finite reflection either proposes a lawful candidate or records residue. -/
inductive GlobalReflectionResolution
  | proposed (candidate : GlobalCorrectionCandidate)
  | residual (residual : ResidualId)
  deriving DecidableEq

/-- Sound selection over a finite correction candidate set. -/
structure GlobalCorrectionSelection where
  graph : FiniteInterRelianceGraph
  candidates : Finset GlobalCorrectionCandidate
  resolution : GlobalReflectionResolution
  sound : match resolution with
    | .proposed candidate => candidate ∈ candidates ∧ candidate.Lawful
    | .residual residual =>
        residual.value ≠ 0 ∧
        ¬ ∃ candidate ∈ candidates, candidate.Lawful
  impactDischarge : ∀ candidate ∈ candidates,
    candidate.impactDischarged = true →
      GraphImpactDischarge graph candidate.id
  allCandidatesScoped : ∀ candidate ∈ candidates,
    candidate.candidateOnly = true ∧ candidate.mutationAuthority = false
  candidateOnly : Bool
  mutationAuthority : Bool

namespace GlobalCorrectionSelection

def CandidateScoped (selection : GlobalCorrectionSelection) : Prop :=
  selection.candidateOnly = true ∧
  selection.mutationAuthority = false ∧
  ∀ candidate ∈ selection.candidates,
    candidate.candidateOnly = true ∧ candidate.mutationAuthority = false

/-- If no finite candidate is lawful, the only sound result is explicit residue. -/
theorem residual_when_no_lawful_correction
    (selection : GlobalCorrectionSelection)
    (noneLawful :
      ¬ ∃ candidate ∈ selection.candidates, candidate.Lawful) :
    ∃ residual,
      selection.resolution = .residual residual ∧ residual.value ≠ 0 := by
  cases resolutionEq : selection.resolution with
  | proposed candidate =>
      have selected : candidate ∈ selection.candidates ∧ candidate.Lawful := by
        simpa [resolutionEq] using selection.sound
      exact (noneLawful ⟨candidate, selected.1, selected.2⟩).elim
  | residual residual =>
      have result := selection.sound
      rw [resolutionEq] at result
      exact ⟨residual, rfl, result.1⟩

/-- Candidate selection itself cannot authorize its proposed correction. -/
theorem selection_not_authority
    (selection : GlobalCorrectionSelection)
    (scopeProof : selection.CandidateScoped) :
    selection.mutationAuthority = false :=
  scopeProof.2.1

/-- Unselected alternatives cannot hide an authoritative candidate in the pool. -/
theorem every_candidate_not_authority
    (selection : GlobalCorrectionSelection)
    (candidate : GlobalCorrectionCandidate)
    (member : candidate ∈ selection.candidates) :
    candidate.mutationAuthority = false :=
  (selection.allCandidatesScoped candidate member).2

/-- Every selected lawful correction discharges every materialized graph edge. -/
def proposed_correctionGraphDischarge
    (selection : GlobalCorrectionSelection)
    {candidate : GlobalCorrectionCandidate}
    (selected : selection.resolution = .proposed candidate) :
    GraphImpactDischarge selection.graph candidate.id := by
  have sound := selection.sound
  rw [selected] at sound
  exact selection.impactDischarge candidate sound.1
    sound.2.2.2.2.2.2.2.1

end GlobalCorrectionSelection

/-! ## Integrated host-balanced reflection bundle -/

/--
The complete candidate bundle joins supervised finite reflection, both quality
refinement lanes, and lawful-or-residual correction selection.
-/
structure HostBalancedGlobalReflection
    (Agent : Type*) [DecidableEq Agent] where
  supervision : SupervisedGlobalReflection Agent
  formalRefinement : OntologyRustLeanRefinement
  executionRefinement : MemoryComputeRefinement
  correction : GlobalCorrectionSelection
  formalDependency : DependencyId
  proofDependency : DependencyId
  executionDependency : DependencyId
  correctionGraphAligned : correction.graph = supervision.graph
  ontologyArtifactNode : Fin supervision.graph.nodeCount
  rustArtifactNode : Fin supervision.graph.nodeCount
  leanArtifactNode : Fin supervision.graph.nodeCount
  memoryArtifactNode : Fin supervision.graph.nodeCount
  computeArtifactNode : Fin supervision.graph.nodeCount
  ontologyArtifactExact :
    supervision.graph.node ontologyArtifactNode = {
      stratum := .ontology
      artifact := formalRefinement.ontologyToRust.source
    }
  rustArtifactExact :
    supervision.graph.node rustArtifactNode = {
      stratum := .rustSource
      artifact := formalRefinement.ontologyToRust.target
    }
  leanArtifactExact :
    supervision.graph.node leanArtifactNode = {
      stratum := .leanProof
      artifact := formalRefinement.rustToLean.target
    }
  memoryArtifactExact :
    supervision.graph.node memoryArtifactNode = {
      stratum := .memory
      artifact := executionRefinement.memoryToCompute.source
    }
  computeArtifactExact :
    supervision.graph.node computeArtifactNode = {
      stratum := .compute
      artifact := executionRefinement.memoryToCompute.target
    }
  ontologyToRustEdge : Fin supervision.graph.edgeCount
  rustToLeanEdge : Fin supervision.graph.edgeCount
  memoryToComputeEdge : Fin supervision.graph.edgeCount
  ontologyToRustGraphBinding :
    supervision.graph.edgeSource ontologyToRustEdge = ontologyArtifactNode ∧
      supervision.graph.edgeTarget ontologyToRustEdge = rustArtifactNode ∧
      supervision.graph.edgeDependency ontologyToRustEdge = formalDependency
  rustToLeanGraphBinding :
    supervision.graph.edgeSource rustToLeanEdge = rustArtifactNode ∧
      supervision.graph.edgeTarget rustToLeanEdge = leanArtifactNode ∧
      supervision.graph.edgeDependency rustToLeanEdge = proofDependency
  memoryToComputeGraphBinding :
    supervision.graph.edgeSource memoryToComputeEdge = memoryArtifactNode ∧
      supervision.graph.edgeTarget memoryToComputeEdge = computeArtifactNode ∧
      supervision.graph.edgeDependency memoryToComputeEdge = executionDependency
  memoryDemandPositive : 0 < supervision.hostPlan.demand.memoryUnits
  computeDemandPositive : 0 < supervision.hostPlan.demand.computeUnits
  selectedHostFeaturesNonempty :
    supervision.hostPlan.selectedFeatures.Nonempty
  componentCandidateScope :
    supervision.CandidateScoped ∧
      formalRefinement.ontologyToRust.CandidateScoped ∧
      formalRefinement.rustToLean.CandidateScoped ∧
      executionRefinement.memoryToCompute.CandidateScoped ∧
      correction.CandidateScoped

namespace HostBalancedGlobalReflection

def CandidateScoped
    {Agent : Type*} [DecidableEq Agent]
    (bundle : HostBalancedGlobalReflection Agent) : Prop :=
  bundle.supervision.CandidateScoped ∧
  bundle.formalRefinement.ontologyToRust.CandidateScoped ∧
  bundle.formalRefinement.rustToLean.CandidateScoped ∧
  bundle.executionRefinement.memoryToCompute.CandidateScoped ∧
  bundle.correction.CandidateScoped

/-- Every integrated bundle carries, rather than merely permits, candidate scope. -/
theorem candidate_scope
    {Agent : Type*} [DecidableEq Agent]
    (bundle : HostBalancedGlobalReflection Agent) : bundle.CandidateScoped :=
  bundle.componentCandidateScope

/-- The quality lanes and correction selection are materialized in one graph. -/
theorem graph_binds_refinement_lanes
    {Agent : Type*} [DecidableEq Agent]
    (bundle : HostBalancedGlobalReflection Agent) :
    bundle.correction.graph = bundle.supervision.graph ∧
      bundle.supervision.graph.edgeSource bundle.ontologyToRustEdge =
        bundle.ontologyArtifactNode ∧
      bundle.supervision.graph.edgeTarget bundle.ontologyToRustEdge =
        bundle.rustArtifactNode ∧
      bundle.supervision.graph.edgeSource bundle.rustToLeanEdge =
        bundle.rustArtifactNode ∧
      bundle.supervision.graph.edgeTarget bundle.rustToLeanEdge =
        bundle.leanArtifactNode ∧
      bundle.supervision.graph.edgeSource bundle.memoryToComputeEdge =
        bundle.memoryArtifactNode ∧
      bundle.supervision.graph.edgeTarget bundle.memoryToComputeEdge =
        bundle.computeArtifactNode :=
  ⟨bundle.correctionGraphAligned,
    bundle.ontologyToRustGraphBinding.1,
    bundle.ontologyToRustGraphBinding.2.1,
    bundle.rustToLeanGraphBinding.1,
    bundle.rustToLeanGraphBinding.2.1,
    bundle.memoryToComputeGraphBinding.1,
    bundle.memoryToComputeGraphBinding.2.1⟩

/-- The formal lane retains accuracy while moving to stricter Lean precision. -/
theorem formal_lane_balances_accuracy_and_precision
    {Agent : Type*} [DecidableEq Agent]
    (bundle : HostBalancedGlobalReflection Agent) :
    bundle.formalRefinement.ontologyToRust.sourceQuality.accuracy ≤
        bundle.formalRefinement.rustToLean.targetQuality.accuracy ∧
      bundle.formalRefinement.ontologyToRust.sourceQuality.precision <
        bundle.formalRefinement.rustToLean.targetQuality.precision :=
  ⟨bundle.formalRefinement.ontology_accuracy_retained_in_lean,
    bundle.formalRefinement.ontology_to_lean_precision_increases⟩

/-- The execution lane retains memory accuracy while increasing compute precision. -/
theorem execution_lane_balances_accuracy_and_precision
    {Agent : Type*} [DecidableEq Agent]
    (bundle : HostBalancedGlobalReflection Agent) :
    bundle.executionRefinement.memoryToCompute.sourceQuality.accuracy ≤
        bundle.executionRefinement.memoryToCompute.targetQuality.accuracy ∧
      bundle.executionRefinement.memoryToCompute.sourceQuality.precision <
        bundle.executionRefinement.memoryToCompute.targetQuality.precision :=
  ⟨bundle.executionRefinement.memory_accuracy_retained_in_compute,
    bundle.executionRefinement.memory_to_compute_precision_increases⟩

/-- The integrated bundle is still bounded by the observed host. -/
theorem reflection_rounds_are_host_bounded
    {Agent : Type*} [DecidableEq Agent]
    (bundle : HostBalancedGlobalReflection Agent) :
    bundle.supervision.executedRounds ≤
      bundle.supervision.hostPlan.host.maximumReflectionRounds :=
  bundle.supervision.rounds_fit_host

/--
The execution lane uses positive memory/compute scope, a pinned theory build,
and at least one selected feature that is actually available on the host.
-/
theorem execution_uses_pinned_host_capabilities
    {Agent : Type*} [DecidableEq Agent]
    (bundle : HostBalancedGlobalReflection Agent) :
    bundle.supervision.hostPlan.theoryBuild.value ≠ "" ∧
      0 < bundle.supervision.hostPlan.demand.memoryUnits ∧
      0 < bundle.supervision.hostPlan.demand.computeUnits ∧
      ∃ feature,
        feature ∈ bundle.supervision.hostPlan.selectedFeatures ∧
        feature ∈ bundle.supervision.hostPlan.host.availableFeatures := by
  rcases bundle.selectedHostFeaturesNonempty with ⟨feature, selected⟩
  exact ⟨bundle.supervision.hostPlan.theoryPinned,
    bundle.memoryDemandPositive, bundle.computeDemandPositive,
    feature, selected,
    bundle.supervision.hostPlan.selectedFeaturesAvailable selected⟩

/-- Every reflective component in a scoped bundle remains nonauthoritative. -/
theorem integrated_bundle_not_authority
    {Agent : Type*} [DecidableEq Agent]
    (bundle : HostBalancedGlobalReflection Agent)
    :
    bundle.supervision.mutationAuthority = false ∧
      bundle.formalRefinement.ontologyToRust.mutationAuthority = false ∧
      bundle.formalRefinement.rustToLean.mutationAuthority = false ∧
      bundle.executionRefinement.memoryToCompute.mutationAuthority = false ∧
      bundle.correction.mutationAuthority = false :=
  ⟨bundle.componentCandidateScope.1.2.2.2.2.1,
    bundle.componentCandidateScope.2.1.2,
    bundle.componentCandidateScope.2.2.1.2,
    bundle.componentCandidateScope.2.2.2.1.2,
    bundle.componentCandidateScope.2.2.2.2.2.1⟩

end HostBalancedGlobalReflection

/-! ## Exact bridge to the neural-symbolic hardware realization -/

/--
The legacy executable bridge uses two additional bookkeeping strata,
`specification` and `evidence`, around the five quality-refinement strata.  This
API is retained for compatibility; it does not classify the three
`DevelopmentSurface` values used by interpreter-exactness equilibrium.
-/
inductive RuntimeArtifactStratum
  | ontology
  | specification
  | rustSource
  | leanProof
  | memory
  | compute
  | evidence
  deriving DecidableEq, Repr, Inhabited, Fintype

namespace RuntimeArtifactStratum

/-- The five formal refinement strata embed in the seven-stratum runtime view. -/
def ofFormal : ArtifactStratum → RuntimeArtifactStratum
  | .ontology => .ontology
  | .rustSource => .rustSource
  | .leanProof => .leanProof
  | .memory => .memory
  | .compute => .compute

/-- Legacy runtime bookkeeping strata have no value in the five-stratum quality lane. -/
def toFormal? : RuntimeArtifactStratum → Option ArtifactStratum
  | .ontology => some .ontology
  | .rustSource => some .rustSource
  | .leanProof => some .leanProof
  | .memory => some .memory
  | .compute => some .compute
  | .specification | .evidence => none

/-- Embedding followed by partial projection is exact on the formal carrier. -/
theorem toFormal_ofFormal (stratum : ArtifactStratum) :
    toFormal? (ofFormal stratum) = some stratum := by
  cases stratum <;> rfl

/-- The legacy runtime specification tag is outside the five-stratum quality lane. -/
theorem specification_is_bookkeeping :
    toFormal? .specification = none := rfl

/-- The runtime evidence stratum is outside the five-stratum proof lane. -/
theorem evidence_is_bookkeeping :
    toFormal? .evidence = none := rfl

end RuntimeArtifactStratum

/--
Exact interpretation of one global correction candidate as the realized neural
reducer transition. Accuracy is a named antitone encoding of squared error;
precision is evaluated on the exact before/output states; metric, target,
evidence snapshot, evidence set, identifier, and supervision receipt are equal.
-/
structure ReducerCorrectionReflection
    (Coordinate : Type*) [Fintype Coordinate]
    (reducer : CorpusNeuralReducer Coordinate)
    (supervisionReceipt : ReceiptId)
    (candidate : GlobalCorrectionCandidate) where
  candidateIdExact : candidate.id = reducer.id
  supervisionReceiptExact :
    candidate.supervisionReceipt = supervisionReceipt
  accuracyMetricExact :
    candidate.accuracyMetric = reducer.snapshot.accuracyMetric
  targetRecordExact :
    candidate.targetRecord = reducer.snapshot.admittedTarget
  evidenceSnapshotExact :
    candidate.evidenceSnapshot = reducer.snapshot.evidenceSnapshot
  evidenceExact :
    (candidate.evidence : Set RecordId) = reducer.snapshot.evidenceRecords
  errorToAccuracy : ℝ → ScoreMillionths
  errorToAccuracyAntitone : ∀ {lowerError higherError : ℝ},
    lowerError ≤ higherError →
      errorToAccuracy higherError ≤ errorToAccuracy lowerError
  precisionEvaluator : NeuralRhetoricalState Coordinate → ScoreMillionths
  beforeAccuracyExact :
    candidate.beforeQuality.accuracy =
      errorToAccuracy
        (rhetoricalSquaredError reducer.accuracy.before
          reducer.accuracy.target)
  afterAccuracyExact :
    candidate.afterQuality.accuracy =
      errorToAccuracy
        (rhetoricalSquaredError
          (reducer.accuracy.candidate.transform reducer.accuracy.before)
          reducer.accuracy.target)
  beforePrecisionExact :
    candidate.beforeQuality.precision =
      precisionEvaluator reducer.accuracy.before
  afterPrecisionExact :
    candidate.afterQuality.precision =
      precisionEvaluator
        (reducer.accuracy.candidate.transform reducer.accuracy.before)
  contextBound : candidate.ContextBound

namespace ReducerCorrectionReflection

/-- The reducer certificate entails the reflected candidate's accuracy order. -/
theorem accuracy_order_is_reducer_derived
    {Coordinate : Type*} [Fintype Coordinate]
    {reducer : CorpusNeuralReducer Coordinate}
    {supervisionReceipt : ReceiptId}
    {candidate : GlobalCorrectionCandidate}
    (binding : ReducerCorrectionReflection Coordinate reducer
      supervisionReceipt candidate) :
    candidate.beforeQuality.accuracy ≤ candidate.afterQuality.accuracy := by
  rw [binding.beforeAccuracyExact, binding.afterAccuracyExact]
  exact binding.errorToAccuracyAntitone reducer.accuracy.errorNonincreasing

end ReducerCorrectionReflection

/--
Proof-bearing integration of the host-bounded reflection cycle with the exact
neural-symbolic system realized by the hardware correspondence. The fields
align the ontology snapshot, bind host memory/compute demand to the realized
hardware role counts, and require any proposed global correction to name the
actual routed reducer. Residual resolution remains available when no lawful
candidate exists.
-/
structure HostReflectedNeuralSymbolicSystem
    (Agent Request Coordinate Symbol k HardwareNode SymbolicNode : Type*)
    [DecidableEq Agent]
    [Fintype Coordinate]
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    [Fintype HardwareNode] [Fintype SymbolicNode] where
  realized : HardwareRealizedNeuralSymbolicSystem
    Agent Request Coordinate Symbol k HardwareNode SymbolicNode
  reflection : HostBalancedGlobalReflection Agent
  ontologySnapshotAligned :
    reflection.supervision.hostPlan.ontologySnapshot =
      realized.correction.reducer.ontologySnapshot
  hostMemoryDemandExact :
    reflection.supervision.hostPlan.demand.memoryUnits =
      realized.architecture.hardware.roleCount .memory
  hostComputeDemandExact :
    reflection.supervision.hostPlan.demand.computeUnits =
      realized.architecture.hardware.roleCount .computation
  graphOntologySnapshotAligned :
    reflection.formalRefinement.ontologyToRust.source.snapshot.value =
      reflection.supervision.hostPlan.ontologySnapshot.value
  proposedCorrectionBinding : ∀ candidate,
    reflection.correction.resolution = .proposed candidate →
      ReducerCorrectionReflection Coordinate realized.correction.reducer
        reflection.supervision.supervisionReceipt candidate

namespace HostReflectedNeuralSymbolicSystem

/-- The host plan and routed reducer consume the same pinned ontology snapshot. -/
theorem uses_one_ontology_snapshot
    {Agent Request Coordinate Symbol k HardwareNode SymbolicNode : Type*}
    [DecidableEq Agent]
    [Fintype Coordinate]
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    [Fintype HardwareNode] [Fintype SymbolicNode]
    (system : HostReflectedNeuralSymbolicSystem
      Agent Request Coordinate Symbol k HardwareNode SymbolicNode) :
    system.reflection.supervision.hostPlan.ontologySnapshot =
      system.realized.correction.reducer.ontologySnapshot :=
  system.ontologySnapshotAligned

/-- The graph's ontology artifact and executable host plan pin the same snapshot value. -/
theorem graph_ontology_artifact_is_host_snapshot
    {Agent Request Coordinate Symbol k HardwareNode SymbolicNode : Type*}
    [DecidableEq Agent]
    [Fintype Coordinate]
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    [Fintype HardwareNode] [Fintype SymbolicNode]
    (system : HostReflectedNeuralSymbolicSystem
      Agent Request Coordinate Symbol k HardwareNode SymbolicNode) :
    system.reflection.formalRefinement.ontologyToRust.source.snapshot.value =
      system.reflection.supervision.hostPlan.ontologySnapshot.value :=
  system.graphOntologySnapshotAligned

/-- Memory and compute demand are the exact realized hardware role counts. -/
theorem host_demand_matches_realized_architecture
    {Agent Request Coordinate Symbol k HardwareNode SymbolicNode : Type*}
    [DecidableEq Agent]
    [Fintype Coordinate]
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    [Fintype HardwareNode] [Fintype SymbolicNode]
    (system : HostReflectedNeuralSymbolicSystem
      Agent Request Coordinate Symbol k HardwareNode SymbolicNode) :
    system.reflection.supervision.hostPlan.demand.memoryUnits =
        system.realized.architecture.hardware.roleCount .memory ∧
      system.reflection.supervision.hostPlan.demand.computeUnits =
        system.realized.architecture.hardware.roleCount .computation :=
  ⟨system.hostMemoryDemandExact, system.hostComputeDemandExact⟩

/-- A proposed global correction is exactly the realized symbolic reducer. -/
theorem proposed_correction_names_realized_reducer
    {Agent Request Coordinate Symbol k HardwareNode SymbolicNode : Type*}
    [DecidableEq Agent]
    [Fintype Coordinate]
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    [Fintype HardwareNode] [Fintype SymbolicNode]
    (system : HostReflectedNeuralSymbolicSystem
      Agent Request Coordinate Symbol k HardwareNode SymbolicNode)
    {candidate : GlobalCorrectionCandidate}
    (selected : system.reflection.correction.resolution = .proposed candidate) :
    candidate.id = system.realized.correction.reducer.id :=
  (system.proposedCorrectionBinding candidate selected).candidateIdExact

/-- A proposed reducer correction carries a discharge for every reflected edge. -/
def proposedReducerReflectionGraphDischarge
    {Agent Request Coordinate Symbol k HardwareNode SymbolicNode : Type*}
    [DecidableEq Agent]
    [Fintype Coordinate]
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    [Fintype HardwareNode] [Fintype SymbolicNode]
    (system : HostReflectedNeuralSymbolicSystem
      Agent Request Coordinate Symbol k HardwareNode SymbolicNode)
    {candidate : GlobalCorrectionCandidate}
    (selected : system.reflection.correction.resolution = .proposed candidate) :
    GraphImpactDischarge system.reflection.supervision.graph
      system.realized.correction.reducer.id := by
  have discharge :=
    system.reflection.correction.proposed_correctionGraphDischarge selected
  have graphAligned := system.reflection.correctionGraphAligned
  have candidateAligned :=
    (system.proposedCorrectionBinding candidate selected).candidateIdExact
  rw [← graphAligned, ← candidateAligned]
  exact discharge

/--
The concrete data path and reflective graph are one construction: the selected
ontology snapshot is shared, the reducer consumes the exact neural checkpoint,
the request routes to that reducer, activation consumes its exact output, and
the correction graph is the supervised graph whose memory/compute demand is
the realized hardware balance.
-/
theorem end_to_end_reflective_data_path
    {Agent Request Coordinate Symbol k HardwareNode SymbolicNode : Type*}
    [DecidableEq Agent]
    [Fintype Coordinate]
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    [Fintype HardwareNode] [Fintype SymbolicNode]
    (system : HostReflectedNeuralSymbolicSystem
      Agent Request Coordinate Symbol k HardwareNode SymbolicNode) :
    system.reflection.supervision.hostPlan.ontologySnapshot =
        system.realized.correction.reducer.ontologySnapshot ∧
      system.realized.correction.reducer.accuracy.before =
        system.realized.diffusion.neuralCandidate.transform
          (system.realized.diffusion.continuousLayer.diffusion.trajectory
            system.realized.correctionTime) ∧
      system.realized.correction.router.route
          system.realized.correction.request = .symbolicReduction ∧
      system.realized.correction.activatedState =
        system.realized.correction.activator.activate
          system.realized.correction.activationSignal
          (system.realized.correction.reducer.accuracy.candidate.transform
            system.realized.correction.reducer.accuracy.before) ∧
      system.reflection.correction.graph =
        system.reflection.supervision.graph ∧
      system.reflection.supervision.hostPlan.demand.memoryUnits =
        system.realized.architecture.hardware.roleCount .memory ∧
      system.reflection.supervision.hostPlan.demand.computeUnits =
        system.realized.architecture.hardware.roleCount .computation :=
  ⟨system.ontologySnapshotAligned,
    system.realized.reducerInputIsNeuralCheckpoint,
    system.realized.correction.request_routes_to_symbolic_reducer,
    system.realized.correction.activation_follows_reduction,
    system.reflection.correctionGraphAligned,
    system.hostMemoryDemandExact,
    system.hostComputeDemandExact⟩

/--
The integrated architecture jointly exposes exact hardware/symbolic balance,
target-relative reducer accuracy, finite host bounds, and authority
non-escalation. These are conditional invariants of the supplied witnesses;
they are not an empirical neural-performance or physical-identity claim.
-/
theorem integrated_balance_accuracy_bounds_and_authority
    {Agent Request Coordinate Symbol k HardwareNode SymbolicNode : Type*}
    [DecidableEq Agent]
    [Fintype Coordinate]
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    [Fintype HardwareNode] [Fintype SymbolicNode]
    (system : HostReflectedNeuralSymbolicSystem
      Agent Request Coordinate Symbol k HardwareNode SymbolicNode) :
    system.realized.architecture.hardware.balance =
        system.realized.architecture.symbolic.balance ∧
      AccuracyPreferred system.realized.correction.reducer.accuracy.target
        (system.realized.correction.reducer.accuracy.candidate.transform
          system.realized.correction.reducer.accuracy.before)
        system.realized.correction.reducer.accuracy.before ∧
      system.reflection.supervision.executedRounds ≤
        system.reflection.supervision.hostPlan.host.maximumReflectionRounds ∧
      system.reflection.supervision.mutationAuthority = false ∧
      system.reflection.correction.mutationAuthority = false ∧
      (∀ authority,
        system.reflection.supervision.outputAuthority = some authority →
        system.reflection.supervision.entryAuthority = some authority) := by
  rcases system.reflection.integrated_bundle_not_authority with
    ⟨supervisionNotAuthority, _ontologyNotAuthority, _rustNotAuthority,
      _computeNotAuthority, correctionNotAuthority⟩
  exact ⟨system.realized.architecture_balance,
    system.realized.correction_prefers_accuracy,
    system.reflection.reflection_rounds_are_host_bounded,
    supervisionNotAuthority,
    correctionNotAuthority,
    fun _authority output =>
      system.reflection.supervision.no_authority_escalation output⟩

/--
The complete proposition certified for a proposed host-reflected correction.
It intentionally combines the data path, typed graph discharge, quality
interpretation, exhaustive diffuser realization, host bounds, and authority
boundary so no one projection can be mistaken for end-to-end conformance.
-/
structure CompleteProposedReflectionCertificate
    {Agent Request Coordinate Symbol k HardwareNode SymbolicNode : Type*}
    [DecidableEq Agent]
    [Fintype Coordinate]
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    [Fintype HardwareNode] [Fintype SymbolicNode]
    (system : HostReflectedNeuralSymbolicSystem
      Agent Request Coordinate Symbol k HardwareNode SymbolicNode)
    (candidate : GlobalCorrectionCandidate) : Prop where
  selected :
    system.reflection.correction.resolution = .proposed candidate
  lawful : candidate.Lawful
  candidateScope : system.reflection.CandidateScoped
  candidateIdExact : candidate.id = system.realized.correction.reducer.id
  candidateSupervisionReceiptExact :
    candidate.supervisionReceipt =
      system.reflection.supervision.supervisionReceipt
  candidateMetricExact :
    candidate.accuracyMetric =
      system.realized.correction.reducer.snapshot.accuracyMetric
  candidateTargetExact :
    candidate.targetRecord =
      system.realized.correction.reducer.snapshot.admittedTarget
  candidateEvidenceSnapshotExact :
    candidate.evidenceSnapshot =
      system.realized.correction.reducer.snapshot.evidenceSnapshot
  candidateEvidenceExact :
    (candidate.evidence : Set RecordId) =
      system.realized.correction.reducer.snapshot.evidenceRecords
  reducerInterpretation : Nonempty
    (ReducerCorrectionReflection Coordinate
      system.realized.correction.reducer
      system.reflection.supervision.supervisionReceipt candidate)
  candidateAccuracyInterpretation :
    ∃ errorToAccuracy : ℝ → ScoreMillionths,
      (∀ {lowerError higherError : ℝ},
        lowerError ≤ higherError →
          errorToAccuracy higherError ≤ errorToAccuracy lowerError) ∧
      candidate.beforeQuality.accuracy =
        errorToAccuracy
          (rhetoricalSquaredError
            system.realized.correction.reducer.accuracy.before
            system.realized.correction.reducer.accuracy.target) ∧
      candidate.afterQuality.accuracy =
        errorToAccuracy
          (rhetoricalSquaredError
            (system.realized.correction.reducer.accuracy.candidate.transform
              system.realized.correction.reducer.accuracy.before)
            system.realized.correction.reducer.accuracy.target)
  candidatePrecisionInterpretation :
    ∃ precisionEvaluator :
        NeuralRhetoricalState Coordinate → ScoreMillionths,
      candidate.beforeQuality.precision =
        precisionEvaluator system.realized.correction.reducer.accuracy.before ∧
      candidate.afterQuality.precision =
        precisionEvaluator
          (system.realized.correction.reducer.accuracy.candidate.transform
            system.realized.correction.reducer.accuracy.before)
  candidateContextBound : candidate.ContextBound
  candidateAccuracyIsReducerDerived :
    candidate.beforeQuality.accuracy ≤ candidate.afterQuality.accuracy
  graphDischarged : Nonempty
    (GraphImpactDischarge system.reflection.supervision.graph
      system.realized.correction.reducer.id)
  graphOntologySnapshotExact :
    system.reflection.formalRefinement.ontologyToRust.source.snapshot.value =
      system.realized.correction.reducer.ontologySnapshot.value
  hostPlanOntologySnapshotExact :
    system.reflection.supervision.hostPlan.ontologySnapshot =
      system.realized.correction.reducer.ontologySnapshot
  executableOntologySnapshotsAligned :
    system.realized.diffusion.symbolicLayer.ontologySnapshot =
        system.realized.diffusion.continuousLayer.rhetoricalSpace.ontologySnapshot ∧
      system.realized.correction.router.ontologySnapshot =
        system.realized.correction.reducer.ontologySnapshot ∧
      system.realized.correction.reducer.ontologySnapshot =
        system.realized.diffusion.continuousLayer.rhetoricalSpace.ontologySnapshot
  reducerConsumesExactCheckpoint :
    system.realized.correction.reducer.accuracy.before =
      system.realized.diffusion.neuralCandidate.transform
        (system.realized.diffusion.continuousLayer.diffusion.trajectory
          system.realized.correctionTime)
  reducerRhetoricalSpaceExact :
    system.realized.correction.reducer.rhetoricalSpace =
      system.realized.diffusion.continuousLayer.rhetoricalSpace
  requestRoutesToReducer :
    system.realized.correction.router.route system.realized.correction.request =
      .symbolicReduction
  activationConsumesReducerOutput :
    system.realized.correction.activatedState =
      system.realized.correction.activator.activate
        system.realized.correction.activationSignal
        (system.realized.correction.reducer.accuracy.candidate.transform
          system.realized.correction.reducer.accuracy.before)
  correctionUsesSupervisedGraph :
    system.reflection.correction.graph = system.reflection.supervision.graph
  hostDemandExact :
    system.reflection.supervision.hostPlan.demand.memoryUnits =
        system.realized.architecture.hardware.roleCount .memory ∧
      system.reflection.supervision.hostPlan.demand.computeUnits =
        system.realized.architecture.hardware.roleCount .computation
  everyDiffuserRealizedAndRouted : ∀ diffuserNode :
      ArchitectureRoleFiber system.realized.architecture.symbolic .diffuser,
    (system.realized.components.diffuserNetwork diffuserNode).value ≠ 0 ∧
      system.realized.architecture.symbolic.network.rel
        system.realized.components.computationNode diffuserNode ∧
      system.realized.architecture.symbolic.network.rel
        diffuserNode system.realized.components.router.node
  architectureBalanceExact :
    system.realized.architecture.hardware.balance =
      system.realized.architecture.symbolic.balance
  reducerAccuracyPreferred :
    AccuracyPreferred system.realized.correction.reducer.accuracy.target
      (system.realized.correction.reducer.accuracy.candidate.transform
        system.realized.correction.reducer.accuracy.before)
      system.realized.correction.reducer.accuracy.before
  roundsHostBounded :
    system.reflection.supervision.executedRounds ≤
      system.reflection.supervision.hostPlan.host.maximumReflectionRounds
  executableComponentsNotAuthority :
    system.realized.diffusion.continuousLayer.diffusion.mutationAuthority = false ∧
      system.realized.diffusion.neuralCandidate.mutationAuthority = false ∧
      system.realized.correction.router.mutationAuthority = false ∧
      system.realized.correction.reducer.mutationAuthority = false ∧
      system.realized.correction.activator.mutationAuthority = false ∧
      system.realized.correction.activationSignal.mutationAuthority = false
  reflectionNotAuthority :
    system.reflection.supervision.mutationAuthority = false ∧
      system.reflection.correction.mutationAuthority = false
  noAuthorityEscalation : ∀ authority,
    system.reflection.supervision.outputAuthority = some authority →
    system.reflection.supervision.entryAuthority = some authority

/-- Every proposed integrated correction has the complete end-to-end certificate. -/
theorem complete_proposed_reflection_certificate
    {Agent Request Coordinate Symbol k HardwareNode SymbolicNode : Type*}
    [DecidableEq Agent]
    [Fintype Coordinate]
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    [Fintype HardwareNode] [Fintype SymbolicNode]
    (system : HostReflectedNeuralSymbolicSystem
      Agent Request Coordinate Symbol k HardwareNode SymbolicNode)
    {candidate : GlobalCorrectionCandidate}
    (selected : system.reflection.correction.resolution = .proposed candidate) :
    CompleteProposedReflectionCertificate system candidate := by
  have sound := system.reflection.correction.sound
  rw [selected] at sound
  let binding := system.proposedCorrectionBinding candidate selected
  rcases system.reflection.integrated_bundle_not_authority with
    ⟨supervisionNotAuthority, _ontologyNotAuthority, _rustNotAuthority,
      _computeNotAuthority, correctionNotAuthority⟩
  refine {
    selected := selected
    lawful := sound.2
    candidateScope := system.reflection.candidate_scope
    candidateIdExact := binding.candidateIdExact
    candidateSupervisionReceiptExact := binding.supervisionReceiptExact
    candidateMetricExact := binding.accuracyMetricExact
    candidateTargetExact := binding.targetRecordExact
    candidateEvidenceSnapshotExact := binding.evidenceSnapshotExact
    candidateEvidenceExact := binding.evidenceExact
    reducerInterpretation := ⟨binding⟩
    candidateAccuracyInterpretation :=
      ⟨binding.errorToAccuracy, binding.errorToAccuracyAntitone,
        binding.beforeAccuracyExact, binding.afterAccuracyExact⟩
    candidatePrecisionInterpretation :=
      ⟨binding.precisionEvaluator, binding.beforePrecisionExact,
        binding.afterPrecisionExact⟩
    candidateContextBound := binding.contextBound
    candidateAccuracyIsReducerDerived :=
      binding.accuracy_order_is_reducer_derived
    graphDischarged :=
      ⟨system.proposedReducerReflectionGraphDischarge selected⟩
    graphOntologySnapshotExact := ?_
    hostPlanOntologySnapshotExact := system.ontologySnapshotAligned
    executableOntologySnapshotsAligned :=
      system.realized.all_ontology_snapshots_aligned
    reducerConsumesExactCheckpoint :=
      system.realized.reducer_corrects_realized_neural_checkpoint
    reducerRhetoricalSpaceExact :=
      system.realized.reducer_uses_diffusion_rhetorical_space
    requestRoutesToReducer :=
      system.realized.correction.request_routes_to_symbolic_reducer
    activationConsumesReducerOutput :=
      system.realized.correction.activation_follows_reduction
    correctionUsesSupervisedGraph := system.reflection.correctionGraphAligned
    hostDemandExact := system.host_demand_matches_realized_architecture
    everyDiffuserRealizedAndRouted := ?_
    architectureBalanceExact := system.realized.architecture_balance
    reducerAccuracyPreferred := system.realized.correction_prefers_accuracy
    roundsHostBounded := system.reflection.reflection_rounds_are_host_bounded
    executableComponentsNotAuthority :=
      system.realized.executable_components_not_authority
    reflectionNotAuthority :=
      ⟨supervisionNotAuthority, correctionNotAuthority⟩
    noAuthorityEscalation := fun _authority output =>
      system.reflection.supervision.no_authority_escalation output
  }
  · exact system.graphOntologySnapshotAligned.trans
      (congrArg OntologySnapshotId.value system.ontologySnapshotAligned)
  · intro diffuserNode
    exact ⟨system.realized.components.every_diffuser_is_realized diffuserNode,
      system.realized.components.computationFeedsEveryDiffuser diffuserNode,
      system.realized.components.everyDiffuserFeedsRouter diffuserNode⟩

end HostReflectedNeuralSymbolicSystem

/-! ## Named global-reflection laws -/

namespace GlobalReflectionLaws

/-- A content-bound observation in one finite reflection sequence. -/
structure ImmutableReflectionSnapshot where
  id : SnapshotId
  contentHash : ContentHash
  idNonzero : id.value ≠ 0
  contentHashNonempty : contentHash.value ≠ ""

/--
Finite evidence for an observed stabilization claim.  Constructing this record
requires the complete bounded sequence and evidence account.  Its negative
claim fields prevent stabilization from being reinterpreted as correctness,
completeness, future convergence, or authority.
-/
structure FiniteConvergenceEvidence where
  iterationBound : Nat
  iterationBoundPositive : 0 < iterationBound
  executedIterations : Nat
  executedWithinBound : executedIterations ≤ iterationBound
  snapshots : List ImmutableReflectionSnapshot
  snapshotsNonempty : snapshots ≠ []
  snapshotCountExact : snapshots.length = executedIterations + 1
  fixedMetric : RecordId
  fixedMetricNonzero : fixedMetric.value ≠ 0
  fixedBalanceCriterion : RecordId
  fixedBalanceCriterionNonzero : fixedBalanceCriterion.value ≠ 0
  traversedObligations : Finset RecordId
  evidence : Finset RecordId
  evidenceNonempty : evidence.Nonempty
  evidenceFor : RecordId → Option RecordId
  traversedObligationsCovered : ∀ obligation,
    obligation ∈ traversedObligations →
      ∃ evidenceRecord,
        evidenceFor obligation = some evidenceRecord ∧
          evidenceRecord ∈ evidence
  unresolvedNonconvergenceWitnesses : Finset ResidualId
  noUnresolvedNonconvergenceWitness :
    unresolvedNonconvergenceWitnesses = ∅
  stabilized : Bool
  stabilizationObserved : stabilized = true
  correctnessClaimed : Bool
  correctnessNotClaimed : correctnessClaimed = false
  completenessClaimed : Bool
  completenessNotClaimed : completenessClaimed = false
  futureConvergenceClaimed : Bool
  futureConvergenceNotClaimed : futureConvergenceClaimed = false
  mutationAuthority : Bool
  stabilizationNotAuthority : mutationAuthority = false

/--
Typed evidence for the Rust tooling boundary.  This record is deliberately
conditional: the theorem below proves what any supplied certificate entails;
it does not assert that a repository command or invocation exists.
-/
structure RustToolingBoundaryEvidence where
  evidenceRecord : RecordId
  evidenceRecordNonzero : evidenceRecord.value ≠ 0
  implementationHash : ContentHash
  implementationHashNonempty : implementationHash.value ≠ ""
  supportingEvidence : Finset RecordId
  supportingEvidenceNonempty : supportingEvidence.Nonempty
  rustBuiltCommandBoundary : Bool
  rustBoundaryCertified : rustBuiltCommandBoundary = true
  callableWithoutIde : Bool
  ideIndependenceCertified : callableWithoutIde = true
  pythonNormative : Bool
  pythonNotNormative : pythonNormative = false
  nodeNormative : Bool
  nodeNotNormative : nodeNormative = false
  editorStateRequired : Bool
  editorStateNotRequired : editorStateRequired = false
  externalToolIdentities : Finset ContentHash
  externalToolsPinned : ∀ identity,
    identity ∈ externalToolIdentities → identity.value ≠ ""
  mutationAuthority : Bool
  toolingEvidenceNotAuthority : mutationAuthority = false

/-- Agent supervision preserves inherited authority and cannot mint mutation authority. -/
theorem agent_supervision_non_authority
    {Agent : Type*} [DecidableEq Agent]
    (reflection : SupervisedGlobalReflection Agent)
    (scopeProof : reflection.CandidateScoped) :
    reflection.mutationAuthority = false ∧
  ∀ authority,
        reflection.outputAuthority = some authority →
          reflection.entryAuthority = some authority :=
  ⟨reflection.supervision_not_mutation_authority scopeProof,
    fun _authority output => reflection.no_authority_escalation output⟩

/-- Both independently represented impact directions are exact and nonauthoritative. -/
theorem bidirectional_balance
    {leftStratum rightStratum : ArtifactStratum}
    {left : TypedArtifact leftStratum}
    {right : TypedArtifact rightStratum}
    (balance : BidirectionalImpactBalance (left := left) (right := right))
    (scopeProof : balance.CandidateScoped) :
    balance.impactAtLeft =
        balance.edge.propagateRightToLeft balance.changeAtRight ∧
      balance.impactAtRight =
        balance.edge.propagateLeftToRight balance.changeAtLeft ∧
      balance.mutationAuthority = false :=
  ⟨balance.rightReflectedAtLeft, balance.leftReflectedAtRight,
    balance.balance_not_authority scopeProof⟩

/-- A change at either endpoint opens the exact obligation at the other endpoint. -/
theorem change_reflection_pair
    {leftStratum rightStratum : ArtifactStratum}
    {locationA : TypedArtifact leftStratum}
    {locationB : TypedArtifact rightStratum}
    (edge : InterRelianceEdge locationA locationB)
    (changeAtA : CandidateArtifactChange locationA)
    (changeAtB : CandidateArtifactChange locationB) :
    (∃ impactAtA,
      impactAtA = edge.propagateRightToLeft changeAtB ∧
      impactAtA.target = locationA ∧
      impactAtA.dependency = edge.dependency ∧
      impactAtA.sourceChange = changeAtB.id ∧
      impactAtA.requiredReview.value ≠ 0) ∧
    (∃ impactAtB,
      impactAtB = edge.propagateLeftToRight changeAtA ∧
      impactAtB.target = locationB ∧
      impactAtB.dependency = edge.dependency ∧
      impactAtB.sourceChange = changeAtA.id ∧
      impactAtB.requiredReview.value ≠ 0) :=
  ⟨edge.change_at_b_reflects_at_a changeAtB,
    edge.change_at_a_reflects_at_b changeAtA⟩

/--
Finite stabilization is claimable only with a positive bound, an immutable
nonempty sequence, fixed comparison identities, complete obligation evidence,
and no unresolved nonconvergence witness.  Even then it is neither correctness,
completeness, future convergence, nor authority.
-/
theorem finite_convergence (claim : FiniteConvergenceEvidence) :
    0 < claim.iterationBound ∧
      claim.executedIterations ≤ claim.iterationBound ∧
      claim.snapshots ≠ [] ∧
      claim.snapshots.length = claim.executedIterations + 1 ∧
      claim.fixedMetric.value ≠ 0 ∧
      claim.fixedBalanceCriterion.value ≠ 0 ∧
      claim.evidence.Nonempty ∧
      (∀ obligation,
        obligation ∈ claim.traversedObligations →
          ∃ evidenceRecord,
            claim.evidenceFor obligation = some evidenceRecord ∧
              evidenceRecord ∈ claim.evidence) ∧
      claim.unresolvedNonconvergenceWitnesses = ∅ ∧
      claim.stabilized = true ∧
      claim.correctnessClaimed = false ∧
      claim.completenessClaimed = false ∧
      claim.futureConvergenceClaimed = false ∧
      claim.mutationAuthority = false :=
  ⟨claim.iterationBoundPositive, claim.executedWithinBound,
    claim.snapshotsNonempty, claim.snapshotCountExact,
    claim.fixedMetricNonzero, claim.fixedBalanceCriterionNonzero,
    claim.evidenceNonempty, claim.traversedObligationsCovered,
    claim.noUnresolvedNonconvergenceWitness, claim.stabilizationObserved,
    claim.correctnessNotClaimed, claim.completenessNotClaimed,
    claim.futureConvergenceNotClaimed, claim.stabilizationNotAuthority⟩

/-- Host specialization remains within the exact finite demand and available features. -/
theorem host_specialization_bound
    (plan : HostSpecializedReflectionPlan)
    (scopeProof : plan.CandidateScoped) :
    plan.demand.Fits plan.host ∧
      (∀ feature,
        feature ∈ plan.demand.requiredFeatures →
          feature ∈ plan.host.availableFeatures) ∧
      plan.mutationAuthority = false :=
  ⟨plan.fits,
    fun _feature required => plan.required_feature_is_host_available required,
    plan.specialization_not_authority scopeProof⟩

/-- A supplied tooling certificate entails an IDE-independent Rust boundary only. -/
theorem rust_tooling_independence
    (evidence : RustToolingBoundaryEvidence) :
    evidence.evidenceRecord.value ≠ 0 ∧
      evidence.implementationHash.value ≠ "" ∧
      evidence.supportingEvidence.Nonempty ∧
      evidence.rustBuiltCommandBoundary = true ∧
      evidence.callableWithoutIde = true ∧
      evidence.pythonNormative = false ∧
      evidence.nodeNormative = false ∧
      evidence.editorStateRequired = false ∧
      (∀ identity,
        identity ∈ evidence.externalToolIdentities → identity.value ≠ "") ∧
      evidence.mutationAuthority = false :=
  ⟨evidence.evidenceRecordNonzero, evidence.implementationHashNonempty,
    evidence.supportingEvidenceNonempty, evidence.rustBoundaryCertified,
    evidence.ideIndependenceCertified, evidence.pythonNotNormative,
    evidence.nodeNotNormative, evidence.editorStateNotRequired,
    evidence.externalToolsPinned, evidence.toolingEvidenceNotAuthority⟩

/-- The two refinement lanes preserve accuracy while increasing only typed precision. -/
theorem stratified_accuracy_precision
    {Agent : Type*} [DecidableEq Agent]
    (bundle : HostBalancedGlobalReflection Agent) :
    (bundle.formalRefinement.ontologyToRust.sourceQuality.accuracy ≤
        bundle.formalRefinement.rustToLean.targetQuality.accuracy ∧
      bundle.formalRefinement.ontologyToRust.sourceQuality.precision <
        bundle.formalRefinement.rustToLean.targetQuality.precision) ∧
    bundle.formalRefinement.rustToLean.targetUncertainty ≤
      bundle.formalRefinement.ontologyToRust.sourceUncertainty ∧
    (bundle.executionRefinement.memoryToCompute.sourceQuality.accuracy ≤
        bundle.executionRefinement.memoryToCompute.targetQuality.accuracy ∧
      bundle.executionRefinement.memoryToCompute.sourceQuality.precision <
        bundle.executionRefinement.memoryToCompute.targetQuality.precision) ∧
    bundle.correction.graph = bundle.supervision.graph ∧
    bundle.supervision.mutationAuthority = false ∧
      bundle.formalRefinement.ontologyToRust.mutationAuthority = false ∧
      bundle.formalRefinement.rustToLean.mutationAuthority = false ∧
      bundle.executionRefinement.memoryToCompute.mutationAuthority = false ∧
      bundle.correction.mutationAuthority = false := by
  rcases bundle.integrated_bundle_not_authority with
    ⟨supervisionNotAuthority, ontologyNotAuthority, rustNotAuthority,
      computeNotAuthority, correctionNotAuthority⟩
  exact ⟨bundle.formal_lane_balances_accuracy_and_precision,
    bundle.formalRefinement.ontology_to_lean_uncertainty_nonincreasing,
    bundle.execution_lane_balances_accuracy_and_precision,
    bundle.correctionGraphAligned, supervisionNotAuthority,
    ontologyNotAuthority, rustNotAuthority, computeNotAuthority,
    correctionNotAuthority⟩

end GlobalReflectionLaws

end Cord
