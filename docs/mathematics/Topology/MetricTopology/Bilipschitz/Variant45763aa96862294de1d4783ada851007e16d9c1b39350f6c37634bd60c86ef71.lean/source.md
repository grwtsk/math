# Complete source: GRWTSK.Topology.MetricTopology.Bilipschitz.Variant45763aa96862294de1d4783ada851007e16d9c1b39350f6c37634bd60c86ef71

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2fc88f43d20b68098907838afb2dff0cf2018de` · SHA-256 `088bf7eda64e792f0a9d436d6114aa078c330d28a3a78be5da4ace789eb159b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.UniformityEqOfBilipschitz.Variant97b22b55956e63de57e5895025f589a3a79fdbee70c5a078887879517db0edd9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"97b22b55956e63de57e5895025f589a3a79fdbee70c5a078887879517db0edd9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.UniformityEqOfBilipschitz.Variant97b22b55956e63de57e5895025f589a3a79fdbee70c5a078887879517db0edd9","mathematical_subject":"Topology.MetricSpaces","original_sha256":"97b22b55956e63de57e5895025f589a3a79fdbee70c5a078887879517db0edd9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/MetricSpace/Bilipschitz.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.Topology.MetricSpace.Antilipschitz
import Mathlib.Topology.MetricSpace.Lipschitz

/-! # Bilipschitz equivalence

A common pattern in Mathlib is to replace the topology, uniformity and bornology on a type
synonym with those of the underlying type.

The most common way to do this is to activate a local instance for something which puts a
`PseudoMetricSpace` structure on the type synonym, prove that this metric is bilipschitz equivalent
to the metric on the underlying type, and then use this to show that the uniformities and
bornologies agree, which can then be used with `PseudoMetricSpace.replaceUniformity` or
`PseudoMetricSpace.replaceBornology`.

With the tooling outside this file, this can be a bit cumbersome, especially when it occurs
repeatedly, and moreover it can lend itself to abuse of the definitional equality inherent in the
type synonym. In this file, we make this pattern more convenient by providing lemmas which take
directly the conditions that the map is bilipschitz, and then prove the relevant equalities.
Moreover, because there are no type synonyms here, it is necessary to phrase these equalities in
terms of the induced uniformity and bornology, which means users will need to do the same if they
choose to use these convenience lemmas. This encourages good hygiene in the development of type
synonyms.
-/


namespace GRWTSK.Topology.MetricTopology.UniformityEqOfBilipschitz.Variant97b22b55956e63de57e5895025f589a3a79fdbee70c5a078887879517db0edd9

open NNReal

section Uniformity

open Uniformity

variable {α β : Type*} [PseudoEMetricSpace α] [PseudoEMetricSpace β]
variable {K₁ K₂ : ℝ≥0} {f : α → β}

/-- If `f : α → β` is bilipschitz, then the pullback of the uniformity on `β` through `f` agrees
with the uniformity on `α`.

This can be used to provide the replacement equality when applying
`PseudoMetricSpace.replaceUniformity`, which can be useful when following the forgetful inheritance
pattern when creating type synonyms.

Important Note: if `α` is some synonym of a type `β` (at default transparency), and `f : α ≃ β` is
some bilipschitz equivalence, then instead of writing:
```
instance : UniformSpace α := inferInstanceAs (UniformSpace β)
```
Users should instead write something like:
```
instance : UniformSpace α := (inferInstance : UniformSpace β).comap f
```
in order to avoid abuse of the definitional equality `α := β`. -/
lemma uniformity_eq_of_bilipschitz (hf₁ : AntilipschitzWith K₁ f) (hf₂ : LipschitzWith K₂ f) :
    𝓤[(inferInstance : UniformSpace β).comap f] = 𝓤 α :=
  hf₁.isUniformInducing hf₂.uniformContinuous |>.comap_uniformity

end Uniformity

section Bornology

open Bornology Filter

variable {α β : Type*} [PseudoMetricSpace α] [PseudoMetricSpace β]
variable {K₁ K₂ : ℝ≥0} {f : α → β}

/-- If `f : α → β` is bilipschitz, then the pullback of the bornology on `β` through `f` agrees
with the bornology on `α`. -/
lemma bornology_eq_of_bilipschitz (hf₁ : AntilipschitzWith K₁ f) (hf₂ : LipschitzWith K₂ f) :
    @cobounded _ (induced f) = cobounded α :=
  le_antisymm hf₂.comap_cobounded_le hf₁.tendsto_cobounded.le_comap


/-- If `f : α → β` is bilipschitz, then the pullback of the bornology on `β` through `f` agrees
with the bornology on `α`.

This can be used to provide the replacement equality when applying
`PseudoMetricSpace.replaceBornology`, which can be useful when following the forgetful inheritance
pattern when creating type synonyms.

Important Note: if `α` is some synonym of a type `β` (at default transparency), and `f : α ≃ β` is
some bilipschitz equivalence, then instead of writing:
```
instance : Bornology α := inferInstanceAs (Bornology β)
```
Users should instead write something like:
```
instance : Bornology α := Bornology.induced (f : α → β)
```
in order to avoid abuse of the definitional equality `α := β`. -/
lemma isBounded_iff_of_bilipschitz (hf₁ : AntilipschitzWith K₁ f) (hf₂ : LipschitzWith K₂ f)
    (s : Set α) : @IsBounded _ (induced f) s ↔ Bornology.IsBounded s :=
  Filter.ext_iff.1 (bornology_eq_of_bilipschitz hf₁ hf₂) (sᶜ)

end Bornology
````
