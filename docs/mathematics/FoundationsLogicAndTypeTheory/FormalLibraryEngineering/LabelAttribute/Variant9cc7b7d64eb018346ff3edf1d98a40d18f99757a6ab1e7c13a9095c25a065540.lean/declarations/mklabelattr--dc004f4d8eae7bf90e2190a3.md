# mkLabelAttr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61703ca854e8b2cd0da6fa2331d59dab6e942774e9e32ccf6b7080180f83a71c",
  "kind": "def",
  "lexical_name": "mkLabelAttr",
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
  "slug": "mklabelattr--dc004f4d8eae7bf90e2190a3",
  "source": {
    "blob": "4866934c3188fe3013c84f49d63ecddd2d7f4190",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant9cc7b7d64eb018346ff3edf1d98a40d18f99757a6ab1e7c13a9095c25a065540.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc004f4d8eae7bf90e2190a3cf010a84bbef919b90959f5a437b58df8ef5c465",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant9cc7b7d64eb018346ff3edf1d98a40d18f99757a6ab1e7c13a9095c25a065540.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61703ca854e8b2cd0da6fa2331d59dab6e942774e9e32ccf6b7080180f83a71c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkLabelAttr (attrName : Name) (attrDescr : String) (ext : LabelExtension)
  (ref : Name := by exact decl_name%) : IO Unit :=
registerBuiltinAttribute {
  ref   := ref
  name  := attrName
  descr := attrDescr
  applicationTime := AttributeApplicationTime.afterCompilation
  add   := fun declName _ kind =>
    ext.add declName kind
  erase := fun declName => do
    let s := ext.getState (← getEnv)
    modifyEnv fun env => ext.modifyState env fun _ => s.erase declName
}

/--
Construct a new "label attribute",
which does nothing except keep track of the names of the declarations with that attribute.

Users will generally use the `register_label_attr` macro defined below.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant9cc7b7d64eb018346ff3edf1d98a40d18f99757a6ab1e7c13a9095c25a065540.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant9cc7b7d64eb018346ff3edf1d98a40d18f99757a6ab1e7c13a9095c25a065540.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4866934c3188fe3013c84f49d63ecddd2d7f4190` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
