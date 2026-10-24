# integral_eq_lintegral_pos_part_sub_lintegral_neg_part

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:caed8b86-df27-77e2-6ca0-313039f04f0f",
  "kind": "theorem",
  "lexical_name": "integral_eq_lintegral_pos_part_sub_lintegral_neg_part",
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
  "slug": "integral-eq-lintegral-pos-part-sub-lintegral-neg-part--5578811350f634a6dac5b44c",
  "source": {
    "blob": "9c1a5aaebbdb15941b2f15ffaa8616528d0f4723",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 494,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant3955512ee952702e0fe08f3b6742411d87f00c46c90057b1fd848388115a4bf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5578811350f634a6dac5b44c98db9d18378e37b8f0d536f8f52e5afc0c0bb8ab",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant3955512ee952702e0fe08f3b6742411d87f00c46c90057b1fd848388115a4bf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:caed8b86-df27-77e2-6ca0-313039f04f0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_eq_lintegral_pos_part_sub_lintegral_neg_part {f : α → ℝ} (hf : Integrable f μ) :
    ∫ a, f a ∂μ =
      ENNReal.toReal (∫⁻ a, .ofReal (f a) ∂μ) - ENNReal.toReal (∫⁻ a, .ofReal (-f a) ∂μ) := by
  let f₁ := hf.toL1 f
  -- Go to the `L¹` space
  have eq₁ : ENNReal.toReal (∫⁻ a, ENNReal.ofReal (f a) ∂μ) = ‖Lp.posPart f₁‖ := by
    rw [L1.norm_def]
    congr 1
    apply lintegral_congr_ae
    filter_upwards [Lp.coeFn_posPart f₁, hf.coeFn_toL1] with _ h₁ h₂
    rw [h₁, h₂, ENNReal.ofReal]
    congr 1
    apply NNReal.eq
    rw [Real.nnnorm_of_nonneg (le_max_right _ _)]
    rw [Real.coe_toNNReal', NNReal.coe_mk]
  -- Go to the `L¹` space
  have eq₂ : ENNReal.toReal (∫⁻ a, ENNReal.ofReal (-f a) ∂μ) = ‖Lp.negPart f₁‖ := by
    rw [L1.norm_def]
    congr 1
    apply lintegral_congr_ae
    filter_upwards [Lp.coeFn_negPart f₁, hf.coeFn_toL1] with _ h₁ h₂
    rw [h₁, h₂, ENNReal.ofReal]
    congr 1
    apply NNReal.eq
    simp only [Real.coe_toNNReal', coe_nnnorm, nnnorm_neg]
    rw [Real.norm_of_nonpos (min_le_right _ _), ← max_neg_neg, neg_zero]
  rw [eq₁, eq₂, integral, dite_eq_left, dite_eq_left]
  exact L1.integral_eq_norm_posPart_sub _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant3955512ee952702e0fe08f3b6742411d87f00c46c90057b1fd848388115a4bf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant3955512ee952702e0fe08f3b6742411d87f00c46c90057b1fd848388115a4bf8.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c1a5aaebbdb15941b2f15ffaa8616528d0f4723` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
