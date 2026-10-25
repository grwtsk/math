# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.7e3848c6011000b17d71ed93b978f2eddb2c876437417e0f5be0d92cd6335793Scope.Variant7e3848c6011000b17d71ed93b978f2eddb2c876437417e0f5be0d92cd6335793

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99de3a1d10308a46c0e166ee1c713e9c85369ee6` · SHA-256 `7e3848c6011000b17d71ed93b978f2eddb2c876437417e0f5be0d92cd6335793`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.MaximalDefect

namespace FormalResearch.PositiveAtlas.MaximalDefect

/-- Finitely many defect values alone do not ensure a greatest maximizer
without an additional finiteness or ascending-chain condition on the carrier. -/
theorem finite_values_do_not_ensure_greatest_maximizer :
    ∃ f : ℕ → ℝ, (Set.range f).Finite ∧ Supermodular f ∧
      ¬ ∃ g, IsGreatest {x | IsMaximizer f x} g := by
  refine ⟨fun _ => 0, Set.finite_range_const, fun _ _ => le_rfl, ?_⟩
  intro ⟨g, hg⟩
  have hbad : g + 1 ≤ g := hg.2 (fun _ => le_rfl)
  exact Nat.not_succ_le_self g hbad

end FormalResearch.PositiveAtlas.MaximalDefect
```
