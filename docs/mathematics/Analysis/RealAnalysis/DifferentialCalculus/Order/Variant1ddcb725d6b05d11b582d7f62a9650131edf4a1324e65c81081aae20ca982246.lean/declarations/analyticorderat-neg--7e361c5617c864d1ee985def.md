# analyticOrderAt_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3730cd24-922d-e53a-457a-5755c8fa7537",
  "kind": "lemma",
  "lexical_name": "analyticOrderAt_neg",
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
  "slug": "analyticorderat-neg--7e361c5617c864d1ee985def",
  "source": {
    "blob": "5dd01cf403100219545c2c7c5c81cacfbf634460",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 188,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Order/Variant1ddcb725d6b05d11b582d7f62a9650131edf4a1324e65c81081aae20ca982246.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e361c5617c864d1ee985def5c4adf1e6fcf78ad72b07eb45a05b550250d5e71",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Order/Variant1ddcb725d6b05d11b582d7f62a9650131edf4a1324e65c81081aae20ca982246.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3730cd24-922d-e53a-457a-5755c8fa7537`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma analyticOrderAt_neg : analyticOrderAt (-f) z₀ = analyticOrderAt f z₀ := by
  by_cases hf : AnalyticAt 𝕜 f z₀
  · refine ENat.eq_of_forall_natCast_le_iff fun n ↦ ?_
    simp only [natCast_le_analyticOrderAt, hf, hf.neg]
    exact (Equiv.neg _).exists_congr <| by simp [neg_eq_iff_eq_neg]
  · rw [analyticOrderAt_of_not_analyticAt hf,
      analyticOrderAt_of_not_analyticAt <| analyticAt_neg.not.2 hf]

/-- The order of a sum is at least the minimum of the orders of the summands. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Order/Variant1ddcb725d6b05d11b582d7f62a9650131edf4a1324e65c81081aae20ca982246.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Order/Variant1ddcb725d6b05d11b582d7f62a9650131edf4a1324e65c81081aae20ca982246.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dd01cf403100219545c2c7c5c81cacfbf634460` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
