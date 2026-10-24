# Complete source: GRWTSK.Analysis.MeasureTheory.Lattice.Variant82bd346ddc228f2288f2e6cc1ce5803ef714c6d1a22b29d866b4ccf301ae415d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aaf90bd8480b5645b1c487582be37ca965960420` · SHA-256 `652abd6bb7e84a10052e7ea8a89edcd4b85b28d9bd9eeb2c27d0b65055980ae3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.MeasurableSup.Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.MeasurableSup.Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Order/Lattice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
import Mathlib.MeasureTheory.Measure.AEMeasurable

/-!
# Typeclasses for measurability of lattice operations

In this file we define classes `MeasurableSup` and `MeasurableInf` and prove dot-style
lemmas (`Measurable.sup`, `AEMeasurable.sup` etc). For binary operations we define two typeclasses:

- `MeasurableSup` says that both left and right sup are measurable;
- `MeasurableSup₂` says that `fun p : α × α => p.1 ⊔ p.2` is measurable,

and similarly for other binary operations. The reason for introducing these classes is that in case
of topological space `α` equipped with the Borel `σ`-algebra, instances for `MeasurableSup₂`
etc require `α` to have a second countable topology.

For instances relating, e.g., `ContinuousSup` to `MeasurableSup` see file
`MeasureTheory.BorelSpace`.

## Tags

measurable function, lattice operation

-/



namespace GRWTSK.Analysis.MeasureTheory.MeasurableSup.Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3

open MeasureTheory

/-- We say that a type has `MeasurableSup` if `(c ⊔ ·)` and `(· ⊔ c)` are measurable functions.
For a typeclass assuming measurability of `uncurry (· ⊔ ·)` see `MeasurableSup₂`. -/
class MeasurableSup (M : Type*) [MeasurableSpace M] [Max M] : Prop where
  measurable_const_sup : ∀ c : M, Measurable (c ⊔ ·)
  measurable_sup_const : ∀ c : M, Measurable (· ⊔ c)

/-- We say that a type has `MeasurableSup₂` if `uncurry (· ⊔ ·)` is a measurable functions.
For a typeclass assuming measurability of `(c ⊔ ·)` and `(· ⊔ c)` see `MeasurableSup`. -/
class MeasurableSup₂ (M : Type*) [MeasurableSpace M] [Max M] : Prop where
  measurable_sup : Measurable fun p : M × M => p.1 ⊔ p.2

export MeasurableSup₂ (measurable_sup)

export MeasurableSup (measurable_const_sup measurable_sup_const)

/-- We say that a type has `MeasurableInf` if `(c ⊓ ·)` and `(· ⊓ c)` are measurable functions.
For a typeclass assuming measurability of `uncurry (· ⊓ ·)` see `MeasurableInf₂`. -/
class MeasurableInf (M : Type*) [MeasurableSpace M] [Min M] : Prop where
  measurable_const_inf : ∀ c : M, Measurable (c ⊓ ·)
  measurable_inf_const : ∀ c : M, Measurable (· ⊓ c)

/-- We say that a type has `MeasurableInf₂` if `uncurry (· ⊓ ·)` is a measurable functions.
For a typeclass assuming measurability of `(c ⊓ ·)` and `(· ⊓ c)` see `MeasurableInf`. -/
class MeasurableInf₂ (M : Type*) [MeasurableSpace M] [Min M] : Prop where
  measurable_inf : Measurable fun p : M × M => p.1 ⊓ p.2

export MeasurableInf₂ (measurable_inf)

export MeasurableInf (measurable_const_inf measurable_inf_const)

variable {M : Type*} [MeasurableSpace M]

section OrderDual

instance (priority := 100) OrderDual.instMeasurableSup [Min M] [MeasurableInf M] :
    MeasurableSup Mᵒᵈ :=
  ⟨@measurable_const_inf M _ _ _, @measurable_inf_const M _ _ _⟩

instance (priority := 100) OrderDual.instMeasurableInf [Max M] [MeasurableSup M] :
    MeasurableInf Mᵒᵈ :=
  ⟨@measurable_const_sup M _ _ _, @measurable_sup_const M _ _ _⟩

instance (priority := 100) OrderDual.instMeasurableSup₂ [Min M] [MeasurableInf₂ M] :
    MeasurableSup₂ Mᵒᵈ :=
  ⟨@measurable_inf M _ _ _⟩

instance (priority := 100) OrderDual.instMeasurableInf₂ [Max M] [MeasurableSup₂ M] :
    MeasurableInf₂ Mᵒᵈ :=
  ⟨@measurable_sup M _ _ _⟩

end OrderDual

variable {α : Type*} {m : MeasurableSpace α} {μ : Measure α} {f g : α → M}

section Sup

variable [Max M]

section MeasurableSup

variable [MeasurableSup M]

@[measurability]
theorem Measurable.const_sup (hf : Measurable f) (c : M) : Measurable fun x => c ⊔ f x :=
  (measurable_const_sup c).comp hf

@[measurability]
theorem AEMeasurable.const_sup (hf : AEMeasurable f μ) (c : M) :
    AEMeasurable (fun x => c ⊔ f x) μ :=
  (MeasurableSup.measurable_const_sup c).comp_aemeasurable hf

@[measurability]
theorem Measurable.sup_const (hf : Measurable f) (c : M) : Measurable fun x => f x ⊔ c :=
  (measurable_sup_const c).comp hf

@[measurability]
theorem AEMeasurable.sup_const (hf : AEMeasurable f μ) (c : M) :
    AEMeasurable (fun x => f x ⊔ c) μ :=
  (measurable_sup_const c).comp_aemeasurable hf

end MeasurableSup

section MeasurableSup₂

variable [MeasurableSup₂ M]

@[measurability]
theorem Measurable.sup' (hf : Measurable f) (hg : Measurable g) : Measurable (f ⊔ g) :=
  measurable_sup.comp (hf.prodMk hg)

@[measurability]
theorem Measurable.sup (hf : Measurable f) (hg : Measurable g) : Measurable fun a => f a ⊔ g a :=
  measurable_sup.comp (hf.prodMk hg)

@[measurability]
theorem AEMeasurable.sup' (hf : AEMeasurable f μ) (hg : AEMeasurable g μ) :
    AEMeasurable (f ⊔ g) μ :=
  measurable_sup.comp_aemeasurable (hf.prodMk hg)

@[measurability]
theorem AEMeasurable.sup (hf : AEMeasurable f μ) (hg : AEMeasurable g μ) :
    AEMeasurable (fun a => f a ⊔ g a) μ :=
  measurable_sup.comp_aemeasurable (hf.prodMk hg)

instance (priority := 100) MeasurableSup₂.toMeasurableSup : MeasurableSup M :=
  ⟨fun _ => measurable_const.sup measurable_id, fun _ => measurable_id.sup measurable_const⟩

end MeasurableSup₂

end Sup

section Inf

variable [Min M]

section MeasurableInf

variable [MeasurableInf M]

@[measurability]
theorem Measurable.const_inf (hf : Measurable f) (c : M) : Measurable fun x => c ⊓ f x :=
  (measurable_const_inf c).comp hf

@[measurability]
theorem AEMeasurable.const_inf (hf : AEMeasurable f μ) (c : M) :
    AEMeasurable (fun x => c ⊓ f x) μ :=
  (MeasurableInf.measurable_const_inf c).comp_aemeasurable hf

@[measurability]
theorem Measurable.inf_const (hf : Measurable f) (c : M) : Measurable fun x => f x ⊓ c :=
  (measurable_inf_const c).comp hf

@[measurability]
theorem AEMeasurable.inf_const (hf : AEMeasurable f μ) (c : M) :
    AEMeasurable (fun x => f x ⊓ c) μ :=
  (measurable_inf_const c).comp_aemeasurable hf

end MeasurableInf

section MeasurableInf₂

variable [MeasurableInf₂ M]

@[measurability]
theorem Measurable.inf' (hf : Measurable f) (hg : Measurable g) : Measurable (f ⊓ g) :=
  measurable_inf.comp (hf.prodMk hg)

@[measurability]
theorem Measurable.inf (hf : Measurable f) (hg : Measurable g) : Measurable fun a => f a ⊓ g a :=
  measurable_inf.comp (hf.prodMk hg)

@[measurability]
theorem AEMeasurable.inf' (hf : AEMeasurable f μ) (hg : AEMeasurable g μ) :
    AEMeasurable (f ⊓ g) μ :=
  measurable_inf.comp_aemeasurable (hf.prodMk hg)

@[measurability]
theorem AEMeasurable.inf (hf : AEMeasurable f μ) (hg : AEMeasurable g μ) :
    AEMeasurable (fun a => f a ⊓ g a) μ :=
  measurable_inf.comp_aemeasurable (hf.prodMk hg)

instance (priority := 100) MeasurableInf₂.to_hasMeasurableInf : MeasurableInf M :=
  ⟨fun _ => measurable_const.inf measurable_id, fun _ => measurable_id.inf measurable_const⟩

end MeasurableInf₂

end Inf

section SemilatticeSup

open Finset

variable {δ : Type*} [MeasurableSpace δ] [SemilatticeSup α] [MeasurableSup₂ α]

@[measurability]
theorem Finset.measurable_sup' {ι : Type*} {s : Finset ι} (hs : s.Nonempty) {f : ι → δ → α}
    (hf : ∀ n ∈ s, Measurable (f n)) : Measurable (s.sup' hs f) :=
  Finset.sup'_induction hs _ (fun _f hf _g hg => hf.sup hg) fun n hn => hf n hn

@[measurability]
theorem Finset.measurable_range_sup' {f : ℕ → δ → α} {n : ℕ} (hf : ∀ k ≤ n, Measurable (f k)) :
    Measurable ((range (n + 1)).sup' nonempty_range_succ f) := by
  simp_rw [← Nat.lt_succ_iff] at hf
  refine Finset.measurable_sup' _ ?_
  simpa [Finset.mem_range]

@[measurability]
theorem Finset.measurable_range_sup'' {f : ℕ → δ → α} {n : ℕ} (hf : ∀ k ≤ n, Measurable (f k)) :
    Measurable fun x => (range (n + 1)).sup' nonempty_range_succ fun k => f k x := by
  convert Finset.measurable_range_sup' hf using 1
  ext x
  simp

end SemilatticeSup
```
