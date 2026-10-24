# refined_cubic_calibration_budget_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec3f6d58-bb45-f2cf-e34a-1be93f906717",
  "kind": "theorem",
  "lexical_name": "refined_cubic_calibration_budget_lt",
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
  "slug": "refined-cubic-calibration-budget-lt--5f246633563a6200217d2990",
  "source": {
    "blob": "efa44c4f2fe7de58ba3588f307c1ba6590d8e779",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6df72eae3ee3785a0a3dCubicCoefficientCalibration/Variant7ef1ff5a14f87111859c49de8f191e906954864c55d8008702593955002e986e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f246633563a6200217d2990a25352d0fc5c6f5ab88ad9677d5167c474af1d46",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6df72eae3ee3785a0a3dCubicCoefficientCalibration/Variant7ef1ff5a14f87111859c49de8f191e906954864c55d8008702593955002e986e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec3f6d58-bb45-f2cf-e34a-1be93f906717`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem refined_cubic_calibration_budget_lt (A : ℝ) (hA : 91 ≤ A) :
    260 / A ^ 2 + 320 * (67 : ℝ) / A ^ 3 < 3 / 50 := by
  have h2 : (91 : ℝ) ^ 2 ≤ A ^ 2 := pow_le_pow_left₀ (by norm_num) hA 2
  have h3 : (91 : ℝ) ^ 3 ≤ A ^ 3 := pow_le_pow_left₀ (by norm_num) hA 3
  have b2 := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 260)
    (by norm_num : (0 : ℝ) < 91 ^ 2) h2
  have b3 := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 320 * 67)
    (by norm_num : (0 : ℝ) < 91 ^ 3) h3
  norm_num at b2 b3 ⊢
  linarith

end RH16IndependentChallengeNext
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6df72eae3ee3785a0a3dCubicCoefficientCalibration/Variant7ef1ff5a14f87111859c49de8f191e906954864c55d8008702593955002e986e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6df72eae3ee3785a0a3dCubicCoefficientCalibration/Variant7ef1ff5a14f87111859c49de8f191e906954864c55d8008702593955002e986e.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efa44c4f2fe7de58ba3588f307c1ba6590d8e779` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
