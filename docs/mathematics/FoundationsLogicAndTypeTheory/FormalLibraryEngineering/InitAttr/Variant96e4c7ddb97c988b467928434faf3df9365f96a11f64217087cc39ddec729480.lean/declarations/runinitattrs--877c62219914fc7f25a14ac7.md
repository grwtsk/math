# runInitAttrs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:071f8f23ab60b3399b1cfe6b965fcb1ed622f900e628920f6a4d7cc06b7ad538",
  "kind": "def",
  "lexical_name": "runInitAttrs",
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
  "slug": "runinitattrs--877c62219914fc7f25a14ac7",
  "source": {
    "blob": "85e2af84af2515ac600c17ff08f48ad42033b091",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 199,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:877c62219914fc7f25a14ac798ad6a160bcc381cc2edb036d3f41f8e18b2d031",
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

Occurrence: `declaration:071f8f23ab60b3399b1cfe6b965fcb1ed622f900e628920f6a4d7cc06b7ad538`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private unsafe def runInitAttrs (env : Environment) (opts : Options) : IO Unit := do
  if !(← isInitializerExecutionEnabled) then
    throw <| IO.userError "`enableInitializersExecution` must be run before calling `importModules (loadExts := true)`"
  for mod in env.header.modules, modIdx in 0...* do
    runInitAttrForMod env opts mod modIdx

/--
Like `runInitAttrs`, but walks only the given module indices. Used by `--incr-load`: the indices
identify modules with non-empty `regularInitAttr` entries, so the loader skips page-faulting
dep-region pages for modules without `[init]` work. Assumes the host process has already
initialized the saved env's native `builtin_initialize` side effects (typically because the
statically-linked Lean runtime ran them at startup) and skips `runModInit` for the omitted modules.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85e2af84af2515ac600c17ff08f48ad42033b091` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
