# MacroRule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13d3a1bbee6c8a368072db1fd695b73abde5e6d588b56d491d80b1408b294adf",
  "kind": "structure",
  "lexical_name": "MacroRule",
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
  "slug": "macrorule--b81b09a500a61cfa40d6e29c",
  "source": {
    "blob": "7a7e6edebcf0405111217d950a24ebc6aa0ce316",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b81b09a500a61cfa40d6e29c1960c5827ca00d45ef95d21f8bc26816fdfaddfb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13d3a1bbee6c8a368072db1fd695b73abde5e6d588b56d491d80b1408b294adf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MacroRule (α : Type) where
  output : List (CompressedString α) → List α
  admissible : List (CompressedString α) → Prop
  MacroLookupPath : List (CompressedString α) → Type
  followMacroPath :
    (parts : List (CompressedString α)) → MacroLookupPath parts → Option α
  route :
    (parts : List (CompressedString α)) →
      admissible parts →
      Fin (output parts).length →
      MacroLookupPath parts
  route_sound :
    ∀ (parts : List (CompressedString α)) (h : admissible parts)
      (i : Fin (output parts).length),
      followMacroPath parts (route parts h i) =
        listGet? (output parts) i.val
  route_unique :
    ∀ (parts : List (CompressedString α)) (h : admissible parts)
      (i : Fin (output parts).length) (path : MacroLookupPath parts),
      followMacroPath parts path = listGet? (output parts) i.val →
        path = route parts h i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a7e6edebcf0405111217d950a24ebc6aa0ce316` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
