# LeanLib.recCollectLocalModules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:151f3df00175b1dc92904a7e23236844429da69bb3671a6b20e84dccb89d5875",
  "kind": "def",
  "lexical_name": "LeanLib.recCollectLocalModules",
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
  "slug": "leanlib-reccollectlocalmodules--7389a7cb065510a488be9558",
  "source": {
    "blob": "4ad16e148ab351fde2ebc41640a9ec221bcf5ce0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7389a7cb065510a488be9558fc5cc5423fa294ba0ad8b66ce3c79f67a0a82317",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:151f3df00175b1dc92904a7e23236844429da69bb3671a6b20e84dccb89d5875`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def LeanLib.recCollectLocalModules
  (self : LeanLib) : FetchM (Job (Array Module))
:= ensureJob do
  let mut col : ModuleCollection := {}
  for mod in (← self.getModuleArray) do
    col ← go mod col
  if col.hasErrors then
    -- This is not considered a fatal error because we want the modules
    -- built to provide better error categorization in the monitor.
    logError s!"{self.name}: some modules have bad imports"
  return Job.pure col.mods
where
  go root col := do
    let mut col := col
    unless col.modSet.contains root do
      col := {col with modSet := col.modSet.insert root}
      -- We discard errors here as they will be reported later when the module is built.
      let some imps ← (← root.imports.fetch).wait?
        | return {col with hasErrors := true}
      for mod in imps do
        if mod.lib.name = self.name then
          col ← go mod col
      col := {col with mods := col.mods.push root}
    return col

/-- The `LibraryFacetConfig` for the builtin `modulesFacet`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ad16e148ab351fde2ebc41640a9ec221bcf5ce0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
