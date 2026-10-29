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
