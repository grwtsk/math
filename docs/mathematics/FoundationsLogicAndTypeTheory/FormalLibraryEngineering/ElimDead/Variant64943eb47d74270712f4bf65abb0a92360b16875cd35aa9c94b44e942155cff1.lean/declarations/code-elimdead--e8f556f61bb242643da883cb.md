# Code.elimDead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6481bba71db21d306053b74f55b93e66400e79cd97f8fbe327846abe97ec527a",
  "kind": "def",
  "lexical_name": "Code.elimDead",
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
  "slug": "code-elimdead--e8f556f61bb242643da883cb",
  "source": {
    "blob": "0226cbf98f006b92c938f14c6ed963e87c3bf0c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDead/Variant64943eb47d74270712f4bf65abb0a92360b16875cd35aa9c94b44e942155cff1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8f556f61bb242643da883cb13be8f3848d4360168e921ad7cffd458118fe048",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDead/Variant64943eb47d74270712f4bf65abb0a92360b16875cd35aa9c94b44e942155cff1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6481bba71db21d306053b74f55b93e66400e79cd97f8fbe327846abe97ec527a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Code.elimDead (code : Code pu) : M (Code pu) := do
  match code with
  | .let decl k =>
    let k ← k.elimDead
    if (← get).contains decl.fvarId || !decl.value.safeToElim then
      /- Remark: we don't need to collect `decl.type` because LCNF local declarations do not occur in types. -/
      collectLetValueM decl.value
      return code.updateCont! k
    else
      eraseLetDecl decl
      return k
  | .fun decl k _ | .jp decl k =>
    let k ← k.elimDead
    if (← get).contains decl.fvarId then
      let decl ← visitFunDecl decl
      return code.updateFun! decl k
    else
      eraseFunDecl decl
      return k
  | .cases c =>
    let alts ← c.alts.mapMonoM fun alt => return alt.updateCode (← alt.getCode.elimDead)
    collectFVarM c.discr
    return code.updateAlts! alts
  | .return fvarId => collectFVarM fvarId; return code
  | .jmp fvarId args => collectFVarM fvarId; args.forM collectArgM; return code
  | .unreach .. => return code
  | .oset fvarId _ y k _ =>
    let k ← k.elimDead
    if (← get).contains fvarId then
      collectArgM y
      return code.updateCont! k
    else
      return k
  | .uset fvarId _ y k _ | .sset fvarId _ _ y _ k _ =>
    let k ← k.elimDead
    if (← get).contains fvarId then
      collectFVarM y
      return code.updateCont! k
    else
      return k
  | .inc (fvarId := fvarId) (k := k) .. | .dec (fvarId := fvarId) (k := k) ..
  | .setTag (fvarId := fvarId) (k := k) .. | .del (fvarId := fvarId) (k := k) .. =>
    let k ← k.elimDead
    collectFVarM fvarId
    return code.updateCont! k

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDead/Variant64943eb47d74270712f4bf65abb0a92360b16875cd35aa9c94b44e942155cff1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDead/Variant64943eb47d74270712f4bf65abb0a92360b16875cd35aa9c94b44e942155cff1.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0226cbf98f006b92c938f14c6ed963e87c3bf0c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
