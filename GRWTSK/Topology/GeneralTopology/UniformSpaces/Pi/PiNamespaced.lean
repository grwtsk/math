-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology.UniformSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.UniformSpaces.PiUniformSpaceEq.Variant09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.UniformSpaces.SourceCorpus.PiUniformSpaceEq.Variant09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6","mathematical_subject":"Topology.UniformSpaces","original_sha256":"09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/UniformSpace/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot
-/
import Mathlib.Topology.UniformSpace.Cauchy
import Mathlib.Topology.UniformSpace.Separation


namespace GRWTSK.Topology.GeneralTopology.UniformSpaces.PiUniformSpaceEq.Variant09ad6e8514198e62888ffdb41cfbd203212061d54424dfc0a6d4bd4e13b97bd6

#align_import topology.uniform_space.pi from "leanprover-community/mathlib"@"2705404e701abc6b3127da906f40bae062a169c9"

/-!
# Indexed product of uniform spaces
-/


noncomputable section

open Uniformity Topology

section

open Filter UniformSpace Function

universe u

variable {ι : Type*} (α : ι → Type u) [U : ∀ i, UniformSpace (α i)]

instance Pi.uniformSpace : UniformSpace (∀ i, α i) :=
  UniformSpace.ofCoreEq (⨅ i, UniformSpace.comap (fun a : ∀ i, α i => a i) (U i)).toCore
      Pi.topologicalSpace <|
    Eq.symm toTopologicalSpace_iInf
#align Pi.uniform_space Pi.uniformSpace

lemma Pi.uniformSpace_eq :
    Pi.uniformSpace α = ⨅ i, UniformSpace.comap (fun a : (∀ i, α i) ↦ a i) (U i) := by
  ext : 1; rfl

theorem Pi.uniformity :
    𝓤 (∀ i, α i) = ⨅ i : ι, (Filter.comap fun a => (a.1 i, a.2 i)) (𝓤 (α i)) :=
  iInf_uniformity
#align Pi.uniformity Pi.uniformity

variable {α}

theorem uniformContinuous_pi {β : Type*} [UniformSpace β] {f : β → ∀ i, α i} :
    UniformContinuous f ↔ ∀ i, UniformContinuous fun x => f x i := by
  -- porting note: required `Function.comp` to close
  simp only [UniformContinuous, Pi.uniformity, tendsto_iInf, tendsto_comap_iff, Function.comp]
#align uniform_continuous_pi uniformContinuous_pi

variable (α)

theorem Pi.uniformContinuous_proj (i : ι) : UniformContinuous fun a : ∀ i : ι, α i => a i :=
  uniformContinuous_pi.1 uniformContinuous_id i
#align Pi.uniform_continuous_proj Pi.uniformContinuous_proj

lemma cauchy_pi_iff [Nonempty ι] {l : Filter (∀ i, α i)} :
    Cauchy l ↔ ∀ i, Cauchy (map (eval i) l) := by
  simp_rw [Pi.uniformSpace_eq, cauchy_iInf_uniformSpace, cauchy_comap_uniformSpace]

lemma cauchy_pi_iff' {l : Filter (∀ i, α i)} [l.NeBot] :
    Cauchy l ↔ ∀ i, Cauchy (map (eval i) l) := by
  simp_rw [Pi.uniformSpace_eq, cauchy_iInf_uniformSpace', cauchy_comap_uniformSpace]

lemma Cauchy.pi [Nonempty ι] {l : ∀ i, Filter (α i)} (hl : ∀ i, Cauchy (l i)) :
    Cauchy (Filter.pi l) := by
  have := fun i ↦ (hl i).1
  simpa [cauchy_pi_iff]

instance Pi.complete [∀ i, CompleteSpace (α i)] : CompleteSpace (∀ i, α i) where
  complete {f} hf := by
    have := hf.1
    simp_rw [cauchy_pi_iff', cauchy_iff_exists_le_nhds] at hf
    choose x hx using hf
    use x
    rwa [nhds_pi, le_pi]
#align Pi.complete Pi.complete

instance Pi.separated [∀ i, SeparatedSpace (α i)] : SeparatedSpace (∀ i, α i) :=
  separated_def.2 fun x y H => by
    ext i
    -- porting note: should be `eq_ofSeparated_ofUniformContinuous`?
    apply eq_of_separated_of_uniformContinuous (Pi.uniformContinuous_proj α i)
    apply H
#align Pi.separated Pi.separated

end
