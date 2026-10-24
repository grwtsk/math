# actualZeroFreeMovingAllowance_tendsto_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77b24d14-61b7-a921-768d-091126ef8e2c",
  "kind": "theorem",
  "lexical_name": "actualZeroFreeMovingAllowance_tendsto_atTop",
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
  "slug": "actualzerofreemovingallowance-tendsto-attop--d354528f4ad8d8626085fd0e",
  "source": {
    "blob": "9ddcb44850d4033e0128464c582f9346e602aa2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 88,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative03/Variant178573fb49a635ac8218645c853b0d16ba1ea6cc9fb18049fee65698c099af1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d354528f4ad8d8626085fd0e49e50aee24fa979f4690e1c01a87e91973a82bfc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative03/Variant178573fb49a635ac8218645c853b0d16ba1ea6cc9fb18049fee65698c099af1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77b24d14-61b7-a921-768d-091126ef8e2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualZeroFreeMovingAllowance_tendsto_atTop (a c : ℝ) (hc : 1 < c) :
    Tendsto (fun A : ℝ =>
      Real.exp (A - 2 * a * A / (Real.log (actualBumpMovingHeight A c)) ^ 9) / A ^ 9)
      atTop atTop := by
  have he : Tendsto (fun A : ℝ =>
      Real.exp (-(2 * a * 5 ^ 9 / (2 * c - 1) ^ 9) / A ^ 8)) atTop (𝓝 1) := by
    have hh := (actualZeroFreeMovingCorrection_tendsto_zero a c).neg.exp
    simpa only [neg_zero, Real.exp_zero, neg_div] using hh
  have hh := (Real.tendsto_exp_div_pow_atTop 9).atTop_mul_pos (by norm_num : (0 : ℝ) < 1) he
  apply hh.congr'
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with A hA
  rw [actualZeroFreeMovingExponent_eq a c A hc hA, Real.exp_sub]
  simp only [Real.exp_neg, neg_div]
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualZeroFreeHeadGap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative03/Variant178573fb49a635ac8218645c853b0d16ba1ea6cc9fb18049fee65698c099af1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative03/Variant178573fb49a635ac8218645c853b0d16ba1ea6cc9fb18049fee65698c099af1b.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ddcb44850d4033e0128464c582f9346e602aa2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
