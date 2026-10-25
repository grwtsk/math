# bad_contains_sorry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af14bbb0d8fc8cc26aede806be07b0872836b70e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e787eb57f674aaf3e837c4723b89798e4ce6b1f933f1ebd409eb29fbf3fb6669.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:deeee0b1-b683-b5e3-ae56-38b2d10f6cfe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:981945e7-f182-7c89-10a9-5a4d5e56e439",
  "kind": "theorem",
  "lexical_name": "bad_contains_sorry",
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
  "slug": "bad-contains-sorry--04203cb4efcd20144c655c56",
  "source": {
    "blob": "af14bbb0d8fc8cc26aede806be07b0872836b70e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5,
    "line": 3,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thm/Variante787eb57f674aaf3e837c4723b89798e4ce6b1f933f1ebd409eb29fbf3fb6669.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04203cb4efcd20144c655c56ad8e291be399d962cec05f1e6ce3ca67e58f2d0f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thm/Variante787eb57f674aaf3e837c4723b89798e4ce6b1f933f1ebd409eb29fbf3fb6669.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:981945e7-f182-7c89-10a9-5a4d5e56e439`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3–5.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bad_contains_sorry : True := by
  have x : True := sorry
  exact True.intro
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thm/Variante787eb57f674aaf3e837c4723b89798e4ce6b1f933f1ebd409eb29fbf3fb6669.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thm/Variante787eb57f674aaf3e837c4723b89798e4ce6b1f933f1ebd409eb29fbf3fb6669.lean#L3).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af14bbb0d8fc8cc26aede806be07b0872836b70e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
