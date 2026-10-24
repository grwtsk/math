# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafSpectrumOperator.Varianteb58aa442af1e68c9c0624b0297c9ce5e6ec15e6799a7dca1a6484fed15c8611

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0fad8ae82eb290ad9433e915c1f1031ef9912ca6` · SHA-256 `eb58aa442af1e68c9c0624b0297c9ce5e6ec15e6799a7dca1a6484fed15c8611`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.AdelicInfinityTopos.SheafOfSpectra
import Folder.AdelicInfinityTopos.SpectrumObject

/-!
# Folder.CrystallineIndex.SheafSpectrumOperator

Radiation role: research-boundary
BinaryMatrix spine: This module records sheaf-spectrum operators, not BinaryMatrix operators.
Ontology: crystalline_index.sheaf_spectrum_operator
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

open AdelicInfinityTopos
open ResearchTopos

/--
A contract-level operator acting between spectra assigned by a sheaf of
spectra.

This is the correct abstraction for an operator acting on a sheaf of spectra.
It is not computed by `Folder.Research.ArithmeticBoundary`.
-/
structure SheafSpectrumOperator
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    (F : SheafOfSpectra J) where
  sourceObj : C.Obj
  targetObj : C.Obj
  sourceSpectrum : SpectrumObject := F.presheaf.obj sourceObj
  targetSpectrum : SpectrumObject := F.presheaf.obj targetObj
  morphism : SpectrumMorphism sourceSpectrum targetSpectrum
  fredholmAnalogue : Prop
  fredholmAnalogue_certified : fredholmAnalogue
  diracType : Prop
  diracType_certified : diracType
  label : String

theorem sheaf_operator_fredholm_analogue
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    {F : SheafOfSpectra J}
    (D : SheafSpectrumOperator F) :
    D.fredholmAnalogue :=
  D.fredholmAnalogue_certified

theorem sheaf_operator_dirac_type
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    {F : SheafOfSpectra J}
    (D : SheafSpectrumOperator F) :
    D.diracType :=
  D.diracType_certified

end CrystallineIndex
end Folder
```
