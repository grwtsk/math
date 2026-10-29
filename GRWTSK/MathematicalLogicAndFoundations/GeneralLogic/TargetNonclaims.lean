import Think.Validation.BraidCoverage
import Think.Targets.All

set_option autoImplicit false

namespace Think.Validation

def targetNonclaimProfile : Prop :=
  ∀ w ∈ Think.Targets.allTargetWrappers,
    w.centerRoot = FWR.Target.CenterWeightedPipeline ∧
      Think.Targets.noExternalAuthorityUpgradeFor w.target

theorem targetNonclaimProfile_true :
    targetNonclaimProfile := by
  intro w h
  exact
    ⟨Think.Targets.allTargetWrappers_rootedAtCenter w h,
      Think.Targets.allTargetWrappers_noExternalAuthorityUpgrade w h⟩

end Think.Validation
