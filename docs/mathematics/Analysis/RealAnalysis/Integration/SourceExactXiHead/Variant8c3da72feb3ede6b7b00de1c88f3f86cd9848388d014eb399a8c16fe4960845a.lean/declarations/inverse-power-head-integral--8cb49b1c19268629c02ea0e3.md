# inverse_power_head_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab0833b4-369b-052a-c3d5-0a388d843df3",
  "kind": "theorem",
  "lexical_name": "inverse_power_head_integral",
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
  "slug": "inverse-power-head-integral--8cb49b1c19268629c02ea0e3",
  "source": {
    "blob": "be444f50802f5d729579dcf2dfdfee34fe978f26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 49,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant8c3da72feb3ede6b7b00de1c88f3f86cd9848388d014eb399a8c16fe4960845a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cb49b1c19268629c02ea0e3d3fdec1ac0de9ba6f8fb970d053754305ee65067",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant8c3da72feb3ede6b7b00de1c88f3f86cd9848388d014eb399a8c16fe4960845a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab0833b4-369b-052a-c3d5-0a388d843df3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverse_power_head_integral :
    (∫ y in (2 : ℝ)..7, 1 / y ^ (3 / 2 : ℝ)) =
      2 * (1 / Real.sqrt 2 - 1 / Real.sqrt 7) := by
  have hz : (0 : ℝ) ∉ uIcc (2 : ℝ) 7 := by norm_num [uIcc_of_le (by norm_num : (2 : ℝ) ≤ 7)]
  have h := integral_rpow (a := (2 : ℝ)) (b := 7) (r := (-3 / 2 : ℝ))
    (Or.inr ⟨by norm_num, hz⟩)
  have he : (∫ y in (2 : ℝ)..7, 1 / y ^ (3 / 2 : ℝ)) =
      ∫ y in (2 : ℝ)..7, y ^ (-3 / 2 : ℝ) := by
    apply intervalIntegral.integral_congr
    intro y hy
    have hy0 : 0 ≤ y := by
      rw [uIcc_of_le (by norm_num : (2 : ℝ) ≤ 7)] at hy
      linarith [hy.1]
    change 1 / y ^ (3 / 2 : ℝ) = y ^ (-3 / 2 : ℝ)
    rw [show (-3 / 2 : ℝ) = -(3 / 2 : ℝ) by ring, Real.rpow_neg hy0, one_div]
  rw [he, h]
  norm_num only [show (-3 / 2 : ℝ) + 1 = -(1 / 2 : ℝ) by ring]
  rw [Real.rpow_neg (by norm_num : (0 : ℝ) ≤ 7),
    Real.rpow_neg (by norm_num : (0 : ℝ) ≤ 2), ← Real.sqrt_eq_rpow, ← Real.sqrt_eq_rpow]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant8c3da72feb3ede6b7b00de1c88f3f86cd9848388d014eb399a8c16fe4960845a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant8c3da72feb3ede6b7b00de1c88f3f86cd9848388d014eb399a8c16fe4960845a.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be444f50802f5d729579dcf2dfdfee34fe978f26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
