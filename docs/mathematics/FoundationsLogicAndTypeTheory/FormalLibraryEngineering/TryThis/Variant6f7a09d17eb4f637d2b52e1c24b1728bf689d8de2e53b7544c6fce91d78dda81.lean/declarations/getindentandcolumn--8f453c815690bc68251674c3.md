# getIndentAndColumn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ac8918b3f3b7edd9d8c2c0bca7d2080c550a61bcc877297328be92713a533e2",
  "kind": "def",
  "lexical_name": "getIndentAndColumn",
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
  "slug": "getindentandcolumn--8f453c815690bc68251674c3",
  "source": {
    "blob": "35fee7894b51c2b3d6e1fb4865e9b3baa3d239e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 195,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant6f7a09d17eb4f637d2b52e1c24b1728bf689d8de2e53b7544c6fce91d78dda81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f453c815690bc68251674c373f7dc585b0f3faf828d2dfe24ddf7c83d852b7e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant6f7a09d17eb4f637d2b52e1c24b1728bf689d8de2e53b7544c6fce91d78dda81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ac8918b3f3b7edd9d8c2c0bca7d2080c550a61bcc877297328be92713a533e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getIndentAndColumn (map : FileMap) (range : Lean.Syntax.Range) : Nat × Nat :=
  let rangeStart := map.source.pos! range.start
  let start := findLineStart rangeStart
  let body := (map.source.slice! start rangeStart).find (fun c => c != ' ') |>.str.offset
  (start.offset.byteDistance body, start.offset.byteDistance range.start)
where
  findLineStart {s : String} (p : s.Pos) : s.Pos :=
    p.revFind? '\n' |>.map (·.next!) |>.getD s.startPos

/--
An option allowing the user to customize the ideal input width. Defaults to 100.
This option controls output format when
the output is intended to be copied back into a lean file -/
register_builtin_option format.inputWidth : Nat := {
  /- The default maximum width of an ideal line in source code. -/
  defValue := 100
  descr := "ideal input width"
}

/-- Get the input width specified in the options -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant6f7a09d17eb4f637d2b52e1c24b1728bf689d8de2e53b7544c6fce91d78dda81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant6f7a09d17eb4f637d2b52e1c24b1728bf689d8de2e53b7544c6fce91d78dda81.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35fee7894b51c2b3d6e1fb4865e9b3baa3d239e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
