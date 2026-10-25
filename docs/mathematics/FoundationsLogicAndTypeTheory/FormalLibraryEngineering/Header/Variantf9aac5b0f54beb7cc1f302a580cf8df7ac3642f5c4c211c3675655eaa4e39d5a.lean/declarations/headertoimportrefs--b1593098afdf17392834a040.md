# headerToImportRefs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03c37941594d897a4409922a1504f4c2d893a92a7f4c371084ce77836dd8efbb",
  "kind": "def",
  "lexical_name": "headerToImportRefs",
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
  "slug": "headertoimportrefs--b1593098afdf17392834a040",
  "source": {
    "blob": "0f832dc1c07e9c9806c0a72ebf47a8ec88c57c8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 258,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantf9aac5b0f54beb7cc1f302a580cf8df7ac3642f5c4c211c3675655eaa4e39d5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1593098afdf17392834a040de32f8773d402c308b9217053f8b72b843688a3e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantf9aac5b0f54beb7cc1f302a580cf8df7ac3642f5c4c211c3675655eaa4e39d5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03c37941594d897a4409922a1504f4c2d893a92a7f4c371084ce77836dd8efbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def headerToImportRefs (header : TSyntax ``Parser.Module.header) : Array ImportRef :=
  match header with
  | `(Parser.Module.header| $[module%$moduleTk]? $[prelude]? $imports*) =>
    imports.filterMap fun
      | stx@`(Parser.Module.import|
          $[public%$publicTk]? $[meta%$metaTk]? import $[all%$allTk]? $n:ident) =>
        some {
          module := n.getId
          importAll := allTk.isSome
          isExported := publicTk.isSome || moduleTk.isNone
          isMeta := metaTk.isSome
          stx := ⟨stx⟩ }
      | _ => none
  | _ => #[]

/-- Returns the `module` token from header syntax, if there is one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantf9aac5b0f54beb7cc1f302a580cf8df7ac3642f5c4c211c3675655eaa4e39d5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantf9aac5b0f54beb7cc1f302a580cf8df7ac3642f5c4c211c3675655eaa4e39d5a.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f832dc1c07e9c9806c0a72ebf47a8ec88c57c8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
