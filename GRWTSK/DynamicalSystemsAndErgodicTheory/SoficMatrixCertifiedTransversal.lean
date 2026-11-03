/- Copyright (c) 2026 grwtsk contributors. MIT.

A certified transversal from the original finite labeled graph to its
natural-number adjacency matrix. Its fixed relation is the exact count
of based closed labeled walks at every length, NOT the count of distinct
periodic label points of a noninjective sofic factor.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel checking, transitive
axiom audit and expected-type replay: NOT_RUN.
-/
import GRWTSK.CategoryTheoryHomologicalAlgebra.GeneralTheoryOfCategoriesAndFunctors.CertifiedTransversal
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficPeriodicMatrixTrace

set_option autoImplicit false
noncomputable section

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficMatrixCertifiedTransversal

open GRWTSK.CategoryTheoryHomologicalAlgebra.GeneralTheoryOfCategoriesAndFunctors.CertifiedTransversal
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace

universe u v

variable {State : Type u} {Alphabet : Type v}
  [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- The mathematical relation to be transported is fixed before selecting
a bridge: the matrix trace counts every based closed labeled graph walk.
In particular, this relation says nothing about distinct periodic points
after a noninjective labeled factor map. -/
def GraphMatrixRelation
    (G : LabeledGraph State Alphabet) (M : Matrix State State ℕ) : Prop :=
  ∀ n : ℕ, Matrix.trace (M ^ n) = basedClosedWalkCount G n

/-- One canonical proof-carrying transversal. The actual graph-to-matrix
map is labeledAdjacency; the existing nontrivial path-count theorem supplies
the preservation proof, not a freely chosen similarity relation. -/
noncomputable def graphMatrixTransversal :
    Transversal (LabeledGraph State Alphabet) (Matrix State State ℕ)
      (fun _ => True) (fun _ => True)
      (GraphMatrixRelation (State := State) (Alphabet := Alphabet)) :=
  Transversal.ofFunction
    (fun G : LabeledGraph State Alphabet => labeledAdjacency G)
    (by
      intro G _
      trivial)
    (by
      intro G _ n
      exact trace_pow_eq_basedClosedWalkCount G n)

/-- The canonical transversal's source coverage and certification produce
an actual matrix witness for every finite labeled graph. -/
theorem graphMatrix_has_certified_target
    (G : LabeledGraph State Alphabet) :
    ∃ M : Matrix State State ℕ, GraphMatrixRelation G M := by
  obtain ⟨M, _, hRelation⟩ :=
    Transversal.exists_related
      (graphMatrixTransversal (State := State) (Alphabet := Alphabet))
      G True.intro
  exact ⟨M, hRelation⟩

/-- These two finite labeled presentations accept exactly the same entire
finite-word language, not merely a common observed path. -/
theorem doubleLoop_alternating_same_full_language :
    ∀ word : List Unit,
      GraphLanguage doubleLoopUnitGraph word ↔
      GraphLanguage alternatingUnitGraph word := by
  intro word
  constructor
  · intro _
    exact alternatingLanguage_all word
  · intro _
    exact doubleLoopLanguage_all word

/-- Full finite-word-language equality cannot transport matrix traces:
the double-loop graph has trace 2 at length one, while the alternating
graph has trace 0. These graphs have the same one-symbol factor language.
Thus additional lift/period compatibility is essential before identifying
graph zeta data with the distinct periodic points of a labeled factor. -/
theorem same_full_language_does_not_imply_same_matrix_trace :
    ¬ (∀ (G H : LabeledGraph Bool Unit),
      (∀ word : List Unit, GraphLanguage G word ↔ GraphLanguage H word) →
        Matrix.trace (labeledAdjacency G) =
          Matrix.trace (labeledAdjacency H)) := by
  intro hAll
  have hTrace :=
    hAll doubleLoopUnitGraph alternatingUnitGraph
      doubleLoop_alternating_same_full_language
  rw [doubleLoop_trace_one, alternating_trace_one] at hTrace
  norm_num at hTrace

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficMatrixCertifiedTransversal
