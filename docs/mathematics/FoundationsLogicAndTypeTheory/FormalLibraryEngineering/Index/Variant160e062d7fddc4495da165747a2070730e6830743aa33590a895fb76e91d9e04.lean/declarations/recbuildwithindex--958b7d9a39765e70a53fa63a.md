# recBuildWithIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09f0df7f385873e61eb2707722acd31f15cbf9692bc123a5abe3d4689343a2e4",
  "kind": "def",
  "lexical_name": "recBuildWithIndex",
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
  "slug": "recbuildwithindex--958b7d9a39765e70a53fa63a",
  "source": {
    "blob": "ba5c12f451a918754bc5e3c1cc32eb21f5390a50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Index/Variant160e062d7fddc4495da165747a2070730e6830743aa33590a895fb76e91d9e04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:958b7d9a39765e70a53fa63a8ca59db030cf9ca00db47fcaf0665b4fd8c38ca3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Index/Variant160e062d7fddc4495da165747a2070730e6830743aa33590a895fb76e91d9e04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09f0df7f385873e61eb2707722acd31f15cbf9692bc123a5abe3d4689343a2e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def recBuildWithIndex (info : BuildInfo) : FetchM (Job (BuildData info.key)) :=
  match info with
  | .target pkg target => do
    if let some decl := pkg.findTargetDecl? target then
      if h : decl.kind.isAnonymous then
        let key := BuildKey.packageTarget pkg.keyName target
        fetchOrCreate key do (decl.targetConfig h).fetchFn pkg
      else
        let kind := ⟨decl.kind, by simp [decl.target_eq_type h]⟩
        let job := Job.pure (kind := kind) <| decl.mkConfigTarget pkg
        return cast (by simp [decl.data_eq_target h]) job
    else
      error s!"invalid target '{info}': target not found in package"
  | .facet target kind data facet => do
    if let some config := (← getWorkspace).findFacetConfig? facet then
      if h : config.kind = kind then
        let recFetch := config.fetchFn <| cast (by simp [h]) data
        if config.memoize then
          let key := BuildKey.facet target facet
          fetchOrCreate key recFetch
        else
          recFetch
      else
        error s!"invalid target '{info}': \
          input target is of kind '{kind}', but facet expects '{config.kind}'"
    else
      error s!"invalid target '{info}': unknown facet '{facet}'"

/-- Recursive build function with memoization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Index/Variant160e062d7fddc4495da165747a2070730e6830743aa33590a895fb76e91d9e04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Index/Variant160e062d7fddc4495da165747a2070730e6830743aa33590a895fb76e91d9e04.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba5c12f451a918754bc5e3c1cc32eb21f5390a50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
