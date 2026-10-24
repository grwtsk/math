import Think.Validation.ResidueCoverage

set_option autoImplicit false

namespace Think.Validation

theorem poleAssignmentComplete :
    Think.SourceTree.allPhasePlacements.length = 61 := by
  exact Think.SourceTree.pole_assignment_complete

theorem noDuplicatePhasePlacements :
    Think.SourceTree.allPhasePlacements.Nodup := by
  exact Think.SourceTree.no_duplicate_phase_placements

end Think.Validation
