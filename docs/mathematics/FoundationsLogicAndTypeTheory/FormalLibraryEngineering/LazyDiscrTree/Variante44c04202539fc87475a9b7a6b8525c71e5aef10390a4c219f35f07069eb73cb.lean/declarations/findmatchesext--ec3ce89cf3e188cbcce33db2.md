# findMatchesExt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d668fab3469015a76100c89217088cd6b7ab15d50b3418d28d2bb4e2e005997d",
  "kind": "def",
  "lexical_name": "findMatchesExt",
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
  "slug": "findmatchesext--ec3ce89cf3e188cbcce33db2",
  "source": {
    "blob": "c26b2f62a5e0c9a3df2b82e57609fa8c991a160f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1181,
    "line": 1158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyDiscrTree/Variante44c04202539fc87475a9b7a6b8525c71e5aef10390a4c219f35f07069eb73cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec3ce89cf3e188cbcce33db23923c0680b9b23734f9bcb396620c43830a78f12",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyDiscrTree/Variante44c04202539fc87475a9b7a6b8525c71e5aef10390a4c219f35f07069eb73cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d668fab3469015a76100c89217088cd6b7ab15d50b3418d28d2bb4e2e005997d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1158–1181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findMatchesExt
    (moduleTreeRef : ModuleDiscrTreeRef α)
    (ref : IO.Ref (Option (LazyDiscrTree α)))
    (addEntry : Name → AsyncConstantInfo → MetaM (Array (InitEntry α)))
    (droppedKeys : List (List LazyDiscrTree.Key) := [])
    (constantsPerTask : Nat := 1000)
    (droppedEntriesRef : Option (IO.Ref (Option (Array α))) := none)
    (adjustResult : Nat → α → β)
    (ty : Expr) : MetaM (Array β) := do
  let moduleMatches ← findModuleMatches moduleTreeRef ty
  let importMatches ← findImportMatches ref addEntry droppedKeys constantsPerTask droppedEntriesRef ty
  return Array.mkEmpty (moduleMatches.size + importMatches.size)
          |> moduleMatches.appendResultsAux (f := adjustResult)
          |> importMatches.appendResultsAux (f := adjustResult)

/--
`findMatches` searches for entries in a lazily initialized discriminator tree.

* `ref` is a process-global `IO.Ref` for caching the import lazy discriminator tree.
* `addEntry` is the function for creating discriminator tree entries from constants.
* `droppedKeys` contains keys we do not want to consider when searching for matches.
  It is used for dropping very general keys.
* `droppedEntriesRef` optionally stores entries dropped from the tree for later use.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyDiscrTree/Variante44c04202539fc87475a9b7a6b8525c71e5aef10390a4c219f35f07069eb73cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyDiscrTree/Variante44c04202539fc87475a9b7a6b8525c71e5aef10390a4c219f35f07069eb73cb.lean#L1158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c26b2f62a5e0c9a3df2b82e57609fa8c991a160f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
