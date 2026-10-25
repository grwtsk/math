# getImportIds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5ffc0568a81246f30c3f5f5daa4f8e62f3ea2b0ac1e7227ca4934447ab34fc6",
  "kind": "def",
  "lexical_name": "getImportIds",
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
  "slug": "getimportids--c6e7c66a106d92d2b2d7de14",
  "source": {
    "blob": "a86b3801096f9e9e4ccbc14812656a5ab5953baf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6e7c66a106d92d2b2d7de14a7b04181324caae7cc2805a9dd55ac5c352bb8f8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5ffc0568a81246f30c3f5f5daa4f8e62f3ea2b0ac1e7227ca4934447ab34fc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getImportIds (s : Syntax) : Array Syntax :=
  let rest : Array Syntax := (s.getArgs.map getImportIds).flatten
  if let `(Lean.Parser.Module.import| import $n) := s then
    rest.push n
  else
    rest

/--
`parseUpToHere pos post` takes as input `pos : String.Pos` and the optional `post : String`.
It parses the current file from the beginning until `pos`, appending `post` at the end.
It returns a syntax node of kind `Lean.Parser.Module.module`.
The option of appending a final string to the text gives more control to avoid syntax errors,
for instance in the presence of `#guard_msgs in` or `set_option ... in`.

Note that this parsing will *not* be successful on every file.  However, if the linter is
parsing the file linearly, it will only need to parse
* the imports (that are always parseable) and
* the first non-import command that is supposed to be a module doc-string (so again always
  parseable).

In conclusion, either the parsing is successful, and the linter can continue with its analysis,
or the parsing is not successful and the linter will flag a missing module doc-string!
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a86b3801096f9e9e4ccbc14812656a5ab5953baf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
