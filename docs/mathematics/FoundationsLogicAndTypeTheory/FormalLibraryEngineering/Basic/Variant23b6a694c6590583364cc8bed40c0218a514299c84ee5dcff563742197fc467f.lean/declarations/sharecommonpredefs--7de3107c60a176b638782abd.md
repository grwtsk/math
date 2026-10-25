# shareCommonPreDefs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:754662925cedc248e37e2616ebaef1560a89fb5c9f450ad2e5c988c9db12f129",
  "kind": "def",
  "lexical_name": "shareCommonPreDefs",
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
  "slug": "sharecommonpredefs--7de3107c60a176b638782abd",
  "source": {
    "blob": "8569777490d2b96ac8bda518eb179e7532e512f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 332,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant23b6a694c6590583364cc8bed40c0218a514299c84ee5dcff563742197fc467f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7de3107c60a176b638782abd491a00ab6ecd4b8b456eb8af8f5ee35be31c5a61",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant23b6a694c6590583364cc8bed40c0218a514299c84ee5dcff563742197fc467f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:754662925cedc248e37e2616ebaef1560a89fb5c9f450ad2e5c988c9db12f129`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shareCommonPreDefs (preDefs : Array PreDefinition) : CoreM (Array PreDefinition) := do
  profileitM Exception "share common exprs" (← getOptions) do
    withTraceNode `Elab.def.maxSharing (fun _ => return m!"share common exprs") do
      let mut es := #[]
      for preDef in preDefs do
        es := es.push preDef.type |>.push preDef.value
      es := ShareCommon.shareCommon' es
      let mut result := #[]
      for h : i in *...preDefs.size do
        let preDef := preDefs[i]
        result := result.push { preDef with type := es[2*i]!, value := es[2*i+1]! }
      return result

end Lean.Elab
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant23b6a694c6590583364cc8bed40c0218a514299c84ee5dcff563742197fc467f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant23b6a694c6590583364cc8bed40c0218a514299c84ee5dcff563742197fc467f.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8569777490d2b96ac8bda518eb179e7532e512f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
