# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MassGapObstruction.Variantd0b93ab62d70e0c9def70e5dd32af6e13009aef65a48f31476a17e0090151aed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7807e978fe2697240a74e64368a6407e12978eb1` · SHA-256 `d0b93ab62d70e0c9def70e5dd32af6e13009aef65a48f31476a17e0090151aed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.GrandChallenge.YangMills.ConcentrationExclusion
import Folder.GrandChallenge.YangMills.Stickiness
import Folder.GrandChallenge.YangMills.MirzakhaniVolumeAnalogy

/-!
# Folder.GrandChallenge.YangMills.MassGapObstruction

Radiation role: research-boundary
BinaryMatrix spine: This module records Yang-Mills mass-gap obstruction contracts.
Ontology: yang_mills_concentration_obstruction
Pivot role: gauge
Zero typology: mass-gap-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace YangMills

structure MassGapObstruction where
  configuration : GaugeFieldConfiguration
  tubeEstimate : TubeVolumeEstimatePackage
  stickiness : StickinessPrinciple
  volumeAnalogy : MirzakhaniVolumeAnalogy
  zeroMassExcitationObstructed : Prop
  zeroMassExcitationObstructed_certified :
    zeroMassExcitationObstructed
  sourceLabel : String

theorem ym_zero_mass_obstructed_if_supplied
    (O : MassGapObstruction) :
    O.zeroMassExcitationObstructed :=
  O.zeroMassExcitationObstructed_certified

end YangMills
end GrandChallenge
end Folder
```
