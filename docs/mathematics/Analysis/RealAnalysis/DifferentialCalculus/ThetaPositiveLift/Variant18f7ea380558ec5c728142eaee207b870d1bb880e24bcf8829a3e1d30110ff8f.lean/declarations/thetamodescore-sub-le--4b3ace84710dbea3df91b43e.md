# thetaModeScore_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:490684cc-53cc-f60e-18ce-13497d35979f",
  "kind": "theorem",
  "lexical_name": "thetaModeScore_sub_le",
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
  "slug": "thetamodescore-sub-le--4b3ace84710dbea3df91b43e",
  "source": {
    "blob": "bf7620d3c70a3e0b0300746cbec9527bd9790cfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 221,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b3ace84710dbea3df91b43e516525daa4620c2d7a97816845b16e57135d0a79",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:490684cc-53cc-f60e-18ce-13497d35979f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaModeScore_sub_le (m : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaModeScore 0 t - thetaModeScore m t ≤
      5 * thetaModeA t * (((m + 1 : ℕ) : ℝ) ^ 2 - 1) := by
  rcases m with _ | m
  · simp [thetaModeScore]
  have ha := (thetaModeA_gt_three ht).le
  have hn : (2 : ℝ) ≤ ((m + 1 + 1 : ℕ) : ℝ) := by
    exact_mod_cast (show 2 ≤ m + 1 + 1 by omega)
  have hn2 : (4 : ℝ) ≤ ((m + 1 + 1 : ℕ) : ℝ) ^ 2 := by nlinarith
  have hprod := mul_nonneg (show 0 ≤ thetaModeA t - 3 by linarith)
    (show 0 ≤ ((m + 1 + 1 : ℕ) : ℝ) ^ 2 - 4 by linarith)
  have hAn : 12 ≤ thetaModeA t * ((m + 1 + 1 : ℕ) : ℝ) ^ 2 := by nlinarith
  have hdA : 0 < 2 * thetaModeA t - 3 := by linarith
  have hdy : 0 < 2 * (thetaModeA t * ((m + 1 + 1 : ℕ) : ℝ) ^ 2) - 3 := by
    linarith
  have hdiv : 12 / (2 * thetaModeA t - 3) ≤ 4 := (div_le_iff₀ hdA).2 (by linarith)
  have hdiv0 : 0 ≤ 12 / (2 * (thetaModeA t * ((m + 1 + 1 : ℕ) : ℝ) ^ 2) - 3) :=
    by positivity
  have hgap : 4 ≤ thetaModeA t * (((m + 1 + 1 : ℕ) : ℝ) ^ 2 - 1) := by nlinarith
  simp only [thetaModeScore, thetaModeY, zero_add, Nat.cast_one, one_pow, mul_one]
  change 9 + 12 / (2 * thetaModeA t - 3) - 4 * thetaModeA t -
      (9 + 12 / (2 * (thetaModeA t * ((m + 1 + 1 : ℕ) : ℝ) ^ 2) - 3) -
        4 * (thetaModeA t * ((m + 1 + 1 : ℕ) : ℝ) ^ 2)) ≤ _
  nlinarith

/-- The exact ratio of a positive mode to the first mode, with common factors cancelled. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf7620d3c70a3e0b0300746cbec9527bd9790cfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
