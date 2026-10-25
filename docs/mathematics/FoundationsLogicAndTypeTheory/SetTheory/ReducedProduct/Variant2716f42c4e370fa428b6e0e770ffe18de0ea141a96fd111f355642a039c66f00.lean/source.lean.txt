-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.ReducedOrdinalLT.Variantccd349812c7efb93770a0d1a1a3d36be22fa701bdf9b77b73a53bf3fe29e4278","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ccd349812c7efb93770a0d1a1a3d36be22fa701bdf9b77b73a53bf3fe29e4278","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.ReducedOrdinalLT.Variantccd349812c7efb93770a0d1a1a3d36be22fa701bdf9b77b73a53bf3fe29e4278","mathematical_subject":"Logic.SetTheory","original_sha256":"ccd349812c7efb93770a0d1a1a3d36be22fa701bdf9b77b73a53bf3fe29e4278","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/FormalResearch/MathematicalTooling/Coverage/ReducedProduct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.ReducedOrdinalLT.Variantccd349812c7efb93770a0d1a1a3d36be22fa701bdf9b77b73a53bf3fe29e4278

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
