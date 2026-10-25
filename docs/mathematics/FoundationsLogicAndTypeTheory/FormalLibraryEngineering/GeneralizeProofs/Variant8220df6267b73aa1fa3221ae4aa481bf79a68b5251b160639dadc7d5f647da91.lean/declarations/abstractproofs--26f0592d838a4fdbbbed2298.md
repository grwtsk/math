# abstractProofs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd3ac587c431711138854cf716c481fbfdb476ea06a9152f5f61cdeb0214f033",
  "kind": "def",
  "lexical_name": "abstractProofs",
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
  "slug": "abstractproofs--26f0592d838a4fdbbbed2298",
  "source": {
    "blob": "6d13bfa7a36083eb7d8578b038e9db071990e897",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 228,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26f0592d838a4fdbbbed2298c84d9fbdf8e9415476d69f292a53ef2499e00385",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd3ac587c431711138854cf716c481fbfdb476ea06a9152f5f61cdeb0214f033`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def abstractProofs (e : Expr) (ty? : Option Expr) : MAbs Expr := do
  if (← read).depth ≤ (← read).config.maxDepth then
    MAbs.withRecurse <| visit (← instantiateMVars e) ty?
  else
    return e
where
  /--
  Core implementation of `abstractProofs`.
  -/
  visit (e : Expr) (ty? : Option Expr) : MAbs Expr := do
    trace[Tactic.generalize_proofs] "visit (fvars := {(← read).fvars}) e is {e}"
    if (← read).config.debug then
      if let some ty := ty? then
        unless ← isDefEq (← inferType e) ty do
          throwError "visit: type of{indentD e}\nis not{indentD ty}"
    if e.isAtomic then
      return e
    else
      checkCache (e, ty?) fun _ => do
        if ← isProof e then
          visitProof e ty?
        else
          match e with
          | .forallE n t b i =>
            withLocalDecl n i (← visit t none) fun x => MAbs.withLocal x do
              mkForallFVars #[x] (← visit (b.instantiate1 x) none)
          | .lam n t b i => do
            withLocalDecl n i (← visit t none) fun x => MAbs.withLocal x do
              let ty'? ←
                if let some ty := ty? then
                  let .forallE _ _ tyB _ ← whnfD ty
                    | throwError "Expecting forall in abstractProofs .lam"
                  pure <| some <| tyB.instantiate1 x
                else
                  pure none
              mkLambdaFVars #[x] (← visit (b.instantiate1 x) ty'?)
          | .letE n t v b nondep =>
            let t' ← visit t none
            mapLetDecl n t' (← visit v t') (nondep := nondep) fun x => MAbs.withLocal x do
              visit (b.instantiate1 x) ty?
          | .app .. =>
            e.withApp fun f args => do
              let f' ← visit f none
              let argTys ← appArgExpectedTypes f' args ty?
              let mut args' := #[]
              for arg in args, argTy in argTys do
                args' := args'.push <| ← visit arg argTy
              return mkAppN f' args'
          | .mdata _ b  => return e.updateMData! (← visit b ty?)
          -- Giving up propagating expected types for `.proj`, which we shouldn't see anyway:
          | .proj _ _ b => return e.updateProj! (← visit b none)
          | _           => unreachable!
  /--
  Core implementation of abstracting a proof.
  -/
  visitProof (e : Expr) (ty? : Option Expr) : MAbs Expr := do
    let eOrig := e
    let fvars := (← read).fvars
    -- Strip metadata and beta reduce, in case there are some false dependencies
    let e := e.withApp' fun f args => f.beta args
    -- If head is atomic and arguments are bound variables, then it's already abstracted.
    if e.withApp' fun f args => f.isAtomic && args.all fvars.contains then
      return e
    -- Abstract `fvars` out of `e` to make the abstracted proof `pf`
    -- The use of `mkLambdaFVarsUsedOnly` is *key* to make sure that the fvars in `fvars`
    -- don't leak into the expression, since that would poison the cache in `MonadCacheT`.
    let e ←
      if let some ty := ty? then
        if (← read).config.debug then
          unless ← isDefEq ty (← inferType e) do
            throwError m!"visitProof: incorrectly propagated type{indentD ty}\nfor{indentD e}"
        mkExpectedTypeHint e ty
      else pure e
    trace[Tactic.generalize_proofs] "before mkLambdaFVarsUsedOnly, e = {e}\nfvars={fvars}"
    if (← read).config.debug then
      unless ← Lean.MetavarContext.isWellFormed (← getLCtx) e do
        throwError m!"visitProof: proof{indentD e}\nis not well-formed in the current context\n\
          fvars: {fvars}"
    let (fvars', pf) ← mkLambdaFVarsUsedOnly fvars e
    if !(← read).config.abstract && !fvars'.isEmpty then
      trace[Tactic.generalize_proofs] "'abstract' is false and proof uses fvars, not abstracting"
      return eOrig
    trace[Tactic.generalize_proofs] "after mkLambdaFVarsUsedOnly, pf = {pf}\nfvars'={fvars'}"
    if (← read).config.debug then
      unless ← Lean.MetavarContext.isWellFormed (← read).initLCtx pf do
        throwError m!"visitProof: proof{indentD pf}\nis not well-formed in the initial context\n\
          fvars: {fvars}\n{(← mkFreshExprMVar none).mvarId!}"
    let pfTy ← instantiateMVars (← inferType pf)
    -- Visit the proof type to normalize it and abstract more proofs
    let pfTy ← abstractProofs pfTy none
    -- Check if there is already a recorded proof for this proposition.
    trace[Tactic.generalize_proofs] "finding {pfTy}"
    if let some pf' ← MAbs.findProof? pfTy then
      trace[Tactic.generalize_proofs] "found proof"
      return mkAppN pf' fvars'
    -- Record the proof in the state and return the proof.
    MAbs.insertProof pfTy pf
    trace[Tactic.generalize_proofs] "added proof"
    return mkAppN pf fvars'

/--
Create a mapping of all propositions in the local context to their fvars.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d13bfa7a36083eb7d8578b038e9db071990e897` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
