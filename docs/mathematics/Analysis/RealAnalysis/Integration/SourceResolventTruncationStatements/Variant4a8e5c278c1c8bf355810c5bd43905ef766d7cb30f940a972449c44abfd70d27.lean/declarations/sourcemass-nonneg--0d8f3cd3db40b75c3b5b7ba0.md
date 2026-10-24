# sourceMass_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4182df5f-4f2d-ac66-339b-3b895c4e9c5a",
  "kind": "theorem",
  "lexical_name": "sourceMass_nonneg",
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
  "slug": "sourcemass-nonneg--0d8f3cd3db40b75c3b5b7ba0",
  "source": {
    "blob": "3207ffb3a95be936792efce10d5ef7423c2a718d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 680,
    "line": 676,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationStatements/Variant4a8e5c278c1c8bf355810c5bd43905ef766d7cb30f940a972449c44abfd70d27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d8f3cd3db40b75c3b5b7ba059d7bf508c75b73282f4c0c0c2c3d7e1ff13b77a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceResolventTruncationStatements/Variant4a8e5c278c1c8bf355810c5bd43905ef766d7cb30f940a972449c44abfd70d27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4182df5f-4f2d-ac66-339b-3b895c4e9c5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 676–680.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMass_nonneg (α : ℝ) (hα : 0 < α) : 0 ≤ sourceMass α :=
  mul_nonneg hα.le
    ((positiveResolvent_isPositive sourceEnergy sourceEnergy_isPositive α hα).re_inner_nonneg_right _)

/-- Positive approximants use exactly the same reference direction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceResolventTruncationStatements/Variant4a8e5c278c1c8bf355810c5bd43905ef766d7cb30f940a972449c44abfd70d27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationStatements/Variant4a8e5c278c1c8bf355810c5bd43905ef766d7cb30f940a972449c44abfd70d27.lean#L676).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3207ffb3a95be936792efce10d5ef7423c2a718d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
