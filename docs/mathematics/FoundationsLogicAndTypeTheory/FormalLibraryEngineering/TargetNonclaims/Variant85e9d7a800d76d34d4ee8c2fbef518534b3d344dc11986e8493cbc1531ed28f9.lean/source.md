# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TargetNonclaims.Variant85e9d7a800d76d34d4ee8c2fbef518534b3d344dc11986e8493cbc1531ed28f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48442423d359be9e1331431f4c5f642debd9a8f4` · SHA-256 `85e9d7a800d76d34d4ee8c2fbef518534b3d344dc11986e8493cbc1531ed28f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
