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
