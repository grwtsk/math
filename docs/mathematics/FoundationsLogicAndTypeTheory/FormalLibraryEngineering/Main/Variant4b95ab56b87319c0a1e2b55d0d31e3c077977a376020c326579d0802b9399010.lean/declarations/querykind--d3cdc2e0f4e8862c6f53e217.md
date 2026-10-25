# queryKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8afcd9169b628aba12357dfb725e72937c86788c6a9e8ae97979251136b76e3",
  "kind": "def",
  "lexical_name": "queryKind",
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
  "slug": "querykind--d3cdc2e0f4e8862c6f53e217",
  "source": {
    "blob": "7351b888130b276772224890d37d069298d4fddd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 954,
    "line": 935,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant4b95ab56b87319c0a1e2b55d0d31e3c077977a376020c326579d0802b9399010.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3cdc2e0f4e8862c6f53e21760e953efa926946b8eb9f87d75dc3ab0ff7eebb1",
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

Occurrence: `declaration:d8afcd9169b628aba12357dfb725e72937c86788c6a9e8ae97979251136b76e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 935–954.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def queryKind : CliM PUnit := do
  processOptions lakeOption
  let opts ← getThe LakeOptions
  let config ← mkLoadConfig opts
  let ws ← loadWorkspace config
  let targetSpecs ← takeArgs
  let keys ← targetSpecs.toArray.mapM fun spec =>
    IO.ofExcept <| PartialBuildKey.parse spec
  let buildConfig := mkBuildConfig opts
  let r ← ws.runFetchM (cfg := buildConfig) <| keys.mapM fun key => do
    let ⟨_, job⟩ ← key.fetchInCore ws.root
    let kind := job.kind
    let job ← maybeRegisterJob key.toString job.toOpaque
    return (kind.name, job)
  r.forM (IO.println ·.1)
  r.forM fun (_, job) => do
    match (← job.wait?) with
    | some _ => pure ()
    | none => error "build failed"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant4b95ab56b87319c0a1e2b55d0d31e3c077977a376020c326579d0802b9399010.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant4b95ab56b87319c0a1e2b55d0d31e3c077977a376020c326579d0802b9399010.lean#L935).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7351b888130b276772224890d37d069298d4fddd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
