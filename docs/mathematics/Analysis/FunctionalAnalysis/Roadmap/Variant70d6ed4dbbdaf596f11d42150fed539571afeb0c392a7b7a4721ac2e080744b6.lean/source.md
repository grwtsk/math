# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Roadmap.Variant70d6ed4dbbdaf596f11d42150fed539571afeb0c392a7b7a4721ac2e080744b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d03216346768688c50b9562c8d641f22c7578f9` · SHA-256 `70d6ed4dbbdaf596f11d42150fed539571afeb0c392a7b7a4721ac2e080744b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.Degree
import Folder.DerivedSheaf.SectionComplex
import Folder.DerivedSheaf.HandleComplex
import Folder.DerivedSheaf.DerivedObject
import Folder.DerivedSheaf.PerfectComplex
import Folder.DerivedSheaf.EulerCharacteristic
import Folder.DerivedSheaf.EulerTransport
import Folder.DerivedSheaf.RodgersTaoEulerTransport
import Folder.DerivedSheaf.RodgersTaoQuasiIsomorphism
import Folder.DerivedSheaf.BaseCaseLFunction
import Folder.DerivedSheaf.CriticalCenterNormalization
import Folder.DerivedSheaf.BaseCaseEllipticCurve
import Folder.DerivedSheaf.BaseCaseSectionComplex
import Folder.DerivedSheaf.BaseCaseIndex
import Folder.DerivedSheaf.BaseCaseIndexAnchor
import Folder.DerivedSheaf.BaseCasePropagation
import Folder.DerivedSheaf.StandardReferenceBaseCase
import Folder.DerivedSheaf.BaseCaseUnresolvedIssues
import Folder.DerivedSheaf.DerivedCategoryBoundary
import Folder.DerivedSheaf.DerivedIndex
import Folder.DerivedSheaf.KTheoryClass
import Folder.DerivedSheaf.ModuliStackKTheory
import Folder.DerivedSheaf.KTheoryIndex
import Folder.DerivedSheaf.ChernRealization
import Folder.DerivedSheaf.WittRealization
import Folder.DerivedSheaf.ArithmeticBoundaryBridge
import Folder.DerivedSheaf.CrystallineIndexBridge
import Folder.DerivedSheaf.SpectralKTheoryBridge
import Folder.DerivedSheaf.DiracKTraceFormula
import Folder.DerivedSheaf.UnresolvedIssues

/-!
# Folder.DerivedSheaf.Roadmap

Radiation role: research-boundary
BinaryMatrix spine: This module summarizes derived-sheaf index modules, not BinaryMatrix data.
Ontology: derived.roadmap
Pivot role: none
Zero typology: none
Contract boundary: roadmap
Composite stack role: derived-sheaf

Boundary                                      Status
Section complex                               Definition/contract
Handle complex using Folder.Sheaf.Handle      Definition/contract
Derived object                                Contract
Perfect complex                               Contract
Euler characteristic                          Contract
Euler-preserving transport                    Contract/proved field exposure
Rodgers-Tao derived transport                 External analytic data plus supplied transport
Rodgers-Tao quasi-isomorphism                 External analytic data plus supplied quasi-isomorphism
Base-case index anchor                        External witness plus Euler/K-index bridge
Standard-reference base case                  Toy regression witness
K(M_ell)                                      Contract
K-theory index                                Primary index object
Chern realization                             Contract
Witt realization                              Contract
Arithmetic support for K-index                Contract bridge
Spectral object -> K-index                    Contract bridge
Dirac/K trace formula                         Contract bridge
Full derived category                         Not claimed
Actual K(M_ell) computation                   Not claimed
-/

namespace Folder
namespace DerivedSheaf

def roadmapLabel : String :=
  "Derived sheaf index: section complex -> perfect complex -> K(M_ell) -> optional Witt realization"

end DerivedSheaf
end Folder
```
