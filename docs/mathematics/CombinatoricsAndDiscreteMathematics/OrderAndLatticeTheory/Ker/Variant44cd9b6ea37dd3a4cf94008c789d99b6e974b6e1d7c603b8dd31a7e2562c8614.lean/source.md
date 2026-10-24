# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Ker.Variant44cd9b6ea37dd3a4cf94008c789d99b6e974b6e1d7c603b8dd31a7e2562c8614

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2bf3d8f1fdb69cb6fb43b81ffbd022fe7e19ae7` · SHA-256 `73f00ff587ef9b3208eb2599eebc36bc56ef775357a1e067b543f1033f24898e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.KerDef.Variantc034a1354d536effc5dcde21771251e34e1661724c9dc10664722df2309eb9b1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c034a1354d536effc5dcde21771251e34e1661724c9dc10664722df2309eb9b1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.KerDef.Variantc034a1354d536effc5dcde21771251e34e1661724c9dc10664722df2309eb9b1","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"c034a1354d536effc5dcde21771251e34e1661724c9dc10664722df2309eb9b1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Filter/Ker.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Order.Filter.Map

/-!
# Kernel of a filter

In this file we define the *kernel* `Filter.ker f` of a filter `f`
to be the intersection of all its sets.

We also prove that `Filter.principal` and `Filter.ker` form a Galois coinsertion
and prove other basic theorems about `Filter.ker`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.KerDef.Variantc034a1354d536effc5dcde21771251e34e1661724c9dc10664722df2309eb9b1

open Function Set

namespace Filter

variable {ι : Sort*} {α β : Type*} {f g : Filter α} {s : Set α} {a : α}

lemma ker_def (f : Filter α) : f.ker = ⋂ s ∈ f, s := sInter_eq_biInter

@[simp] lemma mem_ker : a ∈ f.ker ↔ ∀ s ∈ f, a ∈ s := mem_sInter
@[simp] lemma subset_ker : s ⊆ f.ker ↔ ∀ t ∈ f, s ⊆ t := subset_sInter_iff

/-- `Filter.principal` forms a Galois coinsertion with `Filter.ker`. -/
def gi_principal_ker : GaloisCoinsertion (𝓟 : Set α → Filter α) ker :=
  GaloisConnection.toGaloisCoinsertion (fun s f ↦ by simp [principal_le_iff]) <| by
    simp only [le_iff_subset, subset_def, mem_ker, mem_principal]; aesop

lemma ker_mono : Monotone (ker : Filter α → Set α) := gi_principal_ker.gc.monotone_u
lemma ker_surjective : Surjective (ker : Filter α → Set α) := gi_principal_ker.u_surjective

@[simp] lemma ker_bot : ker (⊥ : Filter α) = ∅ := sInter_eq_empty_iff.2 fun _ ↦ ⟨∅, trivial, id⟩
@[simp] lemma ker_top : ker (⊤ : Filter α) = univ := gi_principal_ker.gc.u_top
@[simp] lemma ker_eq_univ : ker f = univ ↔ f = ⊤ := gi_principal_ker.gc.u_eq_top.trans <| by simp
@[simp] lemma ker_inf (f g : Filter α) : ker (f ⊓ g) = ker f ∩ ker g := gi_principal_ker.gc.u_inf
@[simp] lemma ker_iInf (f : ι → Filter α) : ker (⨅ i, f i) = ⋂ i, ker (f i) :=
  gi_principal_ker.gc.u_iInf
@[simp] lemma ker_sInf (S : Set (Filter α)) : ker (sInf S) = ⋂ f ∈ S, ker f :=
  gi_principal_ker.gc.u_sInf
@[simp] lemma ker_principal (s : Set α) : ker (𝓟 s) = s := gi_principal_ker.u_l_eq _

@[simp] lemma ker_pure (a : α) : ker (pure a) = {a} := by rw [← principal_singleton, ker_principal]

@[simp] lemma ker_comap (m : α → β) (f : Filter β) : ker (comap m f) = m ⁻¹' ker f := by
  ext a
  simp only [mem_ker, mem_comap, forall_exists_index, and_imp, @forall_swap (Set α), mem_preimage]
  exact forall₂_congr fun s _ ↦ ⟨fun h ↦ h _ Subset.rfl, fun ha t ht ↦ ht ha⟩

@[simp]
theorem ker_iSup (f : ι → Filter α) : ker (⨆ i, f i) = ⋃ i, ker (f i) := by
  refine subset_antisymm (fun x hx ↦ ?_) ker_mono.le_map_iSup
  simp only [mem_iUnion, mem_ker] at hx ⊢
  contrapose! hx
  choose s hsf hxs using hx
  refine ⟨⋃ i, s i, ?_, by simpa⟩
  exact mem_iSup.2 fun i ↦ mem_of_superset (hsf i) (subset_iUnion s i)

@[simp]
theorem ker_sSup (S : Set (Filter α)) : ker (sSup S) = ⋃ f ∈ S, ker f := by
  simp [sSup_eq_iSup]

@[simp]
theorem ker_sup (f g : Filter α) : ker (f ⊔ g) = ker f ∪ ker g := by
  rw [← sSup_pair, ker_sSup, biUnion_pair]

end Filter
```
