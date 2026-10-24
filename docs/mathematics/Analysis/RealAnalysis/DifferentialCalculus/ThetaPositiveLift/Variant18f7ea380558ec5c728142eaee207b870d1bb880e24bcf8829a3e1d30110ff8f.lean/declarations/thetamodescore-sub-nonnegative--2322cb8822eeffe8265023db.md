# thetaModeScore_sub_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60d889e1-8114-07c8-9e7c-a72ac20c4763",
  "kind": "theorem",
  "lexical_name": "thetaModeScore_sub_nonnegative",
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
  "slug": "thetamodescore-sub-nonnegative--2322cb8822eeffe8265023db",
  "source": {
    "blob": "bf7620d3c70a3e0b0300746cbec9527bd9790cfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 210,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2322cb8822eeffe8265023db20cf9c4b58bab4b4fdab6be266dd77945a79ab67",
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

Occurrence: `result:60d889e1-8114-07c8-9e7c-a72ac20c4763`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaModeScore_sub_nonnegative (m : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    0 ≤ thetaModeScore 0 t - thetaModeScore m t := by
  have ha := (thetaModeA_gt_three ht).le
  have hy := thetaModeA_le_thetaModeY m t
  have hdA : 0 < 2 * thetaModeA t - 3 := by linarith
  have hdiv : 12 / (2 * thetaModeY m t - 3) ≤ 12 / (2 * thetaModeA t - 3) :=
    div_le_div_of_nonneg_left (by norm_num) hdA (by linarith)
  simp only [thetaModeScore, thetaModeY, zero_add, Nat.cast_one, one_pow, mul_one] at *
  linarith

/-- An explicit score-gap bound relative to the first positive mode. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf7620d3c70a3e0b0300746cbec9527bd9790cfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
