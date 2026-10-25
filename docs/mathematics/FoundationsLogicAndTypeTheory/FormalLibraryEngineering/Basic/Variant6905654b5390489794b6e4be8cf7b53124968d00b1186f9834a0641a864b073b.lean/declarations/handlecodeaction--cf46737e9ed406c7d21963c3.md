# handleCodeAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84a0492d0ad589bb53a0193ac0f1ff32ca9f0efb1eb3e0257da77c69ea20b318",
  "kind": "def",
  "lexical_name": "handleCodeAction",
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
  "slug": "handlecodeaction--cf46737e9ed406c7d21963c3",
  "source": {
    "blob": "6d73b6b61d715396ea10d126192e94d158132227",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 122,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6905654b5390489794b6e4be8cf7b53124968d00b1186f9834a0641a864b073b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf46737e9ed406c7d21963c3f4a3ddfbfd0edf26c46c5c8325147287ca57457a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6905654b5390489794b6e4be8cf7b53124968d00b1186f9834a0641a864b073b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84a0492d0ad589bb53a0193ac0f1ff32ca9f0efb1eb3e0257da77c69ea20b318`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def handleCodeAction (params : CodeActionParams) : RequestM (RequestTask (Array CodeAction)) := do
  let doc ← readDoc
  let pos := doc.meta.text.lspPosToUtf8Pos params.range.end
  withWaitFindSnap doc (fun s => s.endPos ≥ pos)
    (notFoundX := return #[])
    fun snap => do
      let caps ← RequestM.runCoreM snap do
        let env ← getEnv
        let names := codeActionProviderExt.getState env |>.toArray
        let caps ← names.mapM evalCodeActionProvider
        return (← builtinCodeActionProviders.get).toList.toArray ++ Array.zip names caps
      caps.flatMapM fun (providerName, cap) => do
        RequestM.checkCancelled
        let cas ← cap params snap
        cas.mapIdxM fun i lca => do
          let data : CodeActionResolveData := {
            params, providerName, providerResultIndex := i
          }
          let j : Json := toJson data
          let ca := { lca.eager with data? := some j }
          return ca

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6905654b5390489794b6e4be8cf7b53124968d00b1186f9834a0641a864b073b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6905654b5390489794b6e4be8cf7b53124968d00b1186f9834a0641a864b073b.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d73b6b61d715396ea10d126192e94d158132227` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
