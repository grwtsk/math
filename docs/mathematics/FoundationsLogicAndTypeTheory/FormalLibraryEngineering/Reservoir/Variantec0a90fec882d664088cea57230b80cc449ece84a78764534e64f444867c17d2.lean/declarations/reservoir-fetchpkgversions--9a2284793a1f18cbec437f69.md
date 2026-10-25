# Reservoir.fetchPkgVersions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:331739e1e1cdcf979a6dff009fe1f89ccad98056ad79057d0bc296c42505c003",
  "kind": "def",
  "lexical_name": "Reservoir.fetchPkgVersions",
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
  "slug": "reservoir-fetchpkgversions--9a2284793a1f18cbec437f69",
  "source": {
    "blob": "07cb468daef403bcf3f5e8f99ee8ac0bf039ae59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 170,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variantec0a90fec882d664088cea57230b80cc449ece84a78764534e64f444867c17d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a2284793a1f18cbec437f6939fc6e614e3148e9b28f8e24ff9133d3ec374277",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variantec0a90fec882d664088cea57230b80cc449ece84a78764534e64f444867c17d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:331739e1e1cdcf979a6dff009fe1f89ccad98056ad79057d0bc296c42505c003`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Reservoir.fetchPkgVersions
  (lakeEnv : Lake.Env) (owner pkg : String)
: LogIO (Array RegistryVer) := do
  let url := Reservoir.pkgVersionsApiUrl lakeEnv owner pkg
  let out ←
    try
      getUrl url Reservoir.lakeHeaders
    catch e =>
      logError s!"{owner}/{pkg}: Reservoir lookup failed"
      throw e
  match Json.parse out with
  | .ok json =>
    match fromJson? json with
    | .ok (resp : ReservoirResp (Array RegistryVer)) =>
      match resp with
      | .data vers =>
        return vers
      | .error status msg =>
        error s!"{owner}/{pkg}: Reservoir lookup failed (code: {status}): {msg}"
    | .error e =>
      errorWithLog do
      logError s!"{owner}/{pkg}: Reservoir lookup failed; server returned unsupported JSON: {e}"
      logVerbose s!"{owner}/{pkg}: Reservoir responded with:\n{out.trimAscii}"
      failure
  | .error e =>
    errorWithLog do
    logError s!"{owner}/{pkg}: Reservoir lookup failed; server returned invalid JSON: {e}"
    logVerbose s!"{owner}/{pkg}: Reservoir responded with:\n{out.trimAscii}"
    failure
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variantec0a90fec882d664088cea57230b80cc449ece84a78764534e64f444867c17d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variantec0a90fec882d664088cea57230b80cc449ece84a78764534e64f444867c17d2.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07cb468daef403bcf3f5e8f99ee8ac0bf039ae59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
