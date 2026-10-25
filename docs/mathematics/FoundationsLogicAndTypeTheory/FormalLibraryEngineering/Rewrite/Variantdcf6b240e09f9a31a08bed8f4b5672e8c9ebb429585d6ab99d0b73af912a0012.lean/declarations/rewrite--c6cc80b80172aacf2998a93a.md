# rewrite?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46977019e6a66c0976146f2ad1878e60cc2f4104b90c5c61f68f4d879eced571",
  "kind": "def",
  "lexical_name": "rewrite?",
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
  "slug": "rewrite--c6cc80b80172aacf2998a93a",
  "source": {
    "blob": "3a827dc4563a3afaefd4e052606efc0d052a06e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 215,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6cc80b80172aacf2998a93a045938c59d1aacd521f92fe77abf3fda55946d5b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46977019e6a66c0976146f2ad1878e60cc2f4104b90c5c61f68f4d879eced571`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rewrite? (e : Expr) (s : SimpTheoremTree) (erased : PHashSet Origin) (tag : String) (rflOnly : Bool) : SimpM (Option Result) := do
  if (← getConfig).index then
    rewriteUsingIndex?
  else
    rewriteNoIndex?
where
  /-- For `(← getConfig).index := true`, use discrimination tree structure when collecting `simp` theorem candidates. -/
  rewriteUsingIndex? : SimpM (Option Result) := do
    let candidates ← withSimpIndexConfig <| s.getMatchWithExtra e
    if candidates.isEmpty then
      trace[Debug.Meta.Tactic.simp] "no theorems found for {tag}-rewriting {e}"
      return none
    else
      let candidates := candidates.insertionSort fun e₁ e₂ => e₁.1.priority > e₂.1.priority
      let useBackward := backward.defeqAttrib.useBackward.get (← getOptions)
      for (thm, numExtraArgs) in candidates do
        checkSystem "simp"
        if inErasedSet thm then continue
        if rflOnly then
          unless thm.rfl || (useBackward && thm.backwardRfl) do
            if debug.tactic.simp.checkDefEqAttr.get (← getOptions) &&
               backward.dsimp.useDefEqAttr.get (← getOptions) then
              let isRflOld ← withOptions (backward.dsimp.useDefEqAttr.set · false) do
                isRflProof thm.proof
              if isRflOld then
                logWarning m!"theorem {thm.proof} is no longer rfl"
            continue
        if let some result ← tryTheoremWithExtraArgs? e thm numExtraArgs then
          trace[Debug.Meta.Tactic.simp] "rewrite result {e} => {result.expr}"
          if rflOnly && !thm.rfl && thm.backwardRfl then
            trace[Meta.Tactic.simp.backwardDefEq]
              "used `[backward_defeq]` theorem {← ppOrigin thm.origin} to rewrite{indentExpr e}"
          return some result
      return none

  /--
  For `(← getConfig).index := false`, Lean 3 style `simp` theorem retrieval.
  Only the root symbol is taken into account. Most of the structure of the discrimination tree is ignored.
  -/
  rewriteNoIndex? : SimpM (Option Result) := do
    let (candidates, numArgs) ← withSimpIndexConfig <| s.getMatchLiberal e
    if candidates.isEmpty then
      trace[Debug.Meta.Tactic.simp] "no theorems found for {tag}-rewriting {e}"
      return none
    else
      let candidates := candidates.insertionSort fun e₁ e₂ => e₁.priority > e₂.priority
      let useBackward := backward.defeqAttrib.useBackward.get (← getOptions)
      for thm in candidates do
        checkSystem "simp"
        unless inErasedSet thm || (rflOnly && !(thm.rfl || (useBackward && thm.backwardRfl))) do
          let result? ← withNewMCtxDepth do
            let val  ← thm.getValue
            let type ← inferType val
            let (xs, bis, type) ← forallMetaTelescopeReducing type
            let type ← whnf (← instantiateMVars type)
            let lhs := type.appFn!.appArg!
            let lhsNumArgs := lhs.getAppNumArgs
            tryTheoremCore lhs xs bis val type e thm (numArgs - lhsNumArgs)
          if let some result := result? then
            trace[Debug.Meta.Tactic.simp] "rewrite result {e} => {result.expr}"
            if rflOnly && !thm.rfl && thm.backwardRfl then
              trace[Meta.Tactic.simp.backwardDefEq]
                "used `[backward_defeq]` theorem {← ppOrigin thm.origin} to rewrite{indentExpr e}"
            diagnoseWhenNoIndex thm
            return some result
    return none

  diagnoseWhenNoIndex (thm : SimpTheorem) : SimpM Unit := do
    if (← isDiagnosticsEnabled) then
      let candidates ← withSimpIndexConfig <| s.getMatchWithExtra e
      for (candidate, _) in candidates do
        if unsafe ptrEq thm candidate then
          return ()
      -- `thm` would not have been applied if `index := true`
      recordTheoremWithBadKeys thm

  inErasedSet (thm : SimpTheorem) : Bool :=
    erased.contains thm.origin

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a827dc4563a3afaefd4e052606efc0d052a06e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
