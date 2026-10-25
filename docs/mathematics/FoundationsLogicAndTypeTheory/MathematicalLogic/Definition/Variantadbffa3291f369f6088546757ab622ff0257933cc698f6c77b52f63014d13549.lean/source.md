# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Definition.Variantadbffa3291f369f6088546757ab622ff0257933cc698f6c77b52f63014d13549

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59966b290b6b2954417f59070d9f030e8821f218` · SHA-256 `adbffa3291f369f6088546757ab622ff0257933cc698f6c77b52f63014d13549`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP0.PrimeHorizon.Cut

/-!
# Horizon-embedding primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

structure HorizonEmbedding
    (Low High : FinitePrimeHorizon) where
  primeEmbedding : Low.Prime ↪ High.Prime
  preserves_value :
    ∀ p,
      High.value (primeEmbedding p) =
      Low.value p
  mapCut_injective :
    Function.Injective
      (fun S : PrimeCut Low =>
        S.map primeEmbedding)
  persistent_cut_id :
    PrimeCut Low →
    PersistentCutId

def HorizonEmbedding.mapCut
    {Low High : FinitePrimeHorizon}
    (ι : HorizonEmbedding Low High)
    (S : PrimeCut Low) :
    PrimeCut High :=
  S.map ι.primeEmbedding

@[simp]
theorem HorizonEmbedding.mapCut_empty
    {Low High : FinitePrimeHorizon}
    (ι : HorizonEmbedding Low High) :
    ι.mapCut ∅ = ∅ := by
  simp [HorizonEmbedding.mapCut]

@[simp]
theorem HorizonEmbedding.mapCut_insert
    {Low High : FinitePrimeHorizon}
    (ι : HorizonEmbedding Low High)
    (p : Low.Prime)
    (S : PrimeCut Low) :
    ι.mapCut (insert p S) =
      insert
        (ι.primeEmbedding p)
        (ι.mapCut S) := by
  simp [HorizonEmbedding.mapCut]

theorem HorizonEmbedding.mapCut_inj
    {Low High : FinitePrimeHorizon}
    (ι : HorizonEmbedding Low High)
    {S T : PrimeCut Low}
    (h : ι.mapCut S = ι.mapCut T) :
    S = T :=
  ι.mapCut_injective h

end Mathematics.SemiLocalDefect.SoninCore
```
