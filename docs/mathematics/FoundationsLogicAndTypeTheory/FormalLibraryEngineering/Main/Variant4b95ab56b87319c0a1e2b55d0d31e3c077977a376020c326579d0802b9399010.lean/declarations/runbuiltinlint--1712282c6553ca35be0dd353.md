# runBuiltinLint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c84e5d5efa7ce20ec3e5ee1b539fa27d5cc3055dc9f6ac5f863555f0e629e3d0",
  "kind": "def",
  "lexical_name": "runBuiltinLint",
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
  "slug": "runbuiltinlint--1712282c6553ca35be0dd353",
  "source": {
    "blob": "7351b888130b276772224890d37d069298d4fddd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1056,
    "line": 1030,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant4b95ab56b87319c0a1e2b55d0d31e3c077977a376020c326579d0802b9399010.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1712282c6553ca35be0dd3531fee3b66d297b3b708d932566078c53dc681c271",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant4b95ab56b87319c0a1e2b55d0d31e3c077977a376020c326579d0802b9399010.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c84e5d5efa7ce20ec3e5ee1b539fa27d5cc3055dc9f6ac5f863555f0e629e3d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1030–1056.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def runBuiltinLint
    (opts : LakeOptions) (ws : Workspace) (specifiedMods : Array Lean.Name)
    : CliM UInt32 := do
  let mods := if specifiedMods.isEmpty then ws.defaultTargetRoots else specifiedMods
  if mods.isEmpty then
    error "no modules specified and there are no applicable default targets"
  let args := opts.builtinLint
  let args := {args with mods, srcSearchPath := ws.augmentedLeanSrcPath}
  let specs ← parseTargetSpecs ws (mods.map (s!"+{·}") |>.toList)
  let lintOpts := BuiltinLint.leanOptOverrides args
  let overrides : Lean.NameMap Lean.LeanOptions :=
    if lintOpts.values.isEmpty then
      {}
    else
      mods.foldl (init := ({} : Lean.NameMap Lean.LeanOptions))
        fun m modName =>
          match ws.findTargetModule? modName with
          | some mod => m.insert mod.pkg.baseName lintOpts
          | none     => m
  let buildCfg := { mkBuildConfig opts with
    outLv := .error
    leanOptOverrides := overrides
  }
  ws.runBuild (buildSpecs specs) buildCfg
  Lean.searchPathRef.set ws.augmentedLeanPath
  BuiltinLint.run args

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant4b95ab56b87319c0a1e2b55d0d31e3c077977a376020c326579d0802b9399010.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant4b95ab56b87319c0a1e2b55d0d31e3c077977a376020c326579d0802b9399010.lean#L1030).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7351b888130b276772224890d37d069298d4fddd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
