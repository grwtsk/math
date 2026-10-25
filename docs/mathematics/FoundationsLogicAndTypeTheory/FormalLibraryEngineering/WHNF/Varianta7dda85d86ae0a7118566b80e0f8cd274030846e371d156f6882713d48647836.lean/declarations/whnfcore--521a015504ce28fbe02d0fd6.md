# whnfCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6e95be4596cdf9655b91b2454b2de890aa0dac8cde92d7aff8ff573008ca8ab",
  "kind": "def",
  "lexical_name": "whnfCore",
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
  "slug": "whnfcore--521a015504ce28fbe02d0fd6",
  "source": {
    "blob": "f31a765ed75b6fbe3ae881a93afdf3152f18a53f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 746,
    "line": 648,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Varianta7dda85d86ae0a7118566b80e0f8cd274030846e371d156f6882713d48647836.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:521a015504ce28fbe02d0fd66efb8ab27431ba410d3cea6d369d139b5fdf6b0a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Varianta7dda85d86ae0a7118566b80e0f8cd274030846e371d156f6882713d48647836.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6e95be4596cdf9655b91b2454b2de890aa0dac8cde92d7aff8ff573008ca8ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 648–746.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def whnfCore (e : Expr) : MetaM Expr :=
  go e
where
  go (e : Expr) : MetaM Expr := do
    whnfEasyCases e fun e => do
      trace[Meta.whnf] e
      match e with
      | .const ..  => pure e
      | .letE _ _ v b nondep =>
        let cfg ← getConfig
        if cfg.zeta && (!nondep || cfg.zetaHave) then
          go <| expandLet b #[v] (zetaHave := cfg.zetaHave)
        else if cfg.zetaUnused && !b.hasLooseBVars then
          go <| consumeUnusedLet b
        else
          return e
      | .app f ..       =>
        let cfg ← getConfig
        let f := f.getAppFn
        let f' ← go f
        /-
        If `f'` is a lambda, then we perform beta-reduction here IF
        1- `cfg.beta` is enabled, OR
        2- `f` was not a lambda expression. That is, `f` was reduced, and the beta-reduction step is part
           of this step. This is similar to allowing beta-reduction while unfolding expressions even if `cfg.beta := false`.

        We added case 2 because a failure at `norm_cast`. See test `6123_mod_cast.lean`.
        Another possible fix to this test is to set `beta := true` at the `Simp.Config` value at
        `NormCast.lean`.
        -/
        if f'.isLambda && (cfg.beta || !f.isLambda) then
          let revArgs := e.getAppRevArgs
          go <| f'.betaRev revArgs
        else if let some eNew ← whnfDelayedAssigned? f' e then
          go eNew
        else
          let e := if f == f' then e else e.updateFn f'
          unless cfg.iota do return e
          match (← reduceMatcher? e) with
          | .reduced eNew => go eNew
          | .partialApp   => pure e
          | .stuck _      => pure e
          | .notMatcher   =>
            let .const cname lvls := f'.getAppFn | return e
            let some cinfo := (← getEnv).find? cname | return e
            match cinfo with
            | .recInfo rec    => reduceRec rec lvls e.getAppArgs (fun _ => return e) (fun e => do recordUnfold cinfo.name; go e)
            | .quotInfo rec   => reduceQuotRec rec e.getAppArgs (fun _ => return e) (fun e => do recordUnfold cinfo.name; go e)
            | c@(.defnInfo _) => do
              if (← isAuxDef c.name) then
                recordUnfold c.name
                deltaBetaDefinition c lvls e.getAppRevArgs (fun _ => return e) go
              else
                return e
            | .axiomInfo val => recordUnfoldAxiom val.name; return e
            | _ => return e
      | .proj _ i c =>
        let k (c : Expr) := do
          match (← projectCore? c i) with
          | some e => go e
          | none => return e
        match (← getConfig).proj with
        | .no => return e
        | .yes => k (← go c)
        | .yesWithDelta => k (← whnf c)
        -- Remark: If the current transparency setting is `reducible`, we should not increase it to `instances`
        | .yesWithDeltaI => k (← whnfAtMostI c)
      | _ => unreachable!

/--
  Recall that `_sunfold` auxiliary definitions contains the markers: `markSmartUnfoldingMatch` (*) and `markSmartUnfoldingMatchAlt` (**).
  For example, consider the following definition
  ```
  def r (i j : Nat) : Nat :=
    i +
      match j with
      | Nat.zero => 1
      | Nat.succ j =>
        i + match j with
            | Nat.zero => 2
            | Nat.succ j => r i j
  ```
  produces the following `_sunfold` auxiliary definition with the markers
  ```
  def r._sunfold (i j : Nat) : Nat :=
    i +
      (*) match j with
      | Nat.zero => (**) 1
      | Nat.succ j =>
        i + (*) match j with
            | Nat.zero => (**) 2
            | Nat.succ j => (**) r i j
  ```

  `match` expressions marked with `markSmartUnfoldingMatch` (*) must be reduced, otherwise the resulting term is not definitionally
   equal to the given expression. The recursion may be interrupted as soon as the annotation `markSmartUnfoldingAlt` (**) is reached.

  For example, the term `r i j.succ.succ` reduces to the definitionally equal term `i + i * r i j`
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Varianta7dda85d86ae0a7118566b80e0f8cd274030846e371d156f6882713d48647836.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Varianta7dda85d86ae0a7118566b80e0f8cd274030846e371d156f6882713d48647836.lean#L648).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f31a765ed75b6fbe3ae881a93afdf3152f18a53f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
