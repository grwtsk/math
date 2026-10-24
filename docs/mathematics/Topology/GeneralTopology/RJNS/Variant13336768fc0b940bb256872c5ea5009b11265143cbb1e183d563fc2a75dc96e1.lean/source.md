# Complete source: GRWTSK.Topology.GeneralTopology.RJNS.Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f6855681dc4b39bbecb2e52574a5d7072a125de` · SHA-256 `13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import CordTheory.Records

/-!
# CORD-RJNS-3

This module gathers the proved mathematical core of the Single-Entry Theory:
reachability topology, finite function-ring Nullstellensatz, reflective ideal
preservation, exact finite change classification, and normative precision
bounds.  Normative continuation laws remain separately identified.
-/

namespace Cord

section ReflectivePreservation

variable {X k : Type*} [Fintype X] [DecidableEq X] [Field k]

/-- Pullback of a coordinate function along a total state transition. -/
def pullback (transition : X → X) (f : X → k) : X → k :=
  fun x => f (transition x)

/-- The transition maps every represented model to a represented model. -/
def PreservesModelLocus
    (J : FunctionIdeal X k) (transition : X → X) : Prop :=
  Set.MapsTo transition (FunctionIdeal.zeroLocus J) (FunctionIdeal.zeroLocus J)

/-- Pullback sends ontology constraints back into the ontology ideal. -/
def PullbackStable
    (J : FunctionIdeal X k) (transition : X → X) : Prop :=
  ∀ ⦃f : X → k⦄, f ∈ J → pullback transition f ∈ J

/-- Exact reflective preservation theorem for the finite function algebra. -/
theorem reflective_preservation_iff
    (J : FunctionIdeal X k) (transition : X → X) :
    PreservesModelLocus J transition ↔ PullbackStable J transition := by
  constructor
  · intro hMaps f hf
    apply (J.represented_consequence_iff (pullback transition f)).mp
    intro x hx
    exact hMaps hx f hf
  · intro hStable x hx f hf
    have hpull : pullback transition f ∈ J := hStable hf
    exact hx (pullback transition f) hpull

end ReflectivePreservation

section OperationalTopologyTheorems

variable {X : Type*} (R : OperationalRelation X)

/-- Reachability gives a classical topology by construction. -/
@[reducible] def classicalOperationalTopology : TopologicalSpace X := R.operationalTopology

/-- The induced closure is exactly operational reachability. -/
theorem closure_is_reachability (S : Set X) :
    @closure X R.operationalTopology S = R.closure S :=
  R.topological_closure_eq S

/-- Exact topological boundary formula under the operational closure. -/
theorem boundary_formula (S : Set X) :
    R.boundary S = R.closure S ∩ R.closure (Set.univ \ S) := rfl

/-- Every finite operational space is compact. -/
theorem finite_operational_space_compact [Finite X] :
    @IsCompact X R.operationalTopology Set.univ := by
  letI : TopologicalSpace X := R.operationalTopology
  exact isCompact_univ

/-- The operational topology is Alexandrov: arbitrary open intersections are open. -/
theorem operational_alexandrov (family : Set (Set X))
    (hfamily : ∀ U ∈ family, @IsOpen X R.operationalTopology U) :
    @IsOpen X R.operationalTopology (⋂₀ family) :=
  R.isOpen_sInter family hfamily

end OperationalTopologyTheorems

/-- Theorem applicability never removes a theorem's own hypotheses. -/
theorem topological_theorem_readiness
    {Hypotheses Conclusion : Prop}
    (hypotheses : Hypotheses)
    (theoremUnderHypotheses : Hypotheses → Conclusion) : Conclusion :=
  theoremUnderHypotheses hypotheses

/-- Exact algebraic theorem bundle for a finite profile. -/
structure RJNS3TheoremBundle
    (X k : Type*) [Fintype X] [DecidableEq X] [Field k] where
  relation : OperationalRelation X
  ontologyIdeal : FunctionIdeal X k
  nullstellensatz :
    FunctionIdeal.vanishingIdeal (FunctionIdeal.zeroLocus ontologyIdeal) = ontologyIdeal
  satisfiability :
    (FunctionIdeal.zeroLocus ontologyIdeal).Nonempty ↔ ¬ ontologyIdeal.IsTop
  representedConsequence :
    ∀ f : X → k,
      (∀ x ∈ FunctionIdeal.zeroLocus ontologyIdeal, f x = 0) ↔ f ∈ ontologyIdeal
  topologyClosure :
    ∀ S : Set X,
      @closure X relation.operationalTopology S = relation.closure S

/-- Canonical construction of the proved RJNS-3 bundle. -/
def rjns3Bundle
    {X k : Type*} [Fintype X] [DecidableEq X] [Field k]
    (relation : OperationalRelation X)
    (ontologyIdeal : FunctionIdeal X k) : RJNS3TheoremBundle X k where
  relation := relation
  ontologyIdeal := ontologyIdeal
  nullstellensatz := ontologyIdeal.finite_nullstellensatz
  satisfiability := ontologyIdeal.satisfiable_iff_not_top
  representedConsequence := ontologyIdeal.represented_consequence_iff
  topologyClosure := relation.topological_closure_eq

/-- Normative precision cannot exceed extensional precision. -/
theorem rjns3_normative_le_extensional
    (extensional evidenceResolution : ScoreMillionths) :
    normativePrecision extensional evidenceResolution ≤ extensional :=
  normativePrecision_le_extensional _ _

/-- Normative precision cannot exceed admitted evidence resolution. -/
theorem rjns3_normative_le_evidence
    (extensional evidenceResolution : ScoreMillionths) :
    normativePrecision extensional evidenceResolution ≤ evidenceResolution :=
  normativePrecision_le_evidence _ _

/-- Positive tension is an exact witness of overprecision. -/
theorem rjns3_positive_tension_iff_overprecision
    (extensional evidenceResolution : ScoreMillionths) :
    0 < precisionAccuracyTension extensional evidenceResolution ↔
      evidenceResolution < extensional :=
  tension_positive_iff _ _

/-- Six-way semantic change classification is deterministic and sound. -/
theorem rjns3_change_classification
    {X : Type*} [DecidableEq X]
    (before after : Finset X) :
    SemanticChangeClass.Holds
      (SemanticChangeClass.classify before after) before after :=
  SemanticChangeClass.classify_sound before after

/-- A proof-bearing certificate for the mathematical boundary of `CORD-RJNS-3`. -/
structure ReflectiveJacobsonNullstellensatzCertificate
    (X k : Type*) [Fintype X] [DecidableEq X] [Field k]
    (relation : OperationalRelation X)
    (ontologyIdeal : FunctionIdeal X k) where
  theoryMatches : theoryIdentifier = "CORD-THEORY-1"
  theoremMatches : ("CORD-RJNS-3" : String) = "CORD-RJNS-3"
  kuratowski : relation.KuratowskiCertificate
  topologyClosure :
    ∀ S : Set X,
      @closure X relation.operationalTopology S = relation.closure S
  nullstellensatz :
    FunctionIdeal.vanishingIdeal (FunctionIdeal.zeroLocus ontologyIdeal) = ontologyIdeal
  satisfiability :
    (FunctionIdeal.zeroLocus ontologyIdeal).Nonempty ↔ ¬ ontologyIdeal.IsTop
  representedConsequence :
    ∀ f : X → k,
      (∀ x ∈ FunctionIdeal.zeroLocus ontologyIdeal, f x = 0) ↔ f ∈ ontologyIdeal
  reflectivePreservation :
    ∀ transition : X → X,
      PreservesModelLocus ontologyIdeal transition ↔
        PullbackStable ontologyIdeal transition
  determiningSampleScoped :
    ∀ sample : Set X,
      DeterminingSample (Set.univ : Set (X → k)) sample →
        sample = Set.univ
  precisionBounds :
    ∀ extensional evidenceResolution : ScoreMillionths,
      normativePrecision extensional evidenceResolution ≤ extensional ∧
      normativePrecision extensional evidenceResolution ≤ evidenceResolution
  changeClassification :
    ∀ {Y : Type*} [DecidableEq Y] (before after : Finset Y),
      SemanticChangeClass.Holds
        (SemanticChangeClass.classify before after) before after
  oiBoundary :
    currentOI4ConformanceClaimed = false ∧
      currentOI5ConformanceClaimed = false

/-- Canonical proof-bearing certificate constructed from the proved theorem family. -/
theorem rjns3Certificate
    {X k : Type*} [Fintype X] [DecidableEq X] [Field k]
    (relation : OperationalRelation X)
    (ontologyIdeal : FunctionIdeal X k) :
    ReflectiveJacobsonNullstellensatzCertificate X k relation ontologyIdeal where
  theoryMatches := rfl
  theoremMatches := rfl
  kuratowski := relation.kuratowskiCertificate
  topologyClosure := relation.topological_closure_eq
  nullstellensatz := ontologyIdeal.finite_nullstellensatz
  satisfiability := ontologyIdeal.satisfiable_iff_not_top
  representedConsequence := ontologyIdeal.represented_consequence_iff
  reflectivePreservation := reflective_preservation_iff ontologyIdeal
  determiningSampleScoped := full_function_determining_sample_eq_univ
  precisionBounds := by
    intro extensional evidenceResolution
    exact ⟨normativePrecision_le_extensional _ _,
      normativePrecision_le_evidence _ _⟩
  changeClassification := by
    intro Y inst before after
    exact SemanticChangeClass.classify_sound before after
  oiBoundary := ⟨oi4_unclaimed, oi5_unclaimed⟩

end Cord
```
