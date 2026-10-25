# NodeWithPos.toJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c296615616671a070eb51b9b3f9e27c4533cea56773f1c73fd6849da0f6c667e",
  "kind": "def",
  "lexical_name": "NodeWithPos.toJson",
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
  "slug": "nodewithpos-tojson--76556a1e967b23203fc531db",
  "source": {
    "blob": "17229d2dc36df2d75a13cdb161ad31da4a4e4ac4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 271,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant18e1bd78e7fae2252f063733e6f138a38210877d8d98215cf7a4c144090b1045.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76556a1e967b23203fc531dbc298969942c6874ac006b4ebe97bd45d435b277b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant18e1bd78e7fae2252f063733e6f138a38210877d8d98215cf7a4c144090b1045.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c296615616671a070eb51b9b3f9e27c4533cea56773f1c73fd6849da0f6c667e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def NodeWithPos.toJson (node : NodeWithPos) : Json :=
  json% {
    "name": $(node.name),
    "latexLabel": $(node.latexLabel),
    "statement": $(node.statement),
    "proof": $(node.proof),
    "notReady": $(node.notReady),
    "discussion": $(node.discussion),
    "title": $(node.title),
    "hasLean": $(node.hasLean),
    "file": $(node.file),
    "location": $(node.location.map locationToJson)
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant18e1bd78e7fae2252f063733e6f138a38210877d8d98215cf7a4c144090b1045.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant18e1bd78e7fae2252f063733e6f138a38210877d8d98215cf7a4c144090b1045.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17229d2dc36df2d75a13cdb161ad31da4a4e4ac4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
