# formatStxAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db74a878457f7967837d737622cf883677cbd1c2a5096b8b554fe8b42ff35756",
  "kind": "def",
  "lexical_name": "formatStxAux",
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
  "slug": "formatstxaux--52299145cfc9e01aa35c5f5d",
  "source": {
    "blob": "4965480f0039826531522f1c3841ba031567376c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantfd4a889bc742f87efe573cbdce9ab1342ea5830de6168745f23659d474112efc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52299145cfc9e01aa35c5f5ded10efdda12c66a18dd0fe90aaf8460f7ccec759",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantfd4a889bc742f87efe573cbdce9ab1342ea5830de6168745f23659d474112efc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db74a878457f7967837d737622cf883677cbd1c2a5096b8b554fe8b42ff35756`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def formatStxAux (maxDepth : Option Nat) (showInfo : Bool) (depth : Nat) : Syntax → Format
  | atom info val        => formatInfo showInfo info <| format (repr val)
  | ident info _ val _   => formatInfo showInfo info <| format "`" ++ format val
  | missing              => "<missing>"
  | node info kind args  =>
    let depth := depth + 1;
    if kind == nullKind then
      sbracket <|
        if args.size > 0 && depth > maxDepth.getD depth then
          ".."
        else
          joinSep (args.toList.map (formatStxAux maxDepth showInfo depth)) line
    else
      let shorterName := kind.replacePrefix `Lean.Parser Name.anonymous
      let header      := formatInfo showInfo info <| format shorterName
      let body : List Format :=
        if args.size > 0 && depth > maxDepth.getD depth then
          [".."]
        else
          args.toList.map (formatStxAux maxDepth showInfo depth)
      paren <| joinSep (header :: body) line

/-- Pretty print the given syntax `stx` as a `Format`.
Nodes deeper than `maxDepth` are omitted.
Setting the `showInfo` flag will also print the `SourceInfo` for each node. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantfd4a889bc742f87efe573cbdce9ab1342ea5830de6168745f23659d474112efc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantfd4a889bc742f87efe573cbdce9ab1342ea5830de6168745f23659d474112efc.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4965480f0039826531522f1c3841ba031567376c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
