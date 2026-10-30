/- Local attribution: grwtsk contributors. Source candidates; verification NOT_RUN. -/
import Analysis.Misc.erdos_613

namespace GRWTSK.Combinatorics.GraphTheory.TaoErdos.Erdos613

/-- A concrete witness with its vertex count restored explicitly; the upstream
existential statement alone does not include the count sixteen. -/
theorem concrete_ramsey_witness :
    Fintype.card _root_.PikhurkoN5.V = 16 ∧
    _root_.PikhurkoN5.G.edgeSet.ncard = 44 ∧
    ∀ color : Sym2 _root_.PikhurkoN5.V → Fin 2,
      _root_.hasMonoStar _root_.PikhurkoN5.G color 0 5 ∨
      _root_.hasMonoTriangle _root_.PikhurkoN5.G color 1 := by
  refine ⟨_root_.PikhurkoN5.card_V, _root_.PikhurkoN5.edge_count_44, ?_⟩
  intro color
  by_cases h : _root_.hasMonoStar _root_.PikhurkoN5.G color 0 5
  · exact Or.inl h
  · exact Or.inr (_root_.PikhurkoN5.red_triangle_of_no_blue_star color h)

end GRWTSK.Combinatorics.GraphTheory.TaoErdos.Erdos613
