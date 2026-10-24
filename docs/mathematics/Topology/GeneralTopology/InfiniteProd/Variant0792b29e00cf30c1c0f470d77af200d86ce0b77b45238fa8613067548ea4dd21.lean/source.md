# Complete source: GRWTSK.Topology.GeneralTopology.InfiniteProd.Variant0792b29e00cf30c1c0f470d77af200d86ce0b77b45238fa8613067548ea4dd21

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `adda380731091565d3f7f647cb354e36b1de6b76` · SHA-256 `96ebd2a06390373e8946478c72df271216eb30f258dd7d0a9aeaf292f7726299`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TendstoTprodOneAddOfDominatedConvergence.Variant1ec459226a850efa7f1b8701ac10b2355c7309720a906edb191ea9910dbf380b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ec459226a850efa7f1b8701ac10b2355c7309720a906edb191ea9910dbf380b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TendstoTprodOneAddOfDominatedConvergence.Variant1ec459226a850efa7f1b8701ac10b2355c7309720a906edb191ea9910dbf380b","mathematical_subject":"Topology.GeneralTopology","original_sha256":"1ec459226a850efa7f1b8701ac10b2355c7309720a906edb191ea9910dbf380b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Normed/Ring/InfiniteProd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Chris Birkbeck. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Birkbeck
-/
module

public import Mathlib.Analysis.SpecialFunctions.Log.Summable
public import Mathlib.Analysis.Normed.Group.Tannery

/-!
# Infinite products in normed rings

This file proves a dominated convergence theorem for infinite products of terms of the form
`(1 + f n k)` in a complete normed commutative ring, by reducing to the additive version
(Tannery's theorem) via the formal expansion `∏ (1 + f i) = ∑ₛ ∏ᵢ∈ₛ f i`.

## Main results

* `tendsto_tprod_one_add_of_dominated_convergence`: if `f n k → g k` pointwise and
  `‖f n k‖ ≤ bound k` eventually with `bound` summable, then
  `∏' k, (1 + f n k) → ∏' k, (1 + g k)`.
-/


namespace GRWTSK.Topology.GeneralTopology.TendstoTprodOneAddOfDominatedConvergence.Variant1ec459226a850efa7f1b8701ac10b2355c7309720a906edb191ea9910dbf380b

open Filter

open scoped Topology

variable {α R β : Type*} [NormedCommRing R] [NormOneClass R] [CompleteSpace R] {g : β → R}
  {bound : β → ℝ}

/-- Dominated convergence for infinite products: if `f n k → g k` for all `k` and
`‖f n k‖ ≤ bound k` eventually with `bound` summable,
then `∏' k, (1 + f n k) → ∏' k, (1 + g k)`. -/
public theorem tendsto_tprod_one_add_of_dominated_convergence {𝓕 : Filter α} {f : α → β → R}
    (h_sum : Summable bound) (hab : ∀ k, Tendsto (f · k) 𝓕 (𝓝 (g k)))
    (h_bound : ∀ᶠ n in 𝓕, ∀ k, ‖f n k‖ ≤ bound k) :
    Tendsto (fun n ↦ ∏' k, (1 + f n k)) 𝓕 (𝓝 (∏' k, (1 + g k))) := by
  rcases eq_or_neBot 𝓕 with rfl | _
  · simp
  have h_bound_g (k) : ‖g k‖ ≤ bound k :=
    le_of_tendsto ((hab k).norm) (h_bound.mono fun n hn ↦ hn k)
  have hsum_g : Summable (‖g ·‖) := h_sum.of_nonneg_of_le (fun _ ↦ norm_nonneg _) h_bound_g
  rw [show ∏' k, (1 + g k) = ∑' s, ∏ i ∈ s, g i from
    tprod_one_add (summable_finsetProd_of_summable_norm hsum_g)]
  have : Tendsto (∑' k, ∏ c ∈ k, f · c) 𝓕 (𝓝 (∑' k, ∏ c ∈ k, g c)) :=
    tendsto_tsum_of_dominated_convergence (summable_finsetProd_of_summable_nonneg
      (fun i ↦ (norm_nonneg (g i)).trans (h_bound_g i)) h_sum)
      (tendsto_finsetProd · fun i _ ↦ hab i)
      (h_bound.mono fun n hn s ↦ (Finset.norm_prod_le s (f n)).trans
      (Finset.prod_le_prod₀ (by grind) (by grind)))
  apply this.congr' (h_bound.mono fun n hn ↦ ?_)
  rw [tprod_one_add]
  exact summable_finsetProd_of_summable_norm <| h_sum.of_nonneg_of_le (by grind) hn
```
