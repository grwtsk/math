# PartialBuildKey.fetchInCoreAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d1c84583581568e11366296a9490029584774df133911a5a01d17709236d9fee",
  "kind": "def",
  "lexical_name": "PartialBuildKey.fetchInCoreAux",
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
  "slug": "partialbuildkey-fetchincoreaux--ab1d44e03198def03dc47a67",
  "source": {
    "blob": "f363215c258881582a708157db636e0a13f1ee49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fetch/Variantaff9fa4e00f22e45f464a084f4c83d303a1ae65fa5925379d31b261398b7d432.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab1d44e03198def03dc47a67c278fdfc984d996637ca68f90da9ce25212d9160",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fetch/Variantaff9fa4e00f22e45f464a084f4c83d303a1ae65fa5925379d31b261398b7d432.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d1c84583581568e11366296a9490029584774df133911a5a01d17709236d9fee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PartialBuildKey.fetchInCoreAux
  (self : PartialBuildKey) (facetless : Bool := false)
: FetchM ((key : BuildKey) × Job (BuildData key)) := do
  match self with
  | .module modName =>
    let some mod ← findModule? modName
      | error s!"invalid target '{root}': module '{modName}' not found in workspace"
    return ⟨.packageModule mod.pkg.keyName modName, cast (by simp) <| Job.pure mod⟩
  | .package pkgName =>
    let pkg ← resolveTargetPackageD pkgName
    return ⟨.package pkg.keyName, cast (by simp) <| Job.pure pkg⟩
  | .packageModule pkgName modName =>
    let pkg ← resolveTargetPackageD pkgName
    let some mod := pkg.findTargetModule? modName
      | error s!"invalid target '{root}': module target '{modName}' not found in package '{pkg.prettyName}'"
    return ⟨.packageModule pkg.keyName modName, cast (by simp) <| Job.pure mod⟩
  | .packageTarget pkgName target =>
    let pkg ← resolveTargetPackageD pkgName
    let key := BuildKey.packageTarget pkg.keyName target
    if facetless then
      if let some decl := pkg.findTargetDecl? target then
        if h : decl.kind.isAnonymous then
          let job ← ( pkg.target target).fetch
          return ⟨key, cast (by simp) job⟩
        else
          let facet := decl.kind.str "default"
          let tgt := decl.mkConfigTarget pkg
          let tgt := cast (by simp [decl.target_eq_type h]) tgt
          let info := BuildInfo.facet key decl.kind tgt facet
          return ⟨key.facet facet, ← info.fetch⟩
      else
        error s!"invalid target '{root}': target not found in package '{pkg.prettyName}'"
    else
      let job ← (pkg.target target).fetch
      return ⟨key, cast (by simp) job⟩
  | .facet target shortFacet =>
      let ⟨key, job⟩ ← PartialBuildKey.fetchInCoreAux target false
      let kind := job.kind
      if h : kind.isAnonymous then
        error s!"invalid target '{root}': targets of opaque data kinds do not support facets"
      else
        let shortFacet := if shortFacet.isAnonymous then `default else shortFacet
        have facet := kind ++ shortFacet
        let some cfg := (← getWorkspace).findFacetConfig? facet
          | error s!"invalid target '{root}': unknown facet '{facet}'"
        let job ← (job.cast h).bindM (kind := cfg.outKind) fun data =>
          fetch (.facet target kind data facet)
        return ⟨.facet target facet, cast (by simp) job⟩
where
  @[inline] resolveTargetPackageD  (name : Name) : FetchM Package := do
    match name with
    | .anonymous =>
      return defaultPkg
    | p@(.num ..) =>
      let some pkg ← findPackageByKey? p
        | error s!"invalid target '{root}': package '{name}' not found in workspace"
      return pkg
    | p =>
      let some pkg ← findPackageByName? p
        | error s!"invalid target '{root}': package '{name}' not found in workspace"
      return pkg

/-- **For internal use only.** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fetch/Variantaff9fa4e00f22e45f464a084f4c83d303a1ae65fa5925379d31b261398b7d432.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fetch/Variantaff9fa4e00f22e45f464a084f4c83d303a1ae65fa5925379d31b261398b7d432.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f363215c258881582a708157db636e0a13f1ee49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
