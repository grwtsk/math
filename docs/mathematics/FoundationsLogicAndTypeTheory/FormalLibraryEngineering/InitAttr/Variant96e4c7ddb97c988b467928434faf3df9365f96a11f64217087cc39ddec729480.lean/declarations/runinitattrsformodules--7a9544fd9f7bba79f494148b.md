# runInitAttrsForModules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d01c90760dfe8ebdff5c97428178c11baff89dc3d14423f95693a2629b7fd925",
  "kind": "def",
  "lexical_name": "runInitAttrsForModules",
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
  "slug": "runinitattrsformodules--7a9544fd9f7bba79f494148b",
  "source": {
    "blob": "85e2af84af2515ac600c17ff08f48ad42033b091",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 212,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a9544fd9f7bba79f494148b7909c75849380f9c75a3d3ede7d8cbb3d228e883",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d01c90760dfe8ebdff5c97428178c11baff89dc3d14423f95693a2629b7fd925`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def runInitAttrsForModules
    (env : Environment) (modIdxs : Array Nat) (opts : Options) : IO Unit := do
  if !(← isInitializerExecutionEnabled) then
    throw <| IO.userError "`enableInitializersExecution` must be run before reusing a `--incr-load` snapshot"
  for modIdx in modIdxs do
    if h : modIdx < env.header.modules.size then
      runInitAttrForMod env opts env.header.modules[modIdx] modIdx

/--
Returns the indices of modules in `env.header.modules` whose `regularInitAttr` has non-empty
entries. Computed at `--incr-(header-)save` time and consumed by `runInitAttrsForModules` on
`--incr-load`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85e2af84af2515ac600c17ff08f48ad42033b091` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
