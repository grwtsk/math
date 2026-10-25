# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Stickiness.Variant388ec3f4dee138621b10dc6491d246348930e214d8e2241abd81835ef1c5e3a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `036e614e94dbeaa04cbaf10ebb394ac05791c472` · SHA-256 `388ec3f4dee138621b10dc6491d246348930e214d8e2241abd81835ef1c5e3a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
