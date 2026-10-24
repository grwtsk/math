# mem_splitCenter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a873d43-95f0-a84e-7a2a-051d964da4f3",
  "kind": "theorem",
  "lexical_name": "mem_splitCenter",
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
  "slug": "mem-splitcenter--a5747181fb5b9dc74f508fea",
  "source": {
    "blob": "df28dab9542547f0eb2105551860525af83f9474",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 60,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5747181fb5b9dc74f508fea8be16a80e4a97f1c90a45d5535ee5d128cbb1d63",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a873d43-95f0-a84e-7a2a-051d964da4f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_splitCenter : J ∈ splitCenter I ↔ ∃ s, I.splitCenterBox s = J := by simp [splitCenter]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df28dab9542547f0eb2105551860525af83f9474` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
