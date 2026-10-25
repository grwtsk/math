# LeanLib.recBuildShared

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cfa07e4841086f8551a0bac0bc30f6fa132d283e188f96b1ff0d00bfa2aa6c09",
  "kind": "def",
  "lexical_name": "LeanLib.recBuildShared",
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
  "slug": "leanlib-recbuildshared--b6fb9ed946ccfb2458ed9978",
  "source": {
    "blob": "4ad16e148ab351fde2ebc41640a9ec221bcf5ce0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6fb9ed946ccfb2458ed9978ec3b1a9a543c20fa2a20cf476f62db36ac5d5c24",
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

Occurrence: `declaration:cfa07e4841086f8551a0bac0bc30f6fa132d283e188f96b1ff0d00bfa2aa6c09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LeanLib.recBuildShared (self : LeanLib) : FetchM (Job Dynlib) := do
  withRegisterJob s!"{self.name}:shared" <| withCurrPackage self.pkg do
  let mods ← (← self.modules.fetch).await
  let objJobs ← mods.flatMapM fun mod =>
    mod.nativeFacets true |>.mapM (·.fetch mod)
  let objJobs ← self.moreLinkObjs.foldlM (init := objJobs)
    (·.push <$> ·.fetchIn self.pkg)
  let libJobs ← id do
    -- Fetch dependency dynlibs
    -- for situations that need them (see `Dynlib.deps`)
    let imps ← mods.foldlM (init := OrdModuleSet.empty) fun imps mod => do
      return imps.appendArray (← (← mod.transImports.fetch).await)
    let s := (NameSet.empty.insert self.name, #[])
    let (_, jobs) ← imps.foldlM (init := s) fun (libs, jobs) imp => do
      if libs.contains imp.lib.name then
        return (libs, jobs)
      else
        let jobs ← jobs.push <$> imp.lib.shared.fetch
        return (libs.insert imp.lib.name, jobs)
    let jobs ← self.moreLinkLibs.foldlM
      (·.push <$> ·.fetchIn self.pkg) jobs
    let jobs ← self.pkg.externLibs.foldlM
      (·.push <$> ·.dynlib.fetch) jobs
    return jobs
  buildLeanSharedLib self.libName self.sharedLibFile objJobs libJobs
    self.weakLinkArgs self.linkArgs self.isPlugin

/-- The `LibraryFacetConfig` for the builtin `sharedFacet`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ad16e148ab351fde2ebc41640a9ec221bcf5ce0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
