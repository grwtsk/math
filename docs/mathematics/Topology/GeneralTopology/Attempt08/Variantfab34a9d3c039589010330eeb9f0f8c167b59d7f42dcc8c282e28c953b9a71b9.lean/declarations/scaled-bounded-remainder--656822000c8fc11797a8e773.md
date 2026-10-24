# scaled_bounded_remainder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89973412-9de7-20a4-c658-085ff88b8c91",
  "kind": "theorem",
  "lexical_name": "scaled_bounded_remainder",
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
  "slug": "scaled-bounded-remainder--656822000c8fc11797a8e773",
  "source": {
    "blob": "f485c444b673a42063558eff72049996dd5a31c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 188,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt08/Variantfab34a9d3c039589010330eeb9f0f8c167b59d7f42dcc8c282e28c953b9a71b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:656822000c8fc11797a8e77369ffdd021cacdabc58d916e4386871bdcf612d67",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt08/Variantfab34a9d3c039589010330eeb9f0f8c167b59d7f42dcc8c282e28c953b9a71b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89973412-9de7-20a4-c658-085ff88b8c91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaled_bounded_remainder (R : ℝ → ℝ)
    (hR : ∀ A : ℝ, 1 ≤ A → |R A| ≤ 3) :
    Tendsto (fun A : ℝ => A^9*Real.exp (-A/2)*R A) atTop (𝓝 0) := by
  have ht := (Real.tendsto_pow_mul_exp_neg_atTop_nhds_zero 9).comp
    (tendsto_id.const_mul_atTop (show (0 : ℝ) < 1/2 by norm_num))
  have hs : Tendsto (fun A : ℝ => A^9*Real.exp (-A/2)) atTop (𝓝 0) := by
    convert ht.const_mul (512 : ℝ) using 1
    · ext A; simp only [Function.comp_apply,id_eq]; congr 1; ring
    · norm_num
  apply squeeze_zero_norm' _ (hs.const_mul 3)
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  rw [Real.norm_eq_abs,abs_mul,abs_mul,abs_of_nonneg (pow_nonneg (by linarith : 0 ≤ A) 9),
    abs_of_pos (Real.exp_pos _)]
  nlinarith [hR A hA, mul_nonneg (pow_nonneg (by linarith : 0 ≤ A) 9) (Real.exp_pos (-A/2)).le]

#check p
#print axioms p
#check normalizedSquare
#print axioms normalizedSquare
#check p_coe
#print axioms p_coe
#check actual_scaled_square_real
#print axioms actual_scaled_square_real
#check p_ratio
#print axioms p_ratio
#check p_ratio_tendsto
#print axioms p_ratio_tendsto
#check normalization_tendsto
#print axioms normalization_tendsto
#check exp_scaled_neg_tendsto
#print axioms exp_scaled_neg_tendsto
#check exp_square_rescale
#print axioms exp_square_rescale
#check scaled_square_exact
#print axioms scaled_square_exact
#check scaled_square_tendsto
#print axioms scaled_square_tendsto
#check quarter_scaled_limit
#print axioms quarter_scaled_limit
#check exponential_scale_tendsto
#print axioms exponential_scale_tendsto
#check quarter_square_tendsto_atTop
#print axioms quarter_square_tendsto_atTop
#check bounded_remainder_transfer
#print axioms bounded_remainder_transfer
#check scaled_bounded_remainder
#print axioms scaled_bounded_remainder
end
end ContinuousResearch.ActualRealMode
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt08/Variantfab34a9d3c039589010330eeb9f0f8c167b59d7f42dcc8c282e28c953b9a71b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt08/Variantfab34a9d3c039589010330eeb9f0f8c167b59d7f42dcc8c282e28c953b9a71b9.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f485c444b673a42063558eff72049996dd5a31c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
