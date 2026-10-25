# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MOD07SemanticEquivalence.Variantfede83d9b83bcf0a11ca693f761c4db23b6f4033710d2c4c7d0cacf5e7f05625

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b2005b4395a562abaaeefb9d48639f6df0793c6` · SHA-256 `fede83d9b83bcf0a11ca693f761c4db23b6f4033710d2c4c7d0cacf5e7f05625`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Theorems.MOD06_ConditionalAlgebraization

namespace FCRS.Algebraization.Theorems

/--
If semantic pullback is separately full and faithful, the ME1--ME8 target is
equivalent to the algebraic semantic category.
-/
theorem mod07_semanticEquivalence
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hSource : SemanticSourceEffective S) :
    EquivalenceWitness (semanticPullbackEff S hSource) := by
  have hFF := registry.modFullFaithful
  exact equivalenceRestrictCodomain
    S.functors.SemanticPullback
    (fun Y => ModuliEffectivityCertificate S.moduli Y)
    hSource
    hFF.1
    hFF.2
    (fun Y hY => registry.modPipeline Y hY)

end FCRS.Algebraization.Theorems
```
