# Complete source: GRWTSK.Analysis.MeasureTheory.LpOrder.Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d868202b6c8c88ddacb18439f6f043f59b30bcc4` · SHA-256 `140f4e3417aec682cd1efc68ce5c5deec43c32705511cf2b2960f886a63ee8c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.CoeFnLe.Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.CoeFnLe.Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/MeasureTheory/Function/LpOrder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
module

public import Mathlib.MeasureTheory.Function.ConvergenceInMeasure

/-!
# Order related properties of Lp spaces

## Results

- `Lp E p μ` is an ordered group when `E` is a `NormedLatticeAddCommGroup`.

## TODO

- move definitions of `Lp.posPart` and `Lp.negPart` to this file, and define them as
  `PosPart.pos` and `NegPart.neg` given by the lattice structure.

-/


namespace GRWTSK.Analysis.MeasureTheory.CoeFnLe.Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95

public section



open TopologicalSpace MeasureTheory
open scoped ENNReal

variable {α E : Type*} {m : MeasurableSpace α} {μ : Measure α} {p : ℝ≥0∞}

namespace MeasureTheory

namespace Lp

section Order

variable [NormedAddCommGroup E]

section PartialOrder

variable [PartialOrder E]

theorem coeFn_le (f g : Lp E p μ) : f ≤ᵐ[μ] g ↔ f ≤ g := by
  rw [← Subtype.coe_le_coe, ← AEEqFun.coeFn_le]

theorem coeFn_nonneg (f : Lp E p μ) : 0 ≤ᵐ[μ] f ↔ 0 ≤ f := by
  rw [← coeFn_le]
  exact ⟨(Lp.coeFn_zero E p μ).trans_le, (Lp.coeFn_zero E p μ).symm.trans_le⟩

variable [IsOrderedAddMonoid E]

instance instAddLeftMono : AddLeftMono (Lp E p μ) := by
  refine ⟨fun f g₁ g₂ hg₁₂ => ?_⟩
  rw [← coeFn_le] at hg₁₂ ⊢
  filter_upwards [coeFn_add f g₁, coeFn_add f g₂, hg₁₂] with _ h1 h2 h3
  rw [h1, h2, Pi.add_apply, Pi.add_apply]
  exact add_le_add le_rfl h3

instance instIsOrderedAddMonoid : IsOrderedAddMonoid (Lp E p μ) :=
  { add_le_add_left := fun _ _ => add_le_add_left }

instance [Fact (1 ≤ p)] [ClosedIciTopology E] : OrderClosedTopology (Lp E p μ) where
  isClosed_le' := isClosed_le_of_isClosed_nonneg <| IsSeqClosed.isClosed <|
      fun f f₀ (hf : ∀ n, 0 ≤ f n) h_tendsto ↦ by
    simp only [← coeFn_nonneg] at hf ⊢
    obtain ⟨φ, -, hφ⟩ := tendstoInMeasure_of_tendsto_Lp h_tendsto |>.exists_seq_tendsto_ae
    filter_upwards [countable_iInter_mem.mpr hf, hφ] with x hx hφx
    exact ge_of_tendsto' hφx fun _ ↦ Set.mem_iInter.mp hx _

end PartialOrder

section Lattice

variable [Lattice E] [HasSolidNorm E] [IsOrderedAddMonoid E]

theorem _root_.GRWTSK.Analysis.MeasureTheory.CoeFnLe.Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.MeasureTheory.MemLp.sup {f g : α → E} (hf : MemLp f p μ) (hg : MemLp g p μ) :
    MemLp (f ⊔ g) p μ :=
  MemLp.mono' (hf.norm.add hg.norm) (hf.aestronglyMeasurable.sup hg.aestronglyMeasurable)
    (Filter.Eventually.of_forall fun x => norm_sup_le_add (f x) (g x))

theorem _root_.GRWTSK.Analysis.MeasureTheory.CoeFnLe.Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.MeasureTheory.MemLp.inf {f g : α → E} (hf : MemLp f p μ) (hg : MemLp g p μ) :
    MemLp (f ⊓ g) p μ :=
  MemLp.mono' (hf.norm.add hg.norm) (hf.aestronglyMeasurable.inf hg.aestronglyMeasurable)
    (Filter.Eventually.of_forall fun x => norm_inf_le_add (f x) (g x))

theorem _root_.GRWTSK.Analysis.MeasureTheory.CoeFnLe.Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.MeasureTheory.MemLp.abs {f : α → E} (hf : MemLp f p μ) : MemLp |f| p μ :=
  hf.sup hf.neg

instance instLattice : Lattice (Lp E p μ) :=
  Subtype.lattice
    (fun f g hf hg => by
      rw [mem_Lp_iff_memLp] at *
      exact (memLp_congr_ae (AEEqFun.coeFn_sup _ _)).mpr (hf.sup hg))
    fun f g hf hg => by
    rw [mem_Lp_iff_memLp] at *
    exact (memLp_congr_ae (AEEqFun.coeFn_inf _ _)).mpr (hf.inf hg)

theorem coeFn_sup (f g : Lp E p μ) : ⇑(f ⊔ g) =ᵐ[μ] ⇑f ⊔ ⇑g :=
  AEEqFun.coeFn_sup _ _

theorem coeFn_inf (f g : Lp E p μ) : ⇑(f ⊓ g) =ᵐ[μ] ⇑f ⊓ ⇑g :=
  AEEqFun.coeFn_inf _ _

theorem coeFn_abs (f : Lp E p μ) : ⇑|f| =ᵐ[μ] fun x => |f x| :=
  AEEqFun.coeFn_abs _

instance instHasSolidNorm [Fact (1 ≤ p)] :
    HasSolidNorm (Lp E p μ) :=
  { solid := fun f g hfg => by
      rw [← coeFn_le] at hfg
      simp_rw [Lp.norm_def, ENNReal.toReal_le_toReal (Lp.eLpNorm_ne_top f) (Lp.eLpNorm_ne_top g)]
      refine eLpNorm_mono_ae (Lp.aestronglyMeasurable f) ?_
      filter_upwards [hfg, Lp.coeFn_abs f, Lp.coeFn_abs g] with x hx hxf hxg
      rw [hxf, hxg] at hx
      exact HasSolidNorm.solid hx }

end Lattice

end Order

end Lp

end MeasureTheory
```
