# runDeferredChecks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ca2d36e0df6f855d038faf38079129eb7e90d72c36ce64b3cc412e9b88e6cdd",
  "kind": "def",
  "lexical_name": "runDeferredChecks",
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
  "slug": "rundeferredchecks--4f4d6f36a85a117347ae858c",
  "source": {
    "blob": "6cb1b36d0fda483526aa7963db9e9f662a68b605",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 180,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinLint/Variant3bf52487bde9527a379be24446f2af0dc0d0ae8fe1f2599a7531f064601bfe2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f4d6f36a85a117347ae858c5886773231163769ada56a5f9bace4ca17afc410",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinLint/Variant3bf52487bde9527a379be24446f2af0dc0d0ae8fe1f2599a7531f064601bfe2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ca2d36e0df6f855d038faf38079129eb7e90d72c36ce64b3cc412e9b88e6cdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def runDeferredChecks (args : Args) (linterOpts : Linter.LinterOptions) (sp : SearchPath)
    (env : Environment) (pkgRoot : Name) (docCheckedModules : NameSet) :
    IO DeferredCheckResults := do
  let selected :=
    if args.lintOnly then
      Lean.Linter.isLinterEnabledByOptions linter.doc.deferred.name linterOpts
    else
      Lean.Linter.getLinterValue linter.doc.deferred linterOpts
  unless selected do
    let outcome := if args.recordExceptions then .recorded #[] false else .reported false
    return { outcome, checkedModules := docCheckedModules }
  let (outcome, _) ←
      CoreM.toIO (ctx := { fileName := "", fileMap := default }) (s := { env }) do
    let failures ← Lean.Doc.DeferredCheck.run
      (fun m => pkgRoot.isPrefixOf m && !docCheckedModules.contains m)
      (shouldCheck := fun c =>
        return Linter.getLinterValue linter.doc.deferred (← c.options.toLinterOptions))
    if args.recordExceptions then
      let mut recs : Array ExceptionRecord := #[]
      let mut unlocated := false
      for (failMod, c, _) in failures do
        match ← deferredSitePos? failMod c.site with
        | some pos =>
          match ← sp.findWithExt "lean" failMod with
          | some file =>
            recs := recs.push { file, pos, option := linter.doc.deferred.name }
          | none =>
            IO.eprintln s!"\
              warning: could not locate source file for `{failMod}` \
              to record a `{linter.doc.deferred.name}` exception"
            unlocated := true
        | none =>
          IO.eprintln s!"\
            warning: could not determine the position of {describeSite c.site} in `{failMod}`; \
            cannot record a `{linter.doc.deferred.name}` exception"
          unlocated := true
      return DeferredCheckOutcome.recorded recs unlocated
    else
      for (failMod, c, msg) in failures do
        let context := if c.sourceString.isEmpty then "" else s!" ({c.sourceString})"
        match ← sp.findWithExt "lean" failMod with
        | some file =>
          IO.eprintln s!"{file}: error: in {describeSite c.site}{context}: {← msg.toString}"
        | none =>
          IO.eprintln s!"error: in module `{failMod}`, in {describeSite c.site}{context}: {← msg.toString}"
      return DeferredCheckOutcome.reported !failures.isEmpty
  -- Mark this target's transitive imports that are in the package so later targets don't re-run
  -- their checks.
  let mut checkedModules := docCheckedModules
  for m in env.header.moduleNames do
    if pkgRoot.isPrefixOf m then
      checkedModules := checkedModules.insert m
  return { outcome, checkedModules }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinLint/Variant3bf52487bde9527a379be24446f2af0dc0d0ae8fe1f2599a7531f064601bfe2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinLint/Variant3bf52487bde9527a379be24446f2af0dc0d0ae8fe1f2599a7531f064601bfe2e.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cb1b36d0fda483526aa7963db9e9f662a68b605` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
