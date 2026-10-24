# Complete source: GRWTSK.Topology.GeneralTopology.Instances.Variantfe0eb84d0d8736d9f3ba2fe000a0dc4e940b4183569c722febc8e757de581f88

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d51768743a5eb41c6ecb02fc835da3f81f8dec7` · SHA-256 `079ab63f00be25b0dcfa5a9bab9c52fab54815bc09eb0e019d1516db59f7c5fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Field.Variant84f37e40cc0eb3c02cb2db82a3937775b0a26629f99420cc931e8850efcee783","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"84f37e40cc0eb3c02cb2db82a3937775b0a26629f99420cc931e8850efcee783","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Field.Variant84f37e40cc0eb3c02cb2db82a3937775b0a26629f99420cc931e8850efcee783","mathematical_subject":"Topology.GeneralTopology","original_sha256":"84f37e40cc0eb3c02cb2db82a3937775b0a26629f99420cc931e8850efcee783","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Normed/Field/Instances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Michael Stoll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Stoll, Patrick Massot, Anatole Dedecker
-/
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Ring.Lemmas
import Mathlib.Order.Filter.IsBounded
import Mathlib.Topology.Algebra.UniformField

/-!
# A normed field is a completable topological field
-/


namespace GRWTSK.Topology.GeneralTopology.Field.Variant84f37e40cc0eb3c02cb2db82a3937775b0a26629f99420cc931e8850efcee783

open SeminormedAddGroup IsUniformAddGroup Filter

variable {F : Type*} [NormedField F]

instance NormedField.instCompletableTopField : CompletableTopField F where
  t0 := (inferInstanceAs <| T0Space _).t0
  nice f hc hn := by
    obtain ⟨δ, δ_pos, hδ⟩ := (disjoint_nhds_zero ..).mp <| disjoint_iff.mpr hn
    have f_bdd : f.IsBoundedUnder (· ≤ ·) (‖·⁻¹‖) :=
      ⟨δ⁻¹, hδ.mono fun y hy ↦ le_inv_of_le_inv₀ δ_pos (by simpa using hy)⟩
    have h₀ : ∀ᶠ y in f, y ≠ 0 := hδ.mono fun y hy ↦ by simpa using δ_pos.trans_le hy
    have : ∀ᶠ p in f ×ˢ f, p.1⁻¹ - p.2⁻¹ = p.1⁻¹ * (p.2 - p.1) * p.2⁻¹ :=
      h₀.prod_mk h₀ |>.mono fun ⟨x, y⟩ ⟨hx, hy⟩ ↦ by simp [mul_sub, sub_mul, hx, hy]
    rw [cauchy_iff_tendsto_swapped] at hc
    rw [cauchy_map_iff_tendsto, tendsto_congr' this]
    refine ⟨hc.1, .zero_mul_isBoundedUnder_le ?_ <| tendsto_snd.isBoundedUnder_comp f_bdd⟩
    exact isBoundedUnder_le_mul_tendsto_zero (tendsto_fst.isBoundedUnder_comp f_bdd) hc.2
```
