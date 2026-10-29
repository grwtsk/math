import Folder.GrandChallenge.YangMills.ConcentrationExclusion

/-!
# Folder.GrandChallenge.YangMills.Stickiness

Radiation role: research-boundary
BinaryMatrix spine: This module records Yang-Mills stickiness contracts.
Ontology: yang_mills_concentration_obstruction
Pivot role: gauge
Zero typology: mass-gap-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace YangMills

structure StickinessPrinciple where
  configuration : GaugeFieldConfiguration
  nontrivialEnergyPersistsUnderAllowedContinuation : Prop
  nontrivialEnergyPersistsUnderAllowedContinuation_certified :
    nontrivialEnergyPersistsUnderAllowedContinuation
  sourceLabel : String

theorem ym_stickiness_if_supplied
    (S : StickinessPrinciple) :
    S.nontrivialEnergyPersistsUnderAllowedContinuation :=
  S.nontrivialEnergyPersistsUnderAllowedContinuation_certified

end YangMills
end GrandChallenge
end Folder
