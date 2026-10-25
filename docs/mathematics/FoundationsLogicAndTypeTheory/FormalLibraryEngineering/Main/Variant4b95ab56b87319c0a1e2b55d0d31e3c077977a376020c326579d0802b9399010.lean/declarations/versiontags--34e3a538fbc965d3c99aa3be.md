# versionTags

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b66398d0fc508aa6804aba963300eaf0d82087b792fd9fc12ce2137283ebc29b",
  "kind": "def",
  "lexical_name": "versionTags",
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
  "slug": "versiontags--34e3a538fbc965d3c99aa3be",
  "source": {
    "blob": "7351b888130b276772224890d37d069298d4fddd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1247,
    "line": 1237,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant4b95ab56b87319c0a1e2b55d0d31e3c077977a376020c326579d0802b9399010.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:34e3a538fbc965d3c99aa3bed715fddc49f71ff44a16f88fb3d98a49ceb7cb88",
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

Occurrence: `declaration:b66398d0fc508aa6804aba963300eaf0d82087b792fd9fc12ce2137283ebc29b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1237–1247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def versionTags : CliM PUnit := do
  processOptions lakeOption
  let opts ← getThe LakeOptions
  let cfg ← mkLoadConfig opts
  noArgsRem do
  let pkg ← loadPackage cfg
  let tags ← GitRepo.getTags pkg.dir
  for tag in tags do
    if pkg.versionTags.matches tag then
      IO.println tag

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant4b95ab56b87319c0a1e2b55d0d31e3c077977a376020c326579d0802b9399010.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant4b95ab56b87319c0a1e2b55d0d31e3c077977a376020c326579d0802b9399010.lean#L1237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7351b888130b276772224890d37d069298d4fddd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
