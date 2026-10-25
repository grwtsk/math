import Think.Validation.PoleCoverage

set_option autoImplicit false

namespace Think.Validation

theorem centerSpineControlsAllPoles :
    ∀ q : Think.SourceTree.PhasePlacement, q.phase ∈ Think.centerSpine := by
  exact Think.SourceTree.center_spine_controls_all_poles

end Think.Validation
