# scaled_bounded_remainder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2e3bf14-f123-ff0c-6ec0-379dcfcff94a",
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
  "slug": "scaled-bounded-remainder--75786fa0c80ca2e94a847d08",
  "source": {
    "blob": "ce0222685a4dad378f2b1042bb7402eed5b54f14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 190,
    "path": "GRWTSK/Topology/GeneralTopology/ActualRealMode/Variantf7c7fa7c90e31b4210ec6c437813077070a0f431e6f1af5dda63c6638ecab0fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75786fa0c80ca2e94a847d08d93cb73f69b51e653a9c2742acfe68c41d02bc19",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualRealMode/Variantf7c7fa7c90e31b4210ec6c437813077070a0f431e6f1af5dda63c6638ecab0fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2e3bf14-f123-ff0c-6ec0-379dcfcff94a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaled_bounded_remainder (R : ℝ → ℝ) (B : ℝ)
    (hR : ∀ A : ℝ, 1 ≤ A → |R A| ≤ B) :
    Tendsto (fun A : ℝ => A^9*Real.exp (-A/2)*R A) atTop (𝓝 0) := by
  have ht := (Real.tendsto_pow_mul_exp_neg_atTop_nhds_zero 9).comp
    (tendsto_id.const_mul_atTop (show (0 : ℝ) < 1/2 by norm_num))
  have hs : Tendsto (fun A : ℝ => A^9*Real.exp (-A/2)) atTop (𝓝 0) := by
    convert ht.const_mul (512 : ℝ) using 1
    · ext A; simp only [Function.comp_apply,id_eq]
      rw [show -A/2=-(1/2*A) by ring]; ring
    · norm_num
  have hB : 0 ≤ B := (abs_nonneg (R 1)).trans (hR 1 le_rfl)
  have hb : Tendsto (fun A : ℝ => B*(A^9*Real.exp (-A/2))) atTop (𝓝 0) := by
    simpa using hs.const_mul B
  apply squeeze_zero_norm' _ hb
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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualRealMode/Variantf7c7fa7c90e31b4210ec6c437813077070a0f431e6f1af5dda63c6638ecab0fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualRealMode/Variantf7c7fa7c90e31b4210ec6c437813077070a0f431e6f1af5dda63c6638ecab0fe.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce0222685a4dad378f2b1042bb7402eed5b54f14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
