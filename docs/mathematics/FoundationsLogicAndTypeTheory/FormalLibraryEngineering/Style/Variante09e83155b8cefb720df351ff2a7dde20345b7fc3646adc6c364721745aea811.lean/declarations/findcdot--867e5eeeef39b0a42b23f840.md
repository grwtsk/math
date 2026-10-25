# findCDot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:209ddd2fd8fd416f668e03b67c2e26129ea81e6ed03cd0fb3644a42b69135e52",
  "kind": "def",
  "lexical_name": "findCDot",
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
  "slug": "findcdot--867e5eeeef39b0a42b23f840",
  "source": {
    "blob": "5766cab811a487284346a74997e16694b2a3d132",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 201,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:867e5eeeef39b0a42b23f8403504faa1c166cd267f2739c78c77d0e035a1a559",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:209ddd2fd8fd416f668e03b67c2e26129ea81e6ed03cd0fb3644a42b69135e52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findCDot : Syntax → Array Syntax
  | stx@(.node _ kind args) =>
    let dargs := (args.map findCDot).flatten
    match kind with
      | ``Lean.Parser.Term.cdot | ``cdotTk => dargs.push stx
      | _ =>  dargs
  |_ => #[]

/-- `unwanted_cdot stx` returns an array of syntax atoms within `stx`
corresponding to `cdot`s that are not written with the character `·`.
This is precisely what the `cdot` linter flags.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5766cab811a487284346a74997e16694b2a3d132` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
