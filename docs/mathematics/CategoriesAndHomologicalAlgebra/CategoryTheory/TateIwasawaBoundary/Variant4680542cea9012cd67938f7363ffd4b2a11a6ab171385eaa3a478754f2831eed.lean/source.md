# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TateIwasawaBoundary.Variant4680542cea9012cd67938f7363ffd4b2a11a6ab171385eaa3a478754f2831eed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `522485b803dbfcb35a5ee8ff2fa1c2e88d9a2005` · SHA-256 `4680542cea9012cd67938f7363ffd4b2a11a6ab171385eaa3a478754f2831eed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.AdelicInfinityTopos.AdelicSpectralSheaf

/-!
# Folder.AdelicInfinityTopos.TateIwasawaBoundary

Radiation role: research-boundary
BinaryMatrix spine: This module records Tate/Iwasawa local-global L-factor compatibility as a contract.
Ontology: adelic.tate_iwasawa_boundary
Pivot role: arithmetic
Zero typology: l-function
Contract boundary: contract
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace AdelicInfinityTopos

structure LocalLFactor where
  place : Place
  FactorData : Type _
  epsilonFactor? : Option Type
  gammaFactor? : Option Type
  compatible : Prop

structure GlobalLFunctionAssembly where
  localFactor : Place → Option LocalLFactor
  globalLFunction : Type _
  productFormula : Prop
  productFormula_certified : productFormula
  functionalEquation : Prop
  functionalEquation_certified : functionalEquation

structure TateIwasawaCompatibility where
  assembly : GlobalLFunctionAssembly
  adelicSheaf : AdelicSpectralSheaf
  localFactorsMatchSheafFibers : Prop
  archimedeanGammaFactorMatchesHeatFiber : Prop
  finiteFactorsMatchTMFFibers : Prop

theorem tate_iwasawa_product_formula
    (T : TateIwasawaCompatibility) :
    T.assembly.productFormula :=
  T.assembly.productFormula_certified

theorem tate_iwasawa_functional_equation
    (T : TateIwasawaCompatibility) :
    T.assembly.functionalEquation :=
  T.assembly.functionalEquation_certified

end AdelicInfinityTopos
end Folder
```
