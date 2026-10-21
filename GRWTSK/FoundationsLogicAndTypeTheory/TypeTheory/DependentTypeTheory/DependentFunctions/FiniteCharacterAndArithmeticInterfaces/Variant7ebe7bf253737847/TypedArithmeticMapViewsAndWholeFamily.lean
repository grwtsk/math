/-
TypedArithmeticMapViewsAndWholeFamily - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 7ebe7bf2537378473b3680ab88821d442e16bb2d95ce06494cc19fac6b10e070
Organized SHA-256: 3b3825362823c2794f0a4392e3177e9654782bf0fb4b4b919a6dcf82f7a4f954
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Pure typed map views and the whole six-field RepresentationFamily are materialized together, retaining its selected representation, degree, source/target families and supplied InducedBy predicate/proof. Scoped Certified/Claim/ConditionalCertificate adapters remain whole archived commands, including their genuine conditional projection theorem. No algebraic K-theory construction, etale comparison existence, bijectivity without its stored hypothesis or representation independence is inferred. All original namespace and control blocks are copied unchanged. Only listed same-source public companion imports are added; original imported providers remain literal and unreplayed.
-/

import DAF.Arithmetic.Interface
import DAF.Comparison.Construction
import DAF.Comparison.LogicalStatus
import DAF.Comparison.Properties
import DAF.Comparison.Scope

/-!
# Comparison-calculus adapters for arithmetic data

This module turns supplied arithmetic maps into typed comparison objects.  It
does not construct a representation, algebraic K-theory functor, or etale
comparison theorem.  Provenance is independent of logical status: fixing a
representation selects a definite map, while bijectivity can remain
conditional or conjectural.

The representation parameter is retained by `RepresentationFamily.comparison`.
The etale adapter retains its explicit coefficient change and produces a
conditional certificate whose hypothesis is exactly the one stored by the
caller.  Architectural metadata such as scope never proves a map property.
-/

namespace DAF.Arithmetic

open scoped MonoidAlgebra

universe uP uS uT uRG uRN uR uC uK uE

namespace KTheoryFunctoriality

/-- The K-theory realization map selected in one degree. -/
def comparison
    {A : RepresentationDatum}
    (K : KTheoryFunctoriality A)
    (degree : Int) :
    Comparison.Spec (K.Source degree) (K.Target degree) :=
  ⟨K.kTheoryMap degree⟩

@[simp]
theorem comparison_apply
    {A : RepresentationDatum}
    (K : KTheoryFunctoriality A)
    (degree : Int)
    (x : K.Source degree) :
    (K.comparison degree).map x = K.kTheoryMap degree x :=
  rfl

end KTheoryFunctoriality

/--
A representation-indexed family of K-theory realization maps with common
source and target types.

The proof predicate is supplied by the chosen K-theory model.  Every selected
map is proved to be induced by the corresponding representation's group-ring
homomorphism.
-/
structure RepresentationFamily
    (Representation : Type uP) where
  datum : Representation → RepresentationDatum.{uRG, uRN}
  Source : Int → Type uS
  Target : Int → Type uT
  map :
    Representation →
      (degree : Int) → Source degree → Target degree
  InducedBy :
    (representation : Representation) →
      (MonoidAlgebra ℤ (datum representation).Group →+*
        (datum representation).NumberRing) →
      ((degree : Int) → Source degree → Target degree) → Prop
  induced_by_groupRingMap :
    ∀ representation,
      InducedBy representation
        (datum representation).groupRingMap
        (map representation)

namespace RepresentationFamily

/--
The realization family as a representation-parameterized comparison.  No
existential hides the selected representation.
-/
def comparison
    {Representation : Type uP}
    (F : RepresentationFamily Representation)
    (degree : Int) :
    Comparison.Parameterized
      Representation
      (F.Source degree)
      (F.Target degree) :=
  ⟨fun representation ↦ F.map representation degree⟩

@[simp]
theorem comparison_apply
    {Representation : Type uP}
    (F : RepresentationFamily Representation)
    (representation : Representation)
    (degree : Int)
    (x : F.Source degree) :
    (F.comparison degree).map representation x =
      F.map representation degree x :=
  rfl

/-- A fixed representation selects an ordinary comparison, without erasing the family. -/
def comparisonAt
    {Representation : Type uP}
    (F : RepresentationFamily Representation)
    (representation : Representation)
    (degree : Int) :
    Comparison.Spec (F.Source degree) (F.Target degree) :=
  (F.comparison degree).at representation

end RepresentationFamily

namespace EtaleComparisonDatum

/-- The map part of an arithmetic/etale comparison datum. -/
def spec
    {R : Comparison.CoefficientContext.{uR}}
    {S : Comparison.CoefficientContext.{uC}}
    (E : EtaleComparisonDatum R S) :
    Comparison.Spec E.KTheoryObject.Carrier E.EtaleObject.Carrier :=
  ⟨E.comparison⟩

@[simp]
theorem spec_apply
    {R : Comparison.CoefficientContext.{uR}}
    {S : Comparison.CoefficientContext.{uC}}
    (E : EtaleComparisonDatum R S)
    (x : E.KTheoryObject.Carrier) :
    E.spec.map x = E.comparison x :=
  rfl

end EtaleComparisonDatum

end DAF.Arithmetic
