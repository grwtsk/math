# negative_part_abs_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b0fc20c-5f84-dee8-a48f-caba2203ad4c",
  "kind": "theorem",
  "lexical_name": "negative_part_abs_sub_le",
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
  "slug": "negative-part-abs-sub-le--b39e8465101b0d62878be0eb",
  "source": {
    "blob": "ea1b9f27ec93f65819457630b6ccdbe6ef9c2482",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9d27028145b08333SourceActualNegativeDefect/Varianta673d9c544fa26727a1b8c4b7bee4748e04d4352e1ac12092ac6ee85f60bde78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b39e8465101b0d62878be0eb57012098544ddfbc31015716be89e99e8d9178fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9d27028145b08333SourceActualNegativeDefect/Varianta673d9c544fa26727a1b8c4b7bee4748e04d4352e1ac12092ac6ee85f60bde78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b0fc20c-5f84-dee8-a48f-caba2203ad4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem negative_part_abs_sub_le (x y : ℝ) :
    |max 0 (-x) - max 0 (-y)| ≤ |x-y| := by
  have h := abs_max_sub_max_le_max (0 : ℝ) (-x) 0 (-y)
  simpa only [sub_self, abs_zero, neg_sub_neg, abs_sub_comm,
    max_eq_right (abs_nonneg (x-y))] using h

/-- The source-specific defect error is controlled by its genuine complex source error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9d27028145b08333SourceActualNegativeDefect/Varianta673d9c544fa26727a1b8c4b7bee4748e04d4352e1ac12092ac6ee85f60bde78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9d27028145b08333SourceActualNegativeDefect/Varianta673d9c544fa26727a1b8c4b7bee4748e04d4352e1ac12092ac6ee85f60bde78.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea1b9f27ec93f65819457630b6ccdbe6ef9c2482` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
