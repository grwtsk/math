# findModuleMatches

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64aa2fcd77f515dfc6536c17dfae7dcc78e093de41a70ade1e029d4ac36a2521",
  "kind": "def",
  "lexical_name": "findModuleMatches",
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
  "slug": "findmodulematches--67c2e4fa05ee65ea570c7b35",
  "source": {
    "blob": "42fc5ce3b10306aea3f87ef2590e42b44ba52393",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 141,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variant334495cad5722795a7421864eedc5494729bf32654cb886d0f08388895e0eb51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67c2e4fa05ee65ea570c7b35e486930428a7c88626fd903293123b6f9e073f2c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variant334495cad5722795a7421864eedc5494729bf32654cb886d0f08388895e0eb51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64aa2fcd77f515dfc6536c17dfae7dcc78e093de41a70ade1e029d4ac36a2521`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findModuleMatches (moduleRef : ModuleDiscrTreeRef α) (ty : Expr) : MetaM (MatchResult α) := do
  profileitM Exception  "RefinedDiscrTree local search" (← getOptions) do
    let discrTree ← moduleRef.ref.get
    let (localCandidates, localTree) ← getMatch discrTree ty false false
    moduleRef.ref.set localTree
    return localCandidates

/--
`findMatches` combines `findImportMatches` and `findModuleMatches`.

* `ext` should be an environment extension with an `IO.Ref` for caching the `RefinedDiscrTree`.
* `addEntry` is the function for creating `RefinedDiscrTree` entries from constants.
* `ty` is the expression type.
* `constantsPerTask` is the number of constants in imported modules to be used for each
  new task.
* `capacityPerTask` is the initial capacity of the `HashMap` at the root of the
  `RefinedDiscrTree` for each new task.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variant334495cad5722795a7421864eedc5494729bf32654cb886d0f08388895e0eb51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variant334495cad5722795a7421864eedc5494729bf32654cb886d0f08388895e0eb51.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42fc5ce3b10306aea3f87ef2590e42b44ba52393` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
