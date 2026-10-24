# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ArchimedeanFiber.Variantb7d285e72a592544d529257adf437a1857b840f723a10161fc17a940046e4cf3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07f0cd39937d8f9fd2308f2af855c3ba9a6501e8` · SHA-256 `b7d285e72a592544d529257adf437a1857b840f723a10161fc17a940046e4cf3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.ResearchTopos.RodgersTaoHeat
import Folder.ResearchTopos.ZeroFlowODE
import Folder.AdelicInfinityTopos.Place
import Folder.AdelicInfinityTopos.SpectrumObject

/-!
# Folder.AdelicInfinityTopos.ArchimedeanFiber

Radiation role: research-boundary
BinaryMatrix spine: This module records the Archimedean heat-flow fiber as external analytic contract data.
Ontology: adelic.archimedean_fiber
Pivot role: spectral
Zero typology: debruijn-newman
Contract boundary: external-witness
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace AdelicInfinityTopos

structure ArchimedeanRodgersTaoFiber where
  place : Place
  place_archimedean : place = Place.archimedean
  heatFamily : ResearchTopos.RodgersTaoHeatFamily
  zeroDynamics : ResearchTopos.RodgersTaoZeroDynamics heatFamily
  spectrumObject : SpectrumObject
  heatToSpectrum : Prop
  localEquilibrium : zeroDynamics.localEquilibriumConclusion

theorem archimedean_fiber_place
    (F : ArchimedeanRodgersTaoFiber) :
    F.place = Place.archimedean :=
  F.place_archimedean

theorem archimedean_fiber_local_equilibrium
    (F : ArchimedeanRodgersTaoFiber) :
    F.zeroDynamics.localEquilibriumConclusion :=
  F.localEquilibrium

end AdelicInfinityTopos
end Folder
```
