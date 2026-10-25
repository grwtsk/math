# resolveTargetLikeSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9c6659d549b30752ba70a3341bda90d17c2401b010cd653012ac3f17595ff11",
  "kind": "def",
  "lexical_name": "resolveTargetLikeSpec",
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
  "slug": "resolvetargetlikespec--a5bd4ef14a5c48831c78b7c7",
  "source": {
    "blob": "273a5eb58721bb87d70c485ffed9ab064c4e7e4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 143,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5bd4ef14a5c48831c78b7c77c398c642d04ef02da6b01949819a4be65bc0f06",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9c6659d549b30752ba70a3341bda90d17c2401b010cd653012ac3f17595ff11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resolveTargetLikeSpec
  (ws : Workspace) (spec : String) (facet : Name) (isMaybePath explicit := false)
: Except CliError (Array BuildSpec) := do
  match spec.split '/' |>.toList with
  | [spec] =>
    if spec.isEmpty then
      resolvePackageTarget ws ws.root facet
    else if explicit then
      resolvePackageTarget ws (← parsePackageSpec ws spec.copy) facet
    else
      resolveTargetInWorkspace ws (stringToLegalOrSimpleName spec.copy) facet
  | [pkgSpec, targetSpec] =>
    let pkg ← parsePackageSpec ws pkgSpec.copy
    if targetSpec.isEmpty then
      resolvePackageTarget ws pkg facet
    else if targetSpec.startsWith "+" then
      let mod := targetSpec.drop 1 |>.copy.toName
      if let some mod := pkg.findTargetModule? mod then
        Array.singleton <$> resolveModuleTarget ws mod facet
      else
        throw <| CliError.unknownModule mod
    else
      resolveTargetInPackage ws pkg (stringToLegalOrSimpleName targetSpec.copy) facet
  | _ =>
    if isMaybePath then
      throw <| CliError.unknownModulePath spec
    else
      throw <| CliError.invalidTargetSpec spec '/'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `273a5eb58721bb87d70c485ffed9ab064c4e7e4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
