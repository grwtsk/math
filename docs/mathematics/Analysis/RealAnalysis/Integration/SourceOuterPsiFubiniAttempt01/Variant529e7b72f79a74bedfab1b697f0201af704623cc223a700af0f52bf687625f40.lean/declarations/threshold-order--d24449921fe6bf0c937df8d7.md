# threshold_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b592cf61-b6da-b191-37a9-61500dd8e650",
  "kind": "theorem",
  "lexical_name": "threshold_order",
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
  "slug": "threshold-order--d24449921fe6bf0c937df8d7",
  "source": {
    "blob": "cebbabe4d9d52ad8a707d47562028c87cfe5e0a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 33,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variant529e7b72f79a74bedfab1b697f0201af704623cc223a700af0f52bf687625f40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d24449921fe6bf0c937df8d7a89ab0d1f05fb98e9f41b8141089d3d304ca90ab",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variant529e7b72f79a74bedfab1b697f0201af704623cc223a700af0f52bf687625f40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b592cf61-b6da-b191-37a9-61500dd8e650`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem threshold_order (A : ℝ) (hA : 1 ≤ A) : Real.log 2 ≤ 2 * A := by
  linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]

/-- Actual Xi times the complete smooth kernel is integrable on the finite physical triangle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variant529e7b72f79a74bedfab1b697f0201af704623cc223a700af0f52bf687625f40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variant529e7b72f79a74bedfab1b697f0201af704623cc223a700af0f52bf687625f40.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cebbabe4d9d52ad8a707d47562028c87cfe5e0a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
