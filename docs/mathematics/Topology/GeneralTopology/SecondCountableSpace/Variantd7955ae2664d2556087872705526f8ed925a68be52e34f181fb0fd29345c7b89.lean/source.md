# Complete source: GRWTSK.Topology.GeneralTopology.SecondCountableSpace.Variantd7955ae2664d2556087872705526f8ed925a68be52e34f181fb0fd29345c7b89

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `75f7c6ad28e6a4748201ef8508e74c0d82fa9cc2` · SHA-256 `d94162edf8100d5e9eba184b7a746ba5318119c2946fb8895e0f34196adcdf13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.CompactOpenEqGenerateFrom.Variant20ec9b696571f4c20bba8ad45ed87442fe1736e5a0956398a5c3a52c9038e048","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20ec9b696571f4c20bba8ad45ed87442fe1736e5a0956398a5c3a52c9038e048","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.CompactOpenEqGenerateFrom.Variant20ec9b696571f4c20bba8ad45ed87442fe1736e5a0956398a5c3a52c9038e048","mathematical_subject":"Topology.GeneralTopology","original_sha256":"20ec9b696571f4c20bba8ad45ed87442fe1736e5a0956398a5c3a52c9038e048","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/ContinuousMap/SecondCountableSpace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Topology.CompactOpen

/-!
# Second countable topology on `C(X, Y)`

In this file we prove that `C(X, Y)` with compact-open topology has second countable topology, if

- both `X` and `Y` have second countable topology;
- `X` is a locally compact space;
-/


namespace GRWTSK.Topology.GeneralTopology.CompactOpenEqGenerateFrom.Variant20ec9b696571f4c20bba8ad45ed87442fe1736e5a0956398a5c3a52c9038e048

open scoped Topology
open Set Function Filter TopologicalSpace

namespace ContinuousMap

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

theorem compactOpen_eq_generateFrom {S : Set (Set X)} {T : Set (Set Y)}
    (hS₁ : ∀ K ∈ S, IsCompact K) (hT : IsTopologicalBasis T)
    (hS₂ : ∀ f : C(X, Y), ∀ x, ∀ V ∈ T, f x ∈ V → ∃ K ∈ S, K ∈ 𝓝 x ∧ MapsTo f K V) :
    compactOpen = .generateFrom (.image2 (fun K t ↦
      {f : C(X, Y) | MapsTo f K (⋃₀ t)}) S {t : Set (Set Y) | t.Finite ∧ t ⊆ T}) := by
  apply le_antisymm
  · apply_rules [generateFrom_anti, image2_subset_iff.mpr]
    intro K hK t ht
    exact mem_image2_of_mem (hS₁ K hK) (isOpen_sUnion fun _ h ↦ hT.isOpen <| ht.2 h)
  · refine le_of_nhds_le_nhds fun f ↦ ?_
    simp only [nhds_compactOpen, le_iInf_iff, le_principal_iff]
    intro K (hK : IsCompact K) U (hU : IsOpen U) hfKU
    simp only [TopologicalSpace.nhds_generateFrom]
    obtain ⟨t, htT, htf, hTU, hKT⟩ : ∃ t ⊆ T, t.Finite ∧ (∀ V ∈ t, V ⊆ U) ∧ f '' K ⊆ ⋃₀ t := by
      rw [hT.open_eq_sUnion' hU, mapsTo', sUnion_eq_biUnion] at hfKU
      obtain ⟨t, ht, hfin, htK⟩ :=
        (hK.image (map_continuous f)).elim_finite_subcover_image (fun V hV ↦ hT.isOpen hV.1) hfKU
      refine ⟨t, fun _ h ↦ (ht h).1, hfin, fun _ h ↦ (ht h).2, ?_⟩
      rwa [sUnion_eq_biUnion]
    rw [image_subset_iff] at hKT
    obtain ⟨s, hsS, hsf, hKs, hst⟩ : ∃ s ⊆ S, s.Finite ∧ K ⊆ ⋃₀ s ∧ MapsTo f (⋃₀ s) (⋃₀ t) := by
      have : ∀ x ∈ K, ∃ L ∈ S, L ∈ 𝓝 x ∧ MapsTo f L (⋃₀ t) := by
        intro x hx
        rcases hKT hx with ⟨V, hVt, hxV⟩
        rcases hS₂ f x V (htT hVt) hxV with ⟨L, hLS, hLx, hLV⟩
        exact ⟨L, hLS, hLx, hLV.mono_right <| subset_sUnion_of_mem hVt⟩
      choose! L hLS hLmem hLt using this
      rcases hK.elim_nhds_subcover L hLmem with ⟨s, hsK, hs⟩
      refine ⟨L '' s, image_subset_iff.2 fun x hx ↦ hLS x <| hsK x hx, s.finite_toSet.image _,
        by rwa [sUnion_image], ?_⟩
      rw [mapsTo_sUnion, forall_mem_image]
      exact fun x hx ↦ hLt x <| hsK x hx
    have hsub : (⋂ L ∈ s, {g : C(X, Y) | MapsTo g L (⋃₀ t)}) ⊆ {g | MapsTo g K U} := by
      simp only [← setOf_forall, ← mapsTo_iUnion, ← sUnion_eq_biUnion]
      exact fun g hg ↦ hg.mono hKs (sUnion_subset hTU)
    refine mem_of_superset ((biInter_mem hsf).2 fun L hL ↦ ?_) hsub
    refine mem_iInf_of_mem _ <| mem_iInf_of_mem ?_ <| mem_principal_self _
    exact ⟨hst.mono_left (subset_sUnion_of_mem hL), mem_image2_of_mem (hsS hL) ⟨htf, htT⟩⟩

/-- A version of `instSecondCountableTopology` with a technical assumption
instead of `[SecondCountableTopology X] [LocallyCompactSpace X]`.
It is here as a reminder of what could be an intermediate goal,
if someone tries to weaken the assumptions in the instance
(e.g., from `[LocallyCompactSpace X]` to `[LocallyCompactPair X Y]` - not sure if it's true). -/
theorem secondCountableTopology [SecondCountableTopology Y]
    (hX : ∃ S : Set (Set X), S.Countable ∧ (∀ K ∈ S, IsCompact K) ∧
      ∀ f : C(X, Y), ∀ V, IsOpen V → ∀ x ∈ f ⁻¹' V, ∃ K ∈ S, K ∈ 𝓝 x ∧ MapsTo f K V) :
    SecondCountableTopology C(X, Y) where
  is_open_generated_countable := by
    rcases hX with ⟨S, hScount, hScomp, hS⟩
    refine ⟨_, ?_, compactOpen_eq_generateFrom (S := S) hScomp (isBasis_countableBasis _) ?_⟩
    · exact .image2 hScount (countable_setOf_finite_subset (countable_countableBasis Y)) _
    · intro f x V hV hx
      apply hS
      exacts [isOpen_of_mem_countableBasis hV, hx]

instance instSecondCountableTopology [SecondCountableTopology X] [LocallyCompactSpace X]
    [SecondCountableTopology Y] : SecondCountableTopology C(X, Y) := by
  apply secondCountableTopology
  have (U : countableBasis X) : LocallyCompactSpace U.1 :=
    (isOpen_of_mem_countableBasis U.2).locallyCompactSpace
  set K := fun U : countableBasis X ↦ CompactExhaustion.choice U.1
  use ⋃ U : countableBasis X, Set.range fun n ↦ K U n
  refine ⟨countable_iUnion fun _ ↦ countable_range _, ?_, ?_⟩
  · simp only [mem_iUnion, mem_range]
    rintro K ⟨U, n, rfl⟩
    exact ((K U).isCompact _).image continuous_subtype_val
  · intro f V hVo x hxV
    obtain ⟨U, hU, hxU, hUV⟩ : ∃ U ∈ countableBasis X, x ∈ U ∧ U ⊆ f ⁻¹' V := by
      rw [← (isBasis_countableBasis _).mem_nhds_iff]
      exact (hVo.preimage (map_continuous f)).mem_nhds hxV
    lift x to U using hxU
    lift U to countableBasis X using hU
    rcases (K U).exists_mem_nhds x with ⟨n, hn⟩
    refine ⟨K U n, mem_iUnion.2 ⟨U, mem_range_self _⟩, ?_, ?_⟩
    · rw [← map_nhds_subtype_coe_eq_nhds x.2]
      exacts [image_mem_map hn, (isOpen_of_mem_countableBasis U.2).mem_nhds x.2]
    · rw [mapsTo_image_iff]
      exact fun y _ ↦ hUV y.2

instance instSeparableSpace [SecondCountableTopology X] [LocallyCompactSpace X]
    [SecondCountableTopology Y] : SeparableSpace C(X, Y) :=
  inferInstance

end ContinuousMap
```
