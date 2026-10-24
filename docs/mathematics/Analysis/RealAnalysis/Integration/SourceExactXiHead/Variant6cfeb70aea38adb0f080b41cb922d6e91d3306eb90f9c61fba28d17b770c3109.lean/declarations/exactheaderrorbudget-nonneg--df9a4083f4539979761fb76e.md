# exactHeadErrorBudget_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ace5f566-79ad-959a-1756-d4dacc256be3",
  "kind": "theorem",
  "lexical_name": "exactHeadErrorBudget_nonneg",
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
  "slug": "exactheaderrorbudget-nonneg--df9a4083f4539979761fb76e",
  "source": {
    "blob": "59864f802fa2a951eaf97df7a8e89b497a9c8d43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 132,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant6cfeb70aea38adb0f080b41cb922d6e91d3306eb90f9c61fba28d17b770c3109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df9a4083f4539979761fb76ee2600b7084ec36c5a8710a03da2c57a8e78e674f",
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

Occurrence: `result:ace5f566-79ad-959a-1756-d4dacc256be3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exactHeadErrorBudget_nonneg (Q : ℝ) : 0 ≤ exactHeadErrorBudget Q := by
  have hs : Real.sqrt (2 : ℝ) ≤ Real.sqrt 7 := Real.sqrt_le_sqrt (by norm_num)
  have h2 : 0 < Real.sqrt (2 : ℝ) := Real.sqrt_pos.mpr (by norm_num)
  have h7 : 0 < Real.sqrt (7 : ℝ) := Real.sqrt_pos.mpr (by norm_num)
  have hd : 0 ≤ 1 / Real.sqrt 2 - 1 / Real.sqrt 7 := by
    exact sub_nonneg.mpr (one_div_le_one_div_of_le h2 hs)
  unfold exactHeadErrorBudget
  exact div_nonneg (mul_nonneg (mul_nonneg (by norm_num) wholeHeadHeight_nonneg) hd) (sq_nonneg Q)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant6cfeb70aea38adb0f080b41cb922d6e91d3306eb90f9c61fba28d17b770c3109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant6cfeb70aea38adb0f080b41cb922d6e91d3306eb90f9c61fba28d17b770c3109.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59864f802fa2a951eaf97df7a8e89b497a9c8d43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
