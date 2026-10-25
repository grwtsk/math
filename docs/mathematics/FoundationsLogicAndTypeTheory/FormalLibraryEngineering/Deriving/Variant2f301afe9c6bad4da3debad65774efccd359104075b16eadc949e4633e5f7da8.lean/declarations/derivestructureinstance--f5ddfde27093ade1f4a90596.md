# deriveStructureInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c254cfcb98e6db79b09c2ab64645470e38a8955c82f02f111ddd0621d4e4706",
  "kind": "def",
  "lexical_name": "deriveStructureInstance",
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
  "slug": "derivestructureinstance--f5ddfde27093ade1f4a90596",
  "source": {
    "blob": "c5ac8540cf66f4191e1e6d067f93b6dff3f8d7e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deriving/Variant2f301afe9c6bad4da3debad65774efccd359104075b16eadc949e4633e5f7da8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5ddfde27093ade1f4a905961ae3b697bca0cd095940ae483f7f4bb376b61e42",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deriving/Variant2f301afe9c6bad4da3debad65774efccd359104075b16eadc949e4633e5f7da8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c254cfcb98e6db79b09c2ab64645470e38a8955c82f02f111ddd0621d4e4706`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def deriveStructureInstance (indVal : InductiveVal) (params : Array Expr)
    (encInstBinders : Array (TSyntax ``bracketedBinder)) : TermElabM Command := do
  let fields := getStructureFieldsFlattened (← getEnv) indVal.name (includeSubobjectFields := false)
  trace[Elab.Deriving.RpcEncodable] "for structure {indVal.name} with params {params}"

  let mut fieldIds := #[]
  let mut fieldTys := #[]
  let mut encInits := #[]
  let mut decInits := #[]
  for fieldName in fields do
    if fieldName == `__rpcref then
        throwError "'__rpcref' is reserved and cannot be used as a field name. \
          See the `RpcEncodable` docstring."
    let fid := mkIdent fieldName
    fieldIds := fieldIds.push fid
    if isOptField fieldName then
      fieldTys := fieldTys.push (← `(Option Json))
      encInits := encInits.push (← `(structInstField| $fid:ident := ← (a.$fid).mapM rpcEncode))
      decInits := decInits.push (← `(structInstField| $fid:ident := ← (a.$fid).mapM rpcDecode))
    else
      fieldTys := fieldTys.push (← `(Json))
      encInits := encInits.push (← `(structInstField| $fid:ident := ← rpcEncode a.$fid))
      decInits := decInits.push (← `(structInstField| $fid:ident := ← rpcDecode a.$fid))

  let paramIds ← params.mapM fun p => return mkIdent (← getFVarLocalDecl p).userName
  `(structure RpcEncodablePacket where
      $[($fieldIds : $fieldTys)]*
      deriving FromJson, ToJson

    variable $encInstBinders* in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deriving/Variant2f301afe9c6bad4da3debad65774efccd359104075b16eadc949e4633e5f7da8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deriving/Variant2f301afe9c6bad4da3debad65774efccd359104075b16eadc949e4633e5f7da8.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5ac8540cf66f4191e1e6d067f93b6dff3f8d7e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
