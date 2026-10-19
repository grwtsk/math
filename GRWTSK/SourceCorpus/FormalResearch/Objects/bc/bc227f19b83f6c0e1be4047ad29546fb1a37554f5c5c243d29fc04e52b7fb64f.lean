import Mathematics.SemiLocalDefect.WP0.HorizonEmbedding.Definition

/-!
# Horizon-embedding coherence primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

structure HorizonEmbeddingCoherence
    (Low Mid High : FinitePrimeHorizon)
    (ι₁ : HorizonEmbedding Low Mid)
    (ι₂ : HorizonEmbedding Mid High)
    (ι₃ : HorizonEmbedding Low High) :
    Prop where
  mapCut_comp :
    ∀ S,
      ι₃.mapCut S =
      ι₂.mapCut (ι₁.mapCut S)
  persistent_id_comp :
    ∀ S,
      ι₃.persistent_cut_id S =
      ι₂.persistent_cut_id
        (ι₁.mapCut S)

end Mathematics.SemiLocalDefect.SoninCore
