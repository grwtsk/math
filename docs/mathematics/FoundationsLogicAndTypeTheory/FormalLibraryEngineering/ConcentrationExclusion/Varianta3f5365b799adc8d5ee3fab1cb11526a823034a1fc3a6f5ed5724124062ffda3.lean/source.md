# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConcentrationExclusion.Varianta3f5365b799adc8d5ee3fab1cb11526a823034a1fc3a6f5ed5724124062ffda3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9be4a1cb2f3ccf42843bb627c7777a9cafda7683` · SHA-256 `a3f5365b799adc8d5ee3fab1cb11526a823034a1fc3a6f5ed5724124062ffda3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Folder.GrandChallenge.YangMills.ConcentrationExclusion

Radiation role: research-boundary
BinaryMatrix spine: This module records Yang-Mills concentration-exclusion contracts.
Ontology: yang_mills_concentration_obstruction
Pivot role: gauge
Zero typology: mass-gap-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace YangMills

structure GaugeFieldConfiguration where
  label : String

structure TubeVolumeEstimatePackage where
  configuration : GaugeFieldConfiguration
  kakeyaStyleEstimateLabel : String
  excludesDegenerateTubeConcentration : Prop
  excludesDegenerateTubeConcentration_certified :
    excludesDegenerateTubeConcentration
  sourceLabel : String

theorem ym_tube_concentration_excluded_if_supplied
    (T : TubeVolumeEstimatePackage) :
    T.excludesDegenerateTubeConcentration :=
  T.excludesDegenerateTubeConcentration_certified

end YangMills
end GrandChallenge
end Folder
```
