import Think.SourceTree.PoleAssignment

set_option autoImplicit false

namespace Think.Poles.Boundary

def placements : List Think.SourceTree.PhasePlacement :=
  Think.SourceTree.placementsForPole Think.SourceTree.Pole.boundary

theorem placements_count :
    placements.length = 8 :=
  Think.SourceTree.boundaryPole_count

theorem placements_centerControlled :
    ∀ q ∈ placements, q.phase ∈ Think.centerSpine := by
  intro q _hq
  exact Think.SourceTree.center_spine_controls_all_poles q

end Think.Poles.Boundary
