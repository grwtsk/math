# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.StrongApproximationBoundary.Variant711701a3c4b0a9e94d227578bdd3dd6061110c11eb9bcfbb31409cde73b18c16

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `562df23acc0c71a51a4b2782b48ea5f0821335d1` · SHA-256 `711701a3c4b0a9e94d227578bdd3dd6061110c11eb9bcfbb31409cde73b18c16`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.AdelicInfinityTopos.AdelicSpectralSheaf

/-!
# Folder.AdelicInfinityTopos.StrongApproximationBoundary

Radiation role: research-boundary
BinaryMatrix spine: This module keeps strong approximation as local-global compatibility contract data.
Ontology: adelic.strong_approximation_boundary
Pivot role: arithmetic
Zero typology: none
Contract boundary: contract
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace AdelicInfinityTopos

structure StrongApproximationContract where
  ArithmeticGroup : Type _
  AdeleGroup : Type _
  denseDiagonalImage : Prop
  localGlobalCompatibility : Prop
  sourceLabel : String

structure StrongApproximationToBoundaryAlignment where
  strongApproximation : StrongApproximationContract
  adelicSheaf : AdelicSpectralSheaf
  suppliesRestrictionCompatibility : Prop
  suppliesRestrictionCompatibility_certified : suppliesRestrictionCompatibility
  suppliesSpectralDensityCompatibility : Prop
  doesNotProveCriticalLineAlone : Prop
  doesNotProveCriticalLineAlone_certified : doesNotProveCriticalLineAlone

theorem strong_approx_supplies_restriction_compatibility
    (S : StrongApproximationToBoundaryAlignment) :
    S.suppliesRestrictionCompatibility :=
  S.suppliesRestrictionCompatibility_certified

theorem strong_approx_does_not_prove_critical_line_alone
    (S : StrongApproximationToBoundaryAlignment) :
    S.doesNotProveCriticalLineAlone :=
  S.doesNotProveCriticalLineAlone_certified

end AdelicInfinityTopos
end Folder
```
