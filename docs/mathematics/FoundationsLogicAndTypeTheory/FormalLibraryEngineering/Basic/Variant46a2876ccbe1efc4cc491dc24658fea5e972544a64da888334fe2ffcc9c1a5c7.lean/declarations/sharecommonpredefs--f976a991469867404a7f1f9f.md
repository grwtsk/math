# shareCommonPreDefs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31885d408a0005eca90f15e07b2a9d04f93b75cfc2f9201be8f69e9586855f26",
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
  "slug": "sharecommonpredefs--f976a991469867404a7f1f9f",
  "source": {
    "blob": "c31e13045fd34779db5fbbe3efc03909af17432a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 324,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46a2876ccbe1efc4cc491dc24658fea5e972544a64da888334fe2ffcc9c1a5c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f976a991469867404a7f1f9f033e3e8a75436b60b8633995d79426de023c7431",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46a2876ccbe1efc4cc491dc24658fea5e972544a64da888334fe2ffcc9c1a5c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31885d408a0005eca90f15e07b2a9d04f93b75cfc2f9201be8f69e9586855f26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–337.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46a2876ccbe1efc4cc491dc24658fea5e972544a64da888334fe2ffcc9c1a5c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46a2876ccbe1efc4cc491dc24658fea5e972544a64da888334fe2ffcc9c1a5c7.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c31e13045fd34779db5fbbe3efc03909af17432a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
