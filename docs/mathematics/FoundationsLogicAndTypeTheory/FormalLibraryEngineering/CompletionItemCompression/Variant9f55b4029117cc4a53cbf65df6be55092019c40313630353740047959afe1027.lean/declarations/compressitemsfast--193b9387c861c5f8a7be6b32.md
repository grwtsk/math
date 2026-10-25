# compressItemsFast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba5c2f293c76749823721a6b4840dde6d46d4770ab5444f14ebcfedb3772cbba",
  "kind": "def",
  "lexical_name": "compressItemsFast",
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
  "slug": "compressitemsfast--193b9387c861c5f8a7be6b32",
  "source": {
    "blob": "d4f3efe350b97431ba874477f38fccae8ebba01f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionItemCompression/Variant9f55b4029117cc4a53cbf65df6be55092019c40313630353740047959afe1027.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:193b9387c861c5f8a7be6b32ef76905bfcb8eae9580380878ec2425d2626bd7b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionItemCompression/Variant9f55b4029117cc4a53cbf65df6be55092019c40313630353740047959afe1027.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba5c2f293c76749823721a6b4840dde6d46d4770ab5444f14ebcfedb3772cbba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compressItemsFast
    (acc : String) (items : Array ResolvableCompletionItem) (i : Nat) :
    String :=
  if h : i < items.size then
    let acc := compressItemFast acc items[i]
    let acc :=
      if i < items.size - 1 then
        acc ++ ","
      else
        acc
    compressItemsFast acc items (i + 1)
  else
    acc

/--
Fast path for `(toJson l).compress` that skips the intermediate `Json` object.
Used in place of `(toJson l).compress` in the language server.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionItemCompression/Variant9f55b4029117cc4a53cbf65df6be55092019c40313630353740047959afe1027.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionItemCompression/Variant9f55b4029117cc4a53cbf65df6be55092019c40313630353740047959afe1027.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4f3efe350b97431ba874477f38fccae8ebba01f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
