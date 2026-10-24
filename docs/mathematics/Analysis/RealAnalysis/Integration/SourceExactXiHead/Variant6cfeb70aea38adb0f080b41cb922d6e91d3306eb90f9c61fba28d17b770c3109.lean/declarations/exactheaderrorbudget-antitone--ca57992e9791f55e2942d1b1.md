# exactHeadErrorBudget_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e247e400-28eb-5daa-53d4-a064ec9c024d",
  "kind": "theorem",
  "lexical_name": "exactHeadErrorBudget_antitone",
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
  "slug": "exactheaderrorbudget-antitone--ca57992e9791f55e2942d1b1",
  "source": {
    "blob": "59864f802fa2a951eaf97df7a8e89b497a9c8d43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 141,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant6cfeb70aea38adb0f080b41cb922d6e91d3306eb90f9c61fba28d17b770c3109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca57992e9791f55e2942d1b19ee92b9eff5efbe362ce142371f5165c3aab3248",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant6cfeb70aea38adb0f080b41cb922d6e91d3306eb90f9c61fba28d17b770c3109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e247e400-28eb-5daa-53d4-a064ec9c024d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exactHeadErrorBudget_antitone {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    exactHeadErrorBudget A ≤ exactHeadErrorBudget Q := by
  have hQ0 : 0 < Q := by linarith
  have hA0 : 0 < A := by linarith
  have hs : Q ^ 2 ≤ A ^ 2 := by nlinarith
  have hn : 0 ≤ 30 * wholeHeadHeight * (1 / Real.sqrt 2 - 1 / Real.sqrt 7) := by
    have hd : 0 ≤ 1 / Real.sqrt 2 - 1 / Real.sqrt 7 := by
      apply sub_nonneg.mpr
      exact one_div_le_one_div_of_le (Real.sqrt_pos.mpr (by norm_num))
        (Real.sqrt_le_sqrt (by norm_num))
    exact mul_nonneg (mul_nonneg (by norm_num) wholeHeadHeight_nonneg) hd
  unfold exactHeadErrorBudget
  exact div_le_div_of_nonneg_left hn (sq_pos_of_pos hQ0) hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant6cfeb70aea38adb0f080b41cb922d6e91d3306eb90f9c61fba28d17b770c3109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant6cfeb70aea38adb0f080b41cb922d6e91d3306eb90f9c61fba28d17b770c3109.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59864f802fa2a951eaf97df7a8e89b497a9c8d43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
