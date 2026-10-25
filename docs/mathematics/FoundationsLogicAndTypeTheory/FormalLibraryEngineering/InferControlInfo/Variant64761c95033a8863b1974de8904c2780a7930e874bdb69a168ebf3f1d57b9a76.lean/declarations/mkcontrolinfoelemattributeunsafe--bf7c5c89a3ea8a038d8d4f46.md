# mkControlInfoElemAttributeUnsafe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd85737cf6bdd9cf41d2d7d0455e02fc3ebd3b1bb2b5c36d3cbbbc5c61913079",
  "kind": "def",
  "lexical_name": "mkControlInfoElemAttributeUnsafe",
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
  "slug": "mkcontrolinfoelemattributeunsafe--bf7c5c89a3ea8a038d8d4f46",
  "source": {
    "blob": "95a73b1bf28eedcd687850d390aab8746894329b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf7c5c89a3ea8a038d8d4f46591d5ce8cf83f6d12a69e7ed73ee54fe262e758b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd85737cf6bdd9cf41d2d7d0455e02fc3ebd3b1bb2b5c36d3cbbbc5c61913079`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def mkControlInfoElemAttributeUnsafe (ref : Name) : IO (KeyedDeclsAttribute ControlInfoHandler) :=
  mkElabAttribute ControlInfoHandler `builtin_doElem_control_info `doElem_control_info
    `Lean.Parser.Term.doElem ``Lean.Elab.Do.ControlInfoHandler "control info inference" ref

@[implemented_by mkControlInfoElemAttributeUnsafe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95a73b1bf28eedcd687850d390aab8746894329b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
