import Think.SourceTree.PoleAssignment

set_option autoImplicit false

namespace Think.Poles.Classifier

def placements : List Think.SourceTree.PhasePlacement :=
  Think.SourceTree.placementsForPole Think.SourceTree.Pole.classifier

theorem placements_count :
    placements.length = 7 :=
  Think.SourceTree.classifierPole_count

theorem placements_centerControlled :
    ∀ q ∈ placements, q.phase ∈ Think.centerSpine := by
  intro q _hq
  exact Think.SourceTree.center_spine_controls_all_poles q

end Think.Poles.Classifier
