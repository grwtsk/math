# integral_eq_norm_posPart_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f94d81cf-b7c0-8d08-9938-ac700a07a782",
  "kind": "theorem",
  "lexical_name": "integral_eq_norm_posPart_sub",
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
  "slug": "integral-eq-norm-pospart-sub--0c0103367c9edd4008202d59",
  "source": {
    "blob": "c106e503fa9c417660c266949e0ac67b7dc6f042",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 665,
    "line": 620,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bochner/Variant4d5deacc74fce80bc05256c88a2351e8bdfd694bd3ff4efec4500cce1bac0156.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c0103367c9edd4008202d59352b5e2114d768f7749597feb800b69a54b70ba9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bochner/Variant4d5deacc74fce80bc05256c88a2351e8bdfd694bd3ff4efec4500cce1bac0156.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f94d81cf-b7c0-8d08-9938-ac700a07a782`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–665.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_eq_norm_posPart_sub (f : α →₁ₛ[μ] ℝ) : integral f = ‖posPart f‖ - ‖negPart f‖ := by
  -- Convert things in `L¹` to their `SimpleFunc` counterpart
  have ae_eq₁ : (toSimpleFunc f).posPart =ᵐ[μ] (toSimpleFunc (posPart f)).map norm := by
    filter_upwards [posPart_toSimpleFunc f]with _ h
    rw [SimpleFunc.map_apply, h]
    conv_lhs => rw [← SimpleFunc.posPart_map_norm, SimpleFunc.map_apply]
  -- Convert things in `L¹` to their `SimpleFunc` counterpart
  have ae_eq₂ : (toSimpleFunc f).negPart =ᵐ[μ] (toSimpleFunc (negPart f)).map norm := by
    filter_upwards [negPart_toSimpleFunc f]with _ h
    rw [SimpleFunc.map_apply, h]
    conv_lhs => rw [← SimpleFunc.negPart_map_norm, SimpleFunc.map_apply]
  rw [integral, norm_eq_integral, norm_eq_integral, ← SimpleFunc.integral_sub]
  · show (toSimpleFunc f).integral μ =
      ((toSimpleFunc (posPart f)).map norm - (toSimpleFunc (negPart f)).map norm).integral μ
    apply MeasureTheory.SimpleFunc.integral_congr (SimpleFunc.integrable f)
    filter_upwards [ae_eq₁, ae_eq₂]with _ h₁ h₂
    show _ = _ - _
    rw [← h₁, ← h₂]
    have := (toSimpleFunc f).posPart_sub_negPart
    conv_lhs => rw [← this]
  · exact (SimpleFunc.integrable f).pos_part.congr ae_eq₁
  · exact (SimpleFunc.integrable f).neg_part.congr ae_eq₂
#align measure_theory.L1.simple_func.integral_eq_norm_pos_part_sub MeasureTheory.L1.SimpleFunc.integral_eq_norm_posPart_sub

end PosPart

end SimpleFuncIntegral

end SimpleFunc

open SimpleFunc

local notation "Integral" => @integralCLM α E _ _ _ _ _ μ _

variable [NormedSpace ℝ E] [NontriviallyNormedField 𝕜] [NormedSpace 𝕜 E] [SMulCommClass ℝ 𝕜 E]
  [NormedSpace ℝ F] [CompleteSpace E]

section IntegrationInL1

attribute [local instance] simpleFunc.normedSpace

open ContinuousLinearMap

variable (𝕜)

/-- The Bochner integral in L1 space as a continuous linear map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bochner/Variant4d5deacc74fce80bc05256c88a2351e8bdfd694bd3ff4efec4500cce1bac0156.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bochner/Variant4d5deacc74fce80bc05256c88a2351e8bdfd694bd3ff4efec4500cce1bac0156.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c106e503fa9c417660c266949e0ac67b7dc6f042` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
