# toSyntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:adffa1a02ee469865a81b16197781bb53aafc3148b91a9cc2aac0fb7a7ed4d57",
  "kind": "def",
  "lexical_name": "toSyntax",
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
  "slug": "tosyntax--31426933bfad9b19db8cf1b9",
  "source": {
    "blob": "abd960abeda6005b98bdb695ea71798fb6d11fed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Varianta62ece2dbc0782f383afe9bd3bab3b9fffe5b8c42d3fbf4f9d497a326eb773dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31426933bfad9b19db8cf1b9f55720d36bd94b843d0c576b478a4fd85b4033b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Varianta62ece2dbc0782f383afe9bd3bab3b9fffe5b8c42d3fbf4f9d497a326eb773dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:adffa1a02ee469865a81b16197781bb53aafc3148b91a9cc2aac0fb7a7ed4d57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toSyntax (s pattern : String) (offset : String.Pos.Raw := 0) : Syntax :=
  let beg := ((s.splitOn pattern).getD 0 "").rawEndPos.offsetBy offset
  let fin := (((s.splitOn pattern).getD 0 "") ++ pattern).rawEndPos.offsetBy offset
  mkAtomFrom (.ofRange ⟨beg, fin⟩) pattern

/-- Return if `line` looks like a correct authors line in a copyright header.

The `offset` input is used to shift the position information of the `Syntax` that the command
produces.
`authorsLineChecks` computes a position for its warning *relative to `line`*.
The `offset` input passes on the starting position of `line` in the whole file.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Varianta62ece2dbc0782f383afe9bd3bab3b9fffe5b8c42d3fbf4f9d497a326eb773dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Varianta62ece2dbc0782f383afe9bd3bab3b9fffe5b8c42d3fbf4f9d497a326eb773dc.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abd960abeda6005b98bdb695ea71798fb6d11fed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
