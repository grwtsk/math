# mkDiffJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77b764f1fde2c46771a61dda25766a61c95a25aaaf816f10435fda5134aafc55",
  "kind": "def",
  "lexical_name": "mkDiffJson",
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
  "slug": "mkdiffjson--ab07a45a6529e46d7b94cce7",
  "source": {
    "blob": "4a782eeb30f8678df6a7319a3c8a6fdae9aedfb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 192,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Varianta7cab5343d78dcab0949beb3c456996a5cb48d1be6e458465160796e9ba1663d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab07a45a6529e46d7b94cce743f7d66df13f0a28bcfff4eaeb222504be1e7909",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Varianta7cab5343d78dcab0949beb3c456996a5cb48d1be6e458465160796e9ba1663d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77b764f1fde2c46771a61dda25766a61c95a25aaaf816f10435fda5134aafc55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkDiffJson (ds : Array (Diff.Action × String)) :=
  toJson <| ds.map fun
    | (.insert, s) => json% { type: "insertion", text: $s }
    | (.delete, s) => json% { type: "deletion", text: $s }
    | (.skip  , s) => json% { type: "unchanged", text: $s }

/--
Converts an array of diff actions into a Unicode string that visually depicts the diff.

Note that this function does not return the string that results from applying the diff to some
input; rather, it returns a string representation of the actions that the diff itself comprises,
such as `b̵a̵c̲h̲e̲e̲rs̲`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Varianta7cab5343d78dcab0949beb3c456996a5cb48d1be6e458465160796e9ba1663d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Varianta7cab5343d78dcab0949beb3c456996a5cb48d1be6e458465160796e9ba1663d.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a782eeb30f8678df6a7319a3c8a6fdae9aedfb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
