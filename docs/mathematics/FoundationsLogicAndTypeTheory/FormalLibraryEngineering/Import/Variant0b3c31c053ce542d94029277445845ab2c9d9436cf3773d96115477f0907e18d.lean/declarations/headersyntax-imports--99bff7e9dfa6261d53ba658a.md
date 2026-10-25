# HeaderSyntax.imports

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a34d7c290c28a6c8351885f31d878ac12e476232b825e3a4560f95ceffca00b",
  "kind": "def",
  "lexical_name": "HeaderSyntax.imports",
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
  "slug": "headersyntax-imports--99bff7e9dfa6261d53ba658a",
  "source": {
    "blob": "5dbec270457e39333fcd6e630277a8a5ef24d997",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99bff7e9dfa6261d53ba658a6035db1d7731d4f2ec27dc32654d0ca9910b9136",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a34d7c290c28a6c8351885f31d878ac12e476232b825e3a4560f95ceffca00b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HeaderSyntax.imports (stx : HeaderSyntax) (includeInit : Bool := true) : Array Import :=
  match stx with
  | `(Parser.Module.header| $[module%$moduleTk]? $[prelude%$preludeTk]? $importsStx*) =>
    let imports := if preludeTk.isNone && includeInit then
        #[{ module := `Init : Import }, { module := `Init, isMeta := true : Import }]
      else #[]
    imports ++ importsStx.map fun
      | `(Parser.Module.import| $[public%$publicTk]? $[meta%$metaTk]? import $[all%$allTk]? $n) =>
        { module := n.getId, importAll := allTk.isSome
          isExported := publicTk.isSome || moduleTk.isNone
          isMeta := metaTk.isSome }
      | _ => unreachable!
  | _ => unreachable!

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0b3c31c053ce542d94029277445845ab2c9d9436cf3773d96115477f0907e18d.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dbec270457e39333fcd6e630277a8a5ef24d997` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
