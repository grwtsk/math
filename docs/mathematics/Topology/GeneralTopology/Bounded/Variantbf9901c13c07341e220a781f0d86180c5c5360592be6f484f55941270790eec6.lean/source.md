# Complete source: GRWTSK.Topology.GeneralTopology.Bounded.Variantbf9901c13c07341e220a781f0d86180c5c5360592be6f484f55941270790eec6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5e11d6415646b84042bffcea30e32eb3d5e5240` · SHA-256 `529671cf0f352349cd35647a13d17c32aeb1f30c794a67dd8f977337b50bbd90`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ImageMultilinearPrime.Variant0537ff5b076644c63da6025f47ab57529228feb9bac56cbca7e1cb3effbc6659","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0537ff5b076644c63da6025f47ab57529228feb9bac56cbca7e1cb3effbc6659","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ImageMultilinearPrime.Variant0537ff5b076644c63da6025f47ab57529228feb9bac56cbca7e1cb3effbc6659","mathematical_subject":"Topology.GeneralTopology","original_sha256":"0537ff5b076644c63da6025f47ab57529228feb9bac56cbca7e1cb3effbc6659","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/Module/Multilinear/Bounded.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.LocallyConvex.Bounded
import Mathlib.Topology.Algebra.Module.Multilinear.Basic

/-!
# Images of (von Neumann) bounded sets under continuous multilinear maps

In this file we prove that continuous multilinear maps
send von Neumann bounded sets to von Neumann bounded sets.

We prove 2 versions of the theorem:
one assumes that the index type is nonempty,
and the other assumes that the codomain is a topological vector space.

## Implementation notes

We do not assume the index type `ι` to be finite.
While for a nonzero continuous multilinear map
the family `∀ i, E i` has to be essentially finite
(more precisely, all but finitely many `E i` has to be trivial),
proving theorems without a `[Finite ι]` assumption saves us some typeclass searches here and there.
-/


namespace GRWTSK.Topology.GeneralTopology.ImageMultilinearPrime.Variant0537ff5b076644c63da6025f47ab57529228feb9bac56cbca7e1cb3effbc6659

open Bornology Filter Set Function
open scoped Topology

namespace Bornology.IsVonNBounded

variable {ι 𝕜 F : Type*} {E : ι → Type*} [NormedField 𝕜]
  [∀ i, AddCommGroup (E i)] [∀ i, Module 𝕜 (E i)] [∀ i, TopologicalSpace (E i)]
  [AddCommGroup F] [Module 𝕜 F] [TopologicalSpace F]

/-- The image of a von Neumann bounded set under a continuous multilinear map
is von Neumann bounded.

This version does not assume that the topologies on the domain and on the codomain
agree with the vector space structure in any way
but it assumes that `ι` is nonempty.
-/
theorem image_multilinear' [Nonempty ι] {s : Set (∀ i, E i)} (hs : IsVonNBounded 𝕜 s)
    (f : ContinuousMultilinearMap 𝕜 E F) : IsVonNBounded 𝕜 (f '' s) := fun V hV ↦ by
  classical
  if h₁ : ∀ c : 𝕜, ‖c‖ ≤ 1 then
    exact absorbs_iff_norm.2 ⟨2, fun c hc ↦ by linarith [h₁ c]⟩
  else
    let _ : NontriviallyNormedField 𝕜 := ⟨by simpa using h₁⟩
    obtain ⟨I, t, ht₀, hft⟩ :
        ∃ (I : Finset ι) (t : ∀ i, Set (E i)), (∀ i, t i ∈ 𝓝 0) ∧ Set.pi I t ⊆ f ⁻¹' V := by
      have hfV : f ⁻¹' V ∈ 𝓝 0 := (map_continuous f).tendsto' _ _ f.map_zero hV
      rwa [nhds_pi, Filter.mem_pi, exists_finite_iff_finset] at hfV
    have : ∀ i, ∃ c : 𝕜, c ≠ 0 ∧ ∀ c' : 𝕜, ‖c'‖ ≤ ‖c‖ → ∀ x ∈ s, c' • x i ∈ t i := fun i ↦ by
      rw [isVonNBounded_pi_iff] at hs
      have := (hs i).tendsto_smallSets_nhds.eventually (mem_lift' (ht₀ i))
      rcases NormedAddCommGroup.nhds_zero_basis_norm_lt.eventually_iff.1 this with ⟨r, hr₀, hr⟩
      rcases NormedField.exists_norm_lt 𝕜 hr₀ with ⟨c, hc₀, hc⟩
      refine ⟨c, norm_pos_iff.1 hc₀, fun c' hle x hx ↦ ?_⟩
      exact hr (hle.trans_lt hc) ⟨_, ⟨x, hx, rfl⟩, rfl⟩
    choose c hc₀ hc using this
    rw [absorbs_iff_eventually_nhds_zero (mem_of_mem_nhds hV),
      NormedAddCommGroup.nhds_zero_basis_norm_lt.eventually_iff]
    have hc₀' : ∏ i ∈ I, c i ≠ 0 := Finset.prod_ne_zero_iff.2 fun i _ ↦ hc₀ i
    refine ⟨‖∏ i ∈ I, c i‖, norm_pos_iff.2 hc₀', fun a ha ↦ mapsTo_image_iff.2 fun x hx ↦ ?_⟩
    let ⟨i₀⟩ := ‹Nonempty ι›
    set y := I.piecewise (fun i ↦ c i • x i) x
    calc
      f (update y i₀ ((a / ∏ i ∈ I, c i) • y i₀)) ∈ V := hft fun i hi => by
        rcases eq_or_ne i i₀ with rfl | hne
        · simp_rw [update_self, y, I.piecewise_eq_of_mem _ _ hi, smul_smul]
          refine hc _ _ ?_ _ hx
          calc
            ‖(a / ∏ i ∈ I, c i) * c i‖ ≤ (‖∏ i ∈ I, c i‖ / ‖∏ i ∈ I, c i‖) * ‖c i‖ := by
              rw [norm_mul, norm_div]; gcongr; exact ha.out.le
            _ ≤ 1 * ‖c i‖ := by gcongr; apply div_self_le_one
            _ = ‖c i‖ := one_mul _
        · simp_rw [update_of_ne hne, y, I.piecewise_eq_of_mem _ _ hi]
          exact hc _ _ le_rfl _ hx
      _ = a • f x := by
        rw [f.map_update_smul, update_eq_self, f.map_piecewise_smul, div_eq_mul_inv, mul_smul,
          inv_smul_smul₀ hc₀']

/-- The image of a von Neumann bounded set under a continuous multilinear map
is von Neumann bounded.

This version assumes that the codomain is a topological vector space.
-/
theorem image_multilinear [ContinuousSMul 𝕜 F] {s : Set (∀ i, E i)} (hs : IsVonNBounded 𝕜 s)
    (f : ContinuousMultilinearMap 𝕜 E F) : IsVonNBounded 𝕜 (f '' s) := by
  cases isEmpty_or_nonempty ι with
  | inl h =>
    exact (isBounded_iff_isVonNBounded _).1 <|
      @Set.Finite.isBounded _ (vonNBornology 𝕜 F) _ (s.toFinite.image _)
  | inr h => exact hs.image_multilinear' f

end IsVonNBounded

end Bornology
```
