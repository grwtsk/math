# eLpNorm_one_le_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5abe07ae60e8bdfe5d99a7e68c681a5b052ef4f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1338,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6341a15d805c17e6922cd9c3f69508d604574058e37b06ec8cb51626ebbfa4d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f86b1d4a-b2db-e3a0-2623-ea1246d4a120",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f162209b-0b66-2f8b-d581-569394dfdb78",
  "kind": "theorem",
  "lexical_name": "eLpNorm_one_le_of_le",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "elpnorm-one-le-of-le--9e4c4e9cf473745db7d1ac78",
  "source": {
    "blob": "5abe07ae60e8bdfe5d99a7e68c681a5b052ef4f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1379,
    "line": 1338,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta6341a15d805c17e6922cd9c3f69508d604574058e37b06ec8cb51626ebbfa4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e4c4e9cf473745db7d1ac78120e3e64568ea0e6946050022bf78200962aae04",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Varianta6341a15d805c17e6922cd9c3f69508d604574058e37b06ec8cb51626ebbfa4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f162209b-0b66-2f8b-d581-569394dfdb78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1338–1379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_one_le_of_le {r : ℝ≥0} (hfint : Integrable f μ) (hfint' : 0 ≤ ∫ x, f x ∂μ)
    (hf : ∀ᵐ ω ∂μ, f ω ≤ r) : eLpNorm f 1 μ ≤ 2 * μ Set.univ * r := by
  by_cases hr : r = 0
  · suffices f =ᵐ[μ] 0 by
      rw [eLpNorm_congr_ae this, eLpNorm_zero, hr, ENNReal.coe_zero, mul_zero]
    rw [hr] at hf
    norm_cast at hf
    have hnegf : ∫ x, -f x ∂μ = 0 := by
      rw [integral_neg, neg_eq_zero]
      exact le_antisymm (integral_nonpos_of_ae hf) hfint'
    have := (integral_eq_zero_iff_of_nonneg_ae ?_ hfint.neg).1 hnegf
    · filter_upwards [this] with ω hω
      rwa [Pi.neg_apply, Pi.zero_apply, neg_eq_zero] at hω
    · filter_upwards [hf] with ω hω
      rwa [Pi.zero_apply, Pi.neg_apply, Right.nonneg_neg_iff]
  by_cases hμ : IsFiniteMeasure μ
  swap
  · have : μ Set.univ = ∞ := by
      by_contra hμ'
      exact hμ (IsFiniteMeasure.mk <| lt_top_iff_ne_top.2 hμ')
    rw [this, ENNReal.mul_top', ite_eq_right, ENNReal.top_mul', ite_eq_right]
    · exact le_top
    · simp [hr]
    · simp
  have := hμ
  rw [integral_eq_integral_pos_part_sub_integral_neg_part hfint, sub_nonneg] at hfint'
  have hposbdd : ∫ ω, max (f ω) 0 ∂μ ≤ μ.real Set.univ • (r : ℝ) := by
    rw [← integral_const]
    refine integral_mono_ae hfint.real_toNNReal (integrable_const (r : ℝ)) ?_
    filter_upwards [hf] with ω hω using Real.toNNReal_le_iff_le_coe.2 hω
  rw [MemLp.eLpNorm_eq_integral_rpow_norm one_ne_zero ENNReal.one_ne_top
      (memLp_one_iff_integrable.2 hfint),
    ENNReal.ofReal_le_iff_le_toReal (by finiteness)]
  simp_rw [ENNReal.toReal_one, _root_.inv_one, Real.rpow_one, Real.norm_eq_abs, ←
    max_zero_add_max_neg_zero_eq_abs_self, ← Real.coe_toNNReal']
  rw [integral_add hfint.real_toNNReal]
  · simp only [Real.coe_toNNReal', ENNReal.toReal_mul, ENNReal.coe_toReal,
      toReal_ofNat] at hfint' ⊢
    grw [hfint']
    rwa [← two_mul, mul_assoc, mul_le_mul_iff_right₀ (two_pos : (0 : ℝ) < 2)]
  · exact hfint.neg.sup (integrable_zero _ _ μ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Varianta6341a15d805c17e6922cd9c3f69508d604574058e37b06ec8cb51626ebbfa4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta6341a15d805c17e6922cd9c3f69508d604574058e37b06ec8cb51626ebbfa4d.lean#L1338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5abe07ae60e8bdfe5d99a7e68c681a5b052ef4f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
