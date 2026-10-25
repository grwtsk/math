# Code.explicitRc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d68e343acafb220dc7b72a322c2bd262fb4041337538026fcd99b6018fb1247",
  "kind": "def",
  "lexical_name": "Code.explicitRc",
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
  "slug": "code-explicitrc--6673f5273b3a19de7985990f",
  "source": {
    "blob": "7b7ef1e41b5cea84d054d59625e52fafc96b4c26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 679,
    "line": 607,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant92ddda0e93a0736bcc7bd9accbe702e60c9bf613313a90c34f1b2a46bb6ca1b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6673f5273b3a19de7985990fa30f2b9edb62454ff8cf9c37e4e11ac7f3177f30",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant92ddda0e93a0736bcc7bd9accbe702e60c9bf613313a90c34f1b2a46bb6ca1b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d68e343acafb220dc7b72a322c2bd262fb4041337538026fcd99b6018fb1247`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 607–679.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Code.explicitRc (code : Code .impure) : RcM (Code .impure) := do
  match code with
  | .let decl k =>
    withLetDecl decl do
      let k ← k.explicitRc
      let k ← decl.explicitRc code k
      return k
  | .jp decl k =>
    let (decl, jpLive) ←
      withParams decl.params do
      withCollectLiveVars do
        let value ← decl.value.explicitRc
        let value ← addDecForDeadParams decl.params value
        decl.updateValue value
    withReader (fun ctx => { ctx with jpLiveVarMap := ctx.jpLiveVarMap.insert decl.fvarId jpLive }) do
      let k ← k.explicitRc
      return code.updateFun! decl k
  | .cases cs =>
    /-
    When visiting a cases we must make sure that all values used in any alternative do not get
    released before the branch. So we collect the union of all live values and then insert an
    alternative specific prolog that decrements values which are not used in the respective
    alternative.
    -/
    let alts ← cs.alts.mapM fun alt =>
      withCollectLiveVars do
        match alt with
        | .ctorAlt c k =>
          withCtorAlt cs.discr c do
            let k ← k.explicitRc
            return alt.updateCode k
        | .default k =>
          let k ← k.explicitRc
          return alt.updateCode k
    let caseLiveVars := alts.foldl (init := {}) fun acc ⟨_, altLive⟩ => acc.union altLive
    modifyLive fun _ => caseLiveVars
    useVar cs.discr
    let alts ← alts.mapM fun ⟨alt, altLiveVars⟩ => do
      match alt with
      | .ctorAlt c k =>
        withCtorAlt cs.discr c do
          let k ← addPrologForAlt altLiveVars k
          return alt.updateCode k
      | .default k =>
        let k ← addPrologForAlt altLiveVars k
        return alt.updateCode k
    return code.updateAlts! alts
  | .jmp fvarId args =>
    let jpLiveVars ← getJpLiveVars fvarId
    -- When jumping to a jp we must ensure all the values it might want to use are still alive.
    modifyLive fun _ => jpLiveVars
    let ps := (← findFunDecl? fvarId).get!.params
    let code ← addIncBefore args ps code
    useArgs args
    return code
  | .return fvarId =>
    setRetLiveVars
    let info ← getVarInfo fvarId
    useVar fvarId
    if info.isPossibleRef && (← isBorrowed fvarId) then
      addInc fvarId code
    else
      return code
  | .uset (fvarId := fvarId) (k := k) .. | .sset (fvarId := fvarId) (k := k) .. =>
    let k ← k.explicitRc
    -- We don't need to insert `fvarId` since we only need to track live variables that are references at runtime
    useVar fvarId
    return code.updateCont! k
  | .unreach .. =>
    setRetLiveVars
    return code
  | .inc .. | .dec .. | .setTag .. | .del .. | .oset .. => unreachable!

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant92ddda0e93a0736bcc7bd9accbe702e60c9bf613313a90c34f1b2a46bb6ca1b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant92ddda0e93a0736bcc7bd9accbe702e60c9bf613313a90c34f1b2a46bb6ca1b2.lean#L607).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b7ef1e41b5cea84d054d59625e52fafc96b4c26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
