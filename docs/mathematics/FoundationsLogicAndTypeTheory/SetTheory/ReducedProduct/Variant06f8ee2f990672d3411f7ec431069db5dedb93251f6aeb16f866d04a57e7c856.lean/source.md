# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.ReducedProduct.Variant06f8ee2f990672d3411f7ec431069db5dedb93251f6aeb16f866d04a57e7c856

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36d237243ba4791c956bfa2f6d12edb9dc9a6c19` · SHA-256 `06f8ee2f990672d3411f7ec431069db5dedb93251f6aeb16f866d04a57e7c856`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Order.Filter.CountableInter
import Mathlib.Order.WellFounded
import Mathlib.SetTheory.Ordinal.Basic

/-!
# Well-founded ordinal products modulo countably complete filters

This proves the elementary well-foundedness prerequisite in Eisworth's route.
It does not produce pcf generators, true cofinalities, or a revised-GCH family.
The strict relation is eventual coordinatewise ordinal inequality. NeBot and
countable completeness are essential explicit hypotheses.
Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace FormalResearch.MathematicalTooling.Coverage

universe u v
open Filter

/-- Strict order on representatives of an ordinal reduced product. -/
def ReducedOrdinalLT {I : Type u} (F : Filter I) (f g : I → Ordinal.{v}) : Prop :=
  ∀ᶠ i in F, f i < g i

/-- Countable completeness realizes an alleged descending chain at one coordinate. -/
theorem reducedOrdinalLT_wellFounded {I : Type u} (F : Filter I)
    [NeBot F] [CountableInterFilter F] : WellFounded (@ReducedOrdinalLT.{u, v} I F) := by
  rw [wellFounded_iff_isEmpty_descending_chain]
  refine ⟨fun ⟨sequence, descending⟩ ↦ ?_⟩
  have simultaneous : ∀ᶠ i in F, ∀ n, sequence (n + 1) i < sequence n i :=
    eventually_countable_forall.mpr descending
  obtain ⟨i, hi⟩ := simultaneous.exists
  exact (wellFounded_iff_isEmpty_descending_chain.mp Ordinal.lt_wf).false
    ⟨fun n ↦ sequence n i, hi⟩

/-- Changing either representative by eventual equality preserves the strict order. -/
theorem reducedOrdinalLT_congr {I : Type u} (F : Filter I)
    {f f' g g' : I → Ordinal.{v}} (hf : f =ᶠ[F] f') (hg : g =ᶠ[F] g') :
    ReducedOrdinalLT F f g ↔ ReducedOrdinalLT F f' g' := by
  constructor
  · intro h
    filter_upwards [h, hf, hg] with i hlt heqf heqg
    simpa only [← heqf, ← heqg] using hlt
  · intro h
    filter_upwards [h, hf, hg] with i hlt heqf heqg
    simpa only [heqf, heqg] using hlt

/-- Eventual equality is the actual reduced-product equivalence. -/
def reducedOrdinalSetoid {I : Type u} (F : Filter I) : Setoid (I → Ordinal.{v}) where
  r f g := f =ᶠ[F] g
  iseqv := ⟨fun f ↦ Filter.EventuallyEq.refl F f,
    Filter.EventuallyEq.symm, Filter.EventuallyEq.trans⟩

/-- Ordinal-valued functions modulo eventual equality. -/
abbrev ReducedOrdinalProduct {I : Type u} (F : Filter I) :=
  Quotient (@reducedOrdinalSetoid.{u, v} I F)

/-- The strict order descends independently of the representative choices. -/
def ReducedProductLT {I : Type u} (F : Filter I) :
    ReducedOrdinalProduct.{u, v} F → ReducedOrdinalProduct.{u, v} F → Prop :=
  Quotient.lift₂ (ReducedOrdinalLT F) (by
    intro f g f' g' hf hg
    exact propext (reducedOrdinalLT_congr F hf hg))

/-- Well-foundedness applies to the actual quotient, not only chosen functions. -/
theorem reducedProductLT_wellFounded {I : Type u} (F : Filter I)
    [NeBot F] [CountableInterFilter F] : WellFounded (@ReducedProductLT.{u, v} I F) := by
  classical
  apply (InvImage.wf (fun q : ReducedOrdinalProduct.{u, v} F ↦ q.out)
    (reducedOrdinalLT_wellFounded F)).mono
  intro x y h
  change ReducedOrdinalLT F x.out y.out
  change ReducedProductLT F (Quotient.mk _ x.out) (Quotient.mk _ y.out)
  simpa only [Quotient.out_eq] using h

end FormalResearch.MathematicalTooling.Coverage
```
