import Folder.Presentation.ReferenceGraph

/-!
# Folder.Presentation.ReferenceRank

Radiation role: presentation-reference-rank
BinaryMatrix spine: This module records reference-ranked document ordering for views derived from BinaryMatrixStream archives.
Ontology: presentation.reference_rank
Pivot role: none
Zero typology: none
Contract boundary: interface
Composite stack role: presentation
-/

namespace Folder
namespace Presentation

structure RankedModule where
  moduleId : ModuleId
  inbound : Nat
  outbound : Nat
  score : Nat

def rankModule
    (G : ReferenceGraph)
    (M : ModuleId) : RankedModule where
  moduleId := M
  inbound := inboundWeight G M
  outbound := outboundWeight G M
  score := inboundWeight G M * 1000 + outboundWeight G M

structure ReferenceRanking where
  graph : ReferenceGraph
  ranked : List RankedModule
  contains_all :
    ∀ M, M ∈ graph.modules → ∃ R, R ∈ ranked ∧ R.moduleId = M
  sorted_desc :
    ranked.Pairwise (fun a b => b.score ≤ a.score)

theorem ranking_contains_module
    (R : ReferenceRanking)
    {M : ModuleId}
    (h : M ∈ R.graph.modules) :
    ∃ RM, RM ∈ R.ranked ∧ RM.moduleId = M :=
  R.contains_all M h

end Presentation
end Folder
