# Complete source: GRWTSK.Topology.MetricTopology.Irrational.Variantb98dbd63bcb843a52804ac2ae4dd85f3c3c35a0ef5a3fc14a2a2a9338e8a3b5c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `75c8f7f539f9b49e69c1b1affac2c5d0b1ed3756` · SHA-256 `1df025be425e7c69ff04bf0986c208e5a2093e6c06cd976d03b3f5805db9cc0b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.IsG.Variant937c5f73b39a2f8cfef28b2baa18b27b97dc2f900e12eb448d42cf9650214cd0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"937c5f73b39a2f8cfef28b2baa18b27b97dc2f900e12eb448d42cf9650214cd0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.IsG.Variant937c5f73b39a2f8cfef28b2baa18b27b97dc2f900e12eb448d42cf9650214cd0","mathematical_subject":"Topology.MetricSpaces","original_sha256":"937c5f73b39a2f8cfef28b2baa18b27b97dc2f900e12eb448d42cf9650214cd0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Instances/Irrational.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Data.Real.Irrational
import Mathlib.Data.Rat.Encodable
import Mathlib.Topology.Separation.GDelta
import Mathlib.Topology.Instances.Real.Lemmas

/-!
# Topology of irrational numbers

In this file we prove the following theorems:

* `IsGδ.setOf_irrational`, `dense_irrational`, `eventually_residual_irrational`: irrational numbers
  form a dense Gδ set;

* `Irrational.eventually_forall_le_dist_cast_div`,
  `Irrational.eventually_forall_le_dist_cast_div_of_denom_le`;
  `Irrational.eventually_forall_le_dist_cast_rat_of_denom_le`: a sufficiently small neighborhood of
  an irrational number is disjoint with the set of rational numbers with bounded denominator.

We also provide `OrderTopology`, `NoMinOrder`, `NoMaxOrder`, and `DenselyOrdered`
instances for `{x // Irrational x}`.

## Tags

irrational, residual
-/



namespace GRWTSK.Topology.MetricTopology.IsG.Variant937c5f73b39a2f8cfef28b2baa18b27b97dc2f900e12eb448d42cf9650214cd0

open Set Filter Metric

open Filter Topology

protected theorem IsGδ.setOf_irrational : IsGδ { x | Irrational x } :=
  (countable_range _).isGδ_compl


theorem dense_irrational : Dense { x : ℝ | Irrational x } := by
  refine Real.isTopologicalBasis_Ioo_rat.dense_iff.2 ?_
  simp only [mem_iUnion, mem_singleton_iff, exists_prop, forall_exists_index, and_imp]
  rintro _ a b hlt rfl _
  rw [inter_comm]
  exact exists_irrational_btwn (Rat.cast_lt.2 hlt)

theorem eventually_residual_irrational : ∀ᶠ x in residual ℝ, Irrational x :=
  residual_of_dense_Gδ .setOf_irrational dense_irrational

namespace Irrational

variable {x : ℝ}

instance : OrderTopology { x // Irrational x } :=
  induced_orderTopology _ Iff.rfl <| @fun _ _ hlt =>
    let ⟨z, hz, hxz, hzy⟩ := exists_irrational_btwn hlt
    ⟨⟨z, hz⟩, hxz, hzy⟩

instance : NoMaxOrder { x // Irrational x } :=
  ⟨fun ⟨x, hx⟩ => ⟨⟨x + (1 : ℕ), hx.add_natCast 1⟩, by simp⟩⟩

instance : NoMinOrder { x // Irrational x } :=
  ⟨fun ⟨x, hx⟩ => ⟨⟨x - (1 : ℕ), hx.sub_natCast 1⟩, by simp⟩⟩

instance : DenselyOrdered { x // Irrational x } :=
  ⟨fun _ _ hlt =>
    let ⟨z, hz, hxz, hzy⟩ := exists_irrational_btwn hlt
    ⟨⟨z, hz⟩, hxz, hzy⟩⟩

theorem eventually_forall_le_dist_cast_div (hx : Irrational x) (n : ℕ) :
    ∀ᶠ ε : ℝ in 𝓝 0, ∀ m : ℤ, ε ≤ dist x (m / n) := by
  have A : IsClosed (range (fun m => (n : ℝ)⁻¹ * m : ℤ → ℝ)) :=
    ((isClosedMap_smul₀ (n⁻¹ : ℝ)).comp Int.isClosedEmbedding_coe_real.isClosedMap).isClosed_range
  have B : x ∉ range (fun m => (n : ℝ)⁻¹ * m : ℤ → ℝ) := by
    rintro ⟨m, rfl⟩
    simp at hx
  rcases Metric.mem_nhds_iff.1 (A.isOpen_compl.mem_nhds B) with ⟨ε, ε0, hε⟩
  refine (ge_mem_nhds ε0).mono fun δ hδ m => not_lt.1 fun hlt => ?_
  rw [dist_comm] at hlt
  refine hε (ball_subset_ball hδ hlt) ⟨m, ?_⟩
  simp [div_eq_inv_mul]

theorem eventually_forall_le_dist_cast_div_of_denom_le (hx : Irrational x) (n : ℕ) :
    ∀ᶠ ε : ℝ in 𝓝 0, ∀ k ≤ n, ∀ (m : ℤ), ε ≤ dist x (m / k) :=
  (finite_le_nat n).eventually_all.2 fun k _ => hx.eventually_forall_le_dist_cast_div k

theorem eventually_forall_le_dist_cast_rat_of_den_le (hx : Irrational x) (n : ℕ) :
    ∀ᶠ ε : ℝ in 𝓝 0, ∀ r : ℚ, r.den ≤ n → ε ≤ dist x r :=
  (hx.eventually_forall_le_dist_cast_div_of_denom_le n).mono fun ε H r hr => by
    simpa only [Rat.cast_def] using H r.den hr r.num

end Irrational
```
