# MVarId.congrN

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2010ccdc958ce1ace360df56a590aac8451ba4ccb4c416d9afae77a2fd11936a",
  "kind": "def",
  "lexical_name": "MVarId.congrN",
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
  "slug": "mvarid-congrn--95483273cd2c2576ae4299df",
  "source": {
    "blob": "0932d71d799ec65e0ea87ef901485946505e0df0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 103,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b110c3729c61c8063db848e603761b0c35b8f7136fec55cbef3fd009c10868c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95483273cd2c2576ae4299dfa9943526d51f2f67d48bba7a99f49e326105fa4c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b110c3729c61c8063db848e603761b0c35b8f7136fec55cbef3fd009c10868c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2010ccdc958ce1ace360df56a590aac8451ba4ccb4c416d9afae77a2fd11936a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MVarId.congrN (mvarId : MVarId) (depth : Nat := 1000000) (closePre := true) (closePost := true) : MetaM (List MVarId) := do
  let (_, s) ← go depth mvarId |>.run #[]
  return s.toList
where
  post (mvarId : MVarId) : StateRefT (Array MVarId) MetaM Unit := do
    let mode ← getTransparency
    if closePost && mode != .reducible && mode != .none then
      if let some mvarId ← mvarId.congrPre then
        modify (·.push mvarId)
    else
      modify (·.push mvarId)

  go (n : Nat) (mvarId : MVarId) : StateRefT (Array MVarId) MetaM Unit := do
    if let some mvarId ← if closePre then withReducible mvarId.congrPre else pure mvarId then
      match n with
      | 0 => post mvarId
      | n+1 =>
        let some mvarIds ← observing? (m := MetaM) mvarId.congrCore
          | post mvarId
        mvarIds.forM (go n)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b110c3729c61c8063db848e603761b0c35b8f7136fec55cbef3fd009c10868c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b110c3729c61c8063db848e603761b0c35b8f7136fec55cbef3fd009c10868c.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0932d71d799ec65e0ea87ef901485946505e0df0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
