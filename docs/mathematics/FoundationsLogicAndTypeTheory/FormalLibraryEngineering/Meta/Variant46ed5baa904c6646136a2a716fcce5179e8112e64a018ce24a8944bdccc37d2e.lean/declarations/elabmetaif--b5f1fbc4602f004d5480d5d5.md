# elabMetaIf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e26c970c226c2fad966decc072881e59beaeb4583d4b8c8b2c99c395df76a3fa",
  "kind": "def",
  "lexical_name": "elabMetaIf",
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
  "slug": "elabmetaif--b5f1fbc4602f004d5480d5d5",
  "source": {
    "blob": "f7e606d6357e4a6cc4300d83d38fe13f6486a046",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant46ed5baa904c6646136a2a716fcce5179e8112e64a018ce24a8944bdccc37d2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5f1fbc4602f004d5480d5d5eea82e6c2f28ae32e360b972e138a067ee129900",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant46ed5baa904c6646136a2a716fcce5179e8112e64a018ce24a8944bdccc37d2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e26c970c226c2fad966decc072881e59beaeb4583d4b8c8b2c99c395df76a3fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabMetaIf : CommandElab := fun stx => do
  let `(meta if $c then $t $[else $e?]?) := stx
    | throwErrorAt stx "ill-formed meta if command"
  let c ← withRef c <| runTermElabM fun _ =>
    unsafe evalTerm Bool (toTypeExpr Bool) c .unsafe
  if c then
    let cmd := mkNullNode (expandCmdDo t)
    withMacroExpansion (← getRef) cmd <| elabCommand cmd
  else if let some e := e? then
    let cmd := mkNullNode (expandCmdDo e)
    withMacroExpansion (← getRef) cmd <| elabCommand cmd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant46ed5baa904c6646136a2a716fcce5179e8112e64a018ce24a8944bdccc37d2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant46ed5baa904c6646136a2a716fcce5179e8112e64a018ce24a8944bdccc37d2e.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7e606d6357e4a6cc4300d83d38fe13f6486a046` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
