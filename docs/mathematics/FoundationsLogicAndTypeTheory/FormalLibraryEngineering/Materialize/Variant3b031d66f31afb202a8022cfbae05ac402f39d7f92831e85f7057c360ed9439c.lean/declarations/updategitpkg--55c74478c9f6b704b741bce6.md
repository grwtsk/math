# updateGitPkg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64b0a4ca8195bff81f024e8a19cceb2f1bda3da9f294d077f09e94a7f7a9b83f",
  "kind": "def",
  "lexical_name": "updateGitPkg",
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
  "slug": "updategitpkg--55c74478c9f6b704b741bce6",
  "source": {
    "blob": "25453738b4395e586ca7d246d82ed76a70cdc1ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant3b031d66f31afb202a8022cfbae05ac402f39d7f92831e85f7057c360ed9439c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55c74478c9f6b704b741bce6b22413b01adc8cae19cbc6a7c0a7a48ad2a09305",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant3b031d66f31afb202a8022cfbae05ac402f39d7f92831e85f7057c360ed9439c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64b0a4ca8195bff81f024e8a19cceb2f1bda3da9f294d077f09e94a7f7a9b83f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def updateGitPkg
  (name : String) (repo : GitRepo) (rev? : Option GitRev)
: LoggerIO PUnit := do
  let rev ← repo.findRemoteRevision rev?
  if (← repo.getHeadRevision) = rev then
    if (← repo.hasDiff) then
      logWarning s!"{name}: repository '{repo.dir}' has local changes"
  else
    logInfo s!"{name}: checking out revision '{rev}'"
    repo.checkoutDetach rev
    -- Remove untracked files from tracked folders the package.
    -- This helps ensure reproducible behavior by removing leftovers.
    -- For example, Lake will trust leftover `.hash` files unconditionally,
    -- so stale ones from the previous revision cause incorrect trace computations.
    repo.clean

/-- Clone the Git package as {lean}`repo`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant3b031d66f31afb202a8022cfbae05ac402f39d7f92831e85f7057c360ed9439c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant3b031d66f31afb202a8022cfbae05ac402f39d7f92831e85f7057c360ed9439c.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25453738b4395e586ca7d246d82ed76a70cdc1ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
