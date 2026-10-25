# CompilerM.codeBind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4434dc58d37b7bd3719575afc112cf93c0abfe57fc2b575b454cc26e32d6224",
  "kind": "def",
  "lexical_name": "CompilerM.codeBind",
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
  "slug": "compilerm-codebind--0d2fc7d64759111141ddbfdb",
  "source": {
    "blob": "c249f0507b4c935861467f74ef0089eebc84839a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bind/Variantd3b81dcd7b8d1b62a647eaad7472c638a58d5bd7565ee5ea8bfc7772e6150ea0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d2fc7d64759111141ddbfdba1d7db5ec1715ab483dc7b4396c49e3ca6e866d3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bind/Variantd3b81dcd7b8d1b62a647eaad7472c638a58d5bd7565ee5ea8bfc7772e6150ea0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4434dc58d37b7bd3719575afc112cf93c0abfe57fc2b575b454cc26e32d6224`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def CompilerM.codeBind (c : Code pu) (f : FVarId → CompilerM (Code pu)) :
    CompilerM (Code pu) := do
  go c |>.run {}
where
  go (c : Code pu) : ReaderT FVarIdSet CompilerM (Code pu) := do
    match c with
    | .let decl k => return .let decl (← go k)
    | .fun decl k _ => return .fun decl (← go k)
    | .jp decl k =>
      let value ← go decl.value
      let type ← value.inferParamType decl.params
      let decl ← decl.update' type value
      withReader (fun s => s.insert decl.fvarId) do
        return .jp decl (← go k)
    | .cases c =>
      let alts ← c.alts.mapM fun
        | .alt ctorName params k _ => return .alt ctorName params (← go k)
        | .default k => return .default (← go k)
        | .ctorAlt info k _ => return .ctorAlt info (← go k)
      if alts.isEmpty then
        throwError "`Code.bind` failed, empty `cases` found"
      let resultType ← mkCasesResultType alts
      return .cases ⟨c.typeName, resultType, c.discr, alts⟩
    | .return fvarId => f fvarId
    | .jmp fvarId .. =>
      unless (← read).contains fvarId do
        throwError "`Code.bind` failed, it contains a out of scope join point"
      return c
    | .unreach type =>
      /-
      Create an auxiliary parameter `aux : type` to compute the resulting type of `f aux`.
      This code is not very efficient, we could ask caller to provide the type of `c >>= f`,
      but this is more convenient, and this case is seldom reached.
      -/
      let auxParam ← mkAuxParam (pu := pu) type
      let k ← f auxParam.fvarId
      let typeNew ← k.inferType
      eraseCode k
      eraseParam auxParam
      return .unreach typeNew
    | .oset (k := k) ..| .sset (k := k) .. | .uset (k := k) .. | .inc (k := k) .. | .dec (k := k) ..
    | .del (k := k) .. | .setTag (k := k) .. =>
      return c.updateCont! (← go k)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bind/Variantd3b81dcd7b8d1b62a647eaad7472c638a58d5bd7565ee5ea8bfc7772e6150ea0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bind/Variantd3b81dcd7b8d1b62a647eaad7472c638a58d5bd7565ee5ea8bfc7772e6150ea0.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c249f0507b4c935861467f74ef0089eebc84839a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
