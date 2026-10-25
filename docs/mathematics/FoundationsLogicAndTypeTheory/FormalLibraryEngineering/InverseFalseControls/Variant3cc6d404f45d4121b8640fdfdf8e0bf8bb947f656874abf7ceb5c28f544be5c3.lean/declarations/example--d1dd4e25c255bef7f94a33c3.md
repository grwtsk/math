# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1029ac78d13c264686b21528c5709846356dfb0faa2959a96815c63051a8ee04",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--d1dd4e25c255bef7f94a33c3",
  "source": {
    "blob": "234dc83f3f4c4789240fe37dac488f7b2325ee0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 14,
    "line": 10,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InverseFalseControls/Variant3cc6d404f45d4121b8640fdfdf8e0bf8bb947f656874abf7ceb5c28f544be5c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1dd4e25c255bef7f94a33c3a4156518348616df1cbc45c6f9f5729637826fec",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InverseFalseControls/Variant3cc6d404f45d4121b8640fdfdf8e0bf8bb947f656874abf7ceb5c28f544be5c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1029ac78d13c264686b21528c5709846356dfb0faa2959a96815c63051a8ee04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–14.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : parseValue 2 (emit (.map [(List.replicate 16385 'a', .bool true)]) ++ ['!']) =
    some (.map [(List.replicate 16385 'a', .bool true)], ['!']) := by
  rw [map_key_reject 0 _ _ _ (by simp only [List.length_replicate]; omega)]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InverseFalseControls/Variant3cc6d404f45d4121b8640fdfdf8e0bf8bb947f656874abf7ceb5c28f544be5c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InverseFalseControls/Variant3cc6d404f45d4121b8640fdfdf8e0bf8bb947f656874abf7ceb5c28f544be5c3.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `234dc83f3f4c4789240fe37dac488f7b2325ee0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
