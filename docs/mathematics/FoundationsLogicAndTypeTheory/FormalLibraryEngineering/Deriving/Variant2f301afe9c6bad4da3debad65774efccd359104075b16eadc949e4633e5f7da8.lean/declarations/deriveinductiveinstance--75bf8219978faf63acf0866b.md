# deriveInductiveInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d84c5b914c227c821491c89a1ad1b3fa37f29db0221ab55e6c4f70b5913a537",
  "kind": "def",
  "lexical_name": "deriveInductiveInstance",
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
  "slug": "deriveinductiveinstance--75bf8219978faf63acf0866b",
  "source": {
    "blob": "c5ac8540cf66f4191e1e6d067f93b6dff3f8d7e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deriving/Variant2f301afe9c6bad4da3debad65774efccd359104075b16eadc949e4633e5f7da8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75bf8219978faf63acf0866bb619b0429b73aa0e62f2422f3416c408bf08e52e",
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

Occurrence: `declaration:8d84c5b914c227c821491c89a1ad1b3fa37f29db0221ab55e6c4f70b5913a537`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def deriveInductiveInstance (indVal : InductiveVal) (params : Array Expr)
    (encInstBinders : Array (TSyntax ``bracketedBinder)) : TermElabM Command := do
  trace[Elab.Deriving.RpcEncodable] "for inductive {indVal.name} with params {params}"
  let st ← indVal.ctors.toArray.mapM fun ctorName => do
    let ctorTy ← instantiateForall (← getConstInfoCtor ctorName).type params
    forallTelescopeReducing ctorTy fun argVars _ => do
    let .str _ ctor := ctorName | throwError m!"constructor name not a string: {ctorName}"
    let ctorId := mkIdent (.mkSimple ctor)

    -- create the constructor
    let fieldStxs ← argVars.mapM fun arg => do
      let name := (← getFVarLocalDecl arg).userName
      if name == `__rpcref then
        throwError "'__rpcref' is reserved and cannot be used as an argument name. \
          See the `RpcEncodable` docstring."
      `(bracketedBinderF| ($(mkIdent name) : Json))
    let pktCtor ← `(Parser.Command.ctor|
      | $ctorId:ident $[$fieldStxs]* : RpcEncodablePacket)

    -- create encoder and decoder match arms
    let nms ← argVars.mapM fun _ => mkIdent <$> mkFreshBinderName
    let encArgs ← nms.mapM fun nm => `(← rpcEncode $nm)
    let encArm ← `(matchAltTerm| | .$ctorId $nms* => return toJson (.$ctorId $encArgs* : RpcEncodablePacket))
    let decArgs ← nms.mapM fun nm => `(← rpcDecode $nm)
    let decArm ← `(matchAltTerm| | .$ctorId $nms* => return (.$ctorId $decArgs*))

    return (pktCtor, encArm, decArm)

  let (ctors, st) := st.unzip
  let (encodes, decodes) := st.unzip

  -- helpers for type name syntax
  let paramIds ← params.mapM fun p => return mkIdent (← getFVarLocalDecl p).userName
  let typeId ← `(@$(mkCIdent indVal.name) $paramIds*)

  `(inductive RpcEncodablePacket where
      $[$ctors:ctor]*
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deriving/Variant2f301afe9c6bad4da3debad65774efccd359104075b16eadc949e4633e5f7da8.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5ac8540cf66f4191e1e6d067f93b6dff3f8d7e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
