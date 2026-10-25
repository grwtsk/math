# rcasesCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98f6deb77c2d07a4a95e64736f815dae67b3bbd390a24f1a985e98141de31b91",
  "kind": "def",
  "lexical_name": "rcasesCore",
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
  "slug": "rcasescore--8ec00449a4084f7f2c3bcd5b",
  "source": {
    "blob": "12e86ccedbef509addf70d63a92bd5a1c1de1256",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 278,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant38416bd431978e039946335b9811f96439abbdcc6d7fd5d3557aadc8992ddfdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ec00449a4084f7f2c3bcd5bb17419ee38ba39de5b133f9235f536c1c5744644",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant38416bd431978e039946335b9811f96439abbdcc6d7fd5d3557aadc8992ddfdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98f6deb77c2d07a4a95e64736f815dae67b3bbd390a24f1a985e98141de31b91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def rcasesCore (g : MVarId) (fs : FVarSubst) (clears : Array FVarId) (e : Expr) (a : α)
    (pat : RCasesPatt) (cont : MVarId → FVarSubst → Array FVarId → α → Term.TermElabM α) :
    TermElabM α := do
  let asFVar : Expr → MetaM _
    | .fvar e => pure e
    | e => throwError "Tactic `rcases` failed: `{e}` is not a free variable"
  let e := fs.apply e
  withRef pat.ref <| g.withContext do match pat with
  | .one ref `rfl =>
    Term.synthesizeSyntheticMVarsNoPostponing
    -- Note: the mdata prevents the span from getting highlighted like a variable
    Term.addTermInfo' ref (.mdata {} e)
    let (fs, g) ← substEq g (← asFVar e) fs
    cont g fs clears a
  | .one ref _ =>
    if e.isFVar then
      Term.addLocalVarInfo ref e
    cont g fs clears a
  | .clear ref =>
    Term.addTermInfo' ref (.mdata {} e)
    cont g fs (if let .fvar e := e then clears.push e else clears) a
  | .typed ref pat ty =>
    Term.addTermInfo' ref (.mdata {} e)
    let expected ← Term.elabType ty
    let etype ← inferType e
    unless ← isDefEq etype expected do
      Term.throwTypeMismatchError "Tactic `rcases` failed: scrutinee" expected etype e
    let g ← if let .fvar e := e then g.replaceLocalDeclDefEq e expected else pure g
    rcasesCore g fs clears e a pat cont
  | .paren ref p
  | .alts ref [p] =>
    Term.addTermInfo' ref (.mdata {} e)
    rcasesCore g fs clears e a p cont
  | _ =>
    Term.addTermInfo' pat.ref (.mdata {} e)
    let _ ← asFVar e
    Term.synthesizeSyntheticMVarsNoPostponing
    let type ← whnfD (← inferType e)
    let failK {α} _ : TermElabM α :=
      throwError "Tactic `rcases` failed: `{e} : {type}` is not an inductive datatype"
    let (r, subgoals) ← matchConst type.getAppFn failK fun
      | ConstantInfo.quotInfo info, _ => do
        unless info.kind matches QuotKind.type do failK ()
        let pat := pat.asAlts.headD default
        let (explicit, pat₁) := pat.asTuple
        let ([x], ps) := processConstructor pat.ref #[{}] explicit 0 pat₁ | unreachable!
        let (vars, g) ← g.revert (← getFVarsToGeneralize #[e])
        g.withContext do
          let elimInfo ← getElimInfo `Quot.ind
          let res ← ElimApp.mkElimApp elimInfo #[e] (← g.getTag)
          let elimArgs := res.elimApp.getAppArgs
          ElimApp.setMotiveArg g elimArgs[elimInfo.motivePos]!.mvarId! #[e.fvarId!]
          g.assign res.elimApp
          let #[{ name := n, mvarId := g, .. }] := res.alts | unreachable!
          let (v, g) ← g.intro x
          let (varsOut, g) ← g.introNP vars.size
          let fs' := (vars.zip varsOut).foldl (init := fs) fun fs (v, w) => fs.insert v (mkFVar w)
          pure ([(n, ps)], #[{mvarId := g, fields := #[mkFVar v], subst := fs', ctorName := n }])
      | ConstantInfo.inductInfo info, _ => do
        let (altVarNames, r) ← processConstructors pat.ref info.numParams #[] info.ctors pat.asAlts
        (r, ·) <$> g.cases e.fvarId! altVarNames (useNatCasesAuxOn := true)
      | _, _ => failK ()
    (·.2) <$> subgoals.foldlM (init := (r, a)) fun (r, a) ⟨goal, ctorName⟩ => do
      let rec
      /-- Runs `rcasesContinue` on the first pattern in `r` with a matching `ctorName`.
      The unprocessed patterns (subsequent to the matching pattern) are returned. -/
      align : List/-Π-/ (Name × List/-Π-/ RCasesPatt) → TermElabM (List/-Π-/ (Name × List/-Π-/ RCasesPatt) × α)
      | [] => pure ([], a)
      | (tgt, ps) :: as => do
        if tgt == ctorName then
          let fs := fs.append goal.subst
          (as, ·) <$> rcasesContinue goal.mvarId fs clears a (ps.zip goal.fields.toList) cont
        else
          align as
      align r

/--
This will match a list of patterns against a list of hypotheses `e`. The arguments are similar
to `rcasesCore`, but the patterns and local variables are in `pats`. Because the calls are all
nested in continuations, later arguments can be matched many times, once per goal produced by
earlier arguments. For example `⟨a | b, ⟨c, d⟩⟩` performs the `⟨c, d⟩` match twice, once on the
`a` branch and once on `b`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant38416bd431978e039946335b9811f96439abbdcc6d7fd5d3557aadc8992ddfdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant38416bd431978e039946335b9811f96439abbdcc6d7fd5d3557aadc8992ddfdc.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12e86ccedbef509addf70d63a92bd5a1c1de1256` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
