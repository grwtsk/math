# elabWanted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7edeac49ffc81342020cd87ef2692752682603d62ee447c0a63d5f6ad9698682",
  "kind": "def",
  "lexical_name": "elabWanted",
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
  "slug": "elabwanted--1af58325da421b937f3fb8b1",
  "source": {
    "blob": "0127b0d5b9669304194635d542c0d0d58a98fc0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 562,
    "line": 430,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Varianta819246929aca25a341c2f546e5ddccbcf4e1da3245bfea37c2529d484e23936.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1af58325da421b937f3fb8b1d1e70ad7612b0162f3ca53278796e1cf16781930",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Varianta819246929aca25a341c2f546e5ddccbcf4e1da3245bfea37c2529d484e23936.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7edeac49ffc81342020cd87ef2692752682603d62ee447c0a63d5f6ad9698682`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–562.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabWanted (kind : WantedCmdKind) (stx : Syntax)
    (mods : TSyntax ``Lean.Parser.Command.declModifiers)
    (name : TSyntax ``Lean.Parser.Command.declId)
    (args : TSyntaxArray [`ident, `Lean.Parser.Term.hole, `Lean.Parser.Term.bracketedBinder])
    (res : TSyntax `term)
    (body? : Option (TSyntax `term)) : CommandElabM Unit := do
  for arg in args do
    rejectRefsIn "binder type" kind.cmdName arg.raw
  -- Brackets are deduplicated by referenced name across both the statement and the body, so
  -- repeated `❰x❱` references share one parameter binder.
  let nameToHypRef : IO.Ref (NameMap (TSyntax `ident)) ← IO.mkRef {}
  let hypOrderRef : IO.Ref (Array (TSyntax `ident × WantedRefInfo)) ← IO.mkRef #[]
  -- For transparent (derived) references, the replacement is an inlined *term*, not a `d_nm`
  -- binder; cache it by name so repeated `❰nm❱` references reuse the same splice.
  let transparentCache : IO.Ref (NameMap (TSyntax `term)) ← IO.mkRef {}
  -- Surface a reference's transitive leaf-hole dependencies as binders on this declaration (so they
  -- are solvable), deduplicating against binders already added; returns a renaming to apply to the
  -- reference's own binder type / inlined term, mapping each dep's fresh placeholder to the
  -- existing binder it coincides with. New deps are added *before* the reference's own binder,
  -- which refers to them. Used both for explicit `❰…❱` references and for ambient
  -- `instance_wanted` auto-includes —
  -- the latter previously skipped this, leaving an included instance's own deps (e.g. a shared
  -- `❰J❱`) referenced but unbound.
  let surfaceDeps (deps : Array WantedDep) :
      CommandElabM (TSyntax `term → CommandElabM (TSyntax `term)) := do
    let mut renames : Std.HashMap Name Name := {}
    for dep in deps do
      match (← nameToHypRef.get).find? dep.name with
      | some existing => renames := renames.insert dep.ident.getId existing.getId
      | none =>
        nameToHypRef.modify (·.insert dep.name dep.ident)
        hypOrderRef.modify (·.push (dep.ident,
          { kind := .defWanted, binderType := dep.binderType, isClass := dep.isClass }))
    return fun t => do
      if renames.isEmpty then return t
      return ⟨← t.raw.replaceM fun s => do
        if s.isIdent then
          if let some r := renames[s.getId]? then return some (mkIdent r).raw
        return none⟩
  let rewriteRefs (s : Syntax) : CommandElabM Syntax := s.replaceM fun node => do
    unless node.getKind == ``wantedRef do return none
    let identStx : Syntax.Ident := ⟨node[1]⟩
    let nm ← liftCoreM <| Elab.realizeGlobalConstNoOverloadWithInfo identStx
    if let some t := (← transparentCache.get).find? nm then return some t.raw
    match (← nameToHypRef.get).find? nm with
    | some h => return some h.raw
    | none =>
      let refInfo ← classifyWantedRef nm identStx
      let applyRenames ← surfaceDeps refInfo.deps
      match refInfo.transparent with
      | some term =>
        -- Transparent `nm`: inline the real `nm` applied to its surfaced leaf holes. No `d_nm`
        -- binder — `nm` is a genuine definition, not a hole.
        let term' ← applyRenames term
        transparentCache.modify (·.insert nm term')
        return some term'.raw
      | none =>
        let binderType ← applyRenames refInfo.binderType
        let fresh ← freshHypName nm refInfo.kind
        let hyp : TSyntax `ident := mkIdent fresh
        nameToHypRef.modify (·.insert nm hyp)
        hypOrderRef.modify (·.push (hyp, { refInfo with binderType }))
        return some hyp.raw
  let res' : TSyntax `term := ⟨← rewriteRefs res.raw⟩
  let body'? : Option (TSyntax `term) ← body?.mapM fun b => return ⟨← rewriteRefs b.raw⟩
  -- A body with no *user-written* `❰…❱` reference is a complete proof/construction/instance,
  -- and should use the corresponding native keyword. We snapshot `hypOrderRef` *before* the
  -- auto-include loop so ambient `instance_wanted` registrations don't accidentally satisfy
  -- this check.
  if let some body := body? then
    if (← hypOrderRef.get).isEmpty then
      let suggestionStx ← if kind.isInstance then
          -- `instance` uses `Term.attrKind` rather than `declModifiers`, so we drop modifiers
          -- in the suggestion. Users can re-add `@[…]` attributes manually if needed.
          `(command| instance $name:declId $args* : $res := $body)
        else if kind.requireProp then
          `(command| $mods:declModifiers theorem $name $args* : $res := $body)
        else
          `(command| $mods:declModifiers def $name $args* : $res := $body)
      liftCoreM <| Lean.Meta.Tactic.TryThis.addSuggestion stx
        { suggestion := .tsyntax suggestionStx }
      throwError
        "`{kind.cmdName}` with a body but no `❰…❱` reference is just a `{kind.fallbackKeyword}`; \
         either replace `{kind.cmdName}` with `{kind.fallbackKeyword}`, or reference another \
         `theorem_wanted` / `proof_wanted` / `def_wanted` / `instance_wanted` via `❰…❱` \
         in the statement or body"
  -- After user-written brackets have populated `nameToHypRef`, auto-include every registered
  -- `instance_wanted` not already referenced. The auto-includes come *after* user binders so
  -- their generated types can refer to identifiers introduced by user brackets.
  for instName in wantedInstancesExt.getState (← getEnv) do
    if (← nameToHypRef.get).contains instName then continue
    let refInfo ← classifyWantedRef instName stx
    -- Surface the ambient instance's *own* transitive deps too (deduped), so a dependency shared
    -- between several `instance_wanted`s (e.g. a common `❰J❱`) is bound once rather than left
    -- dangling.
    let applyRenames ← surfaceDeps refInfo.deps
    let binderType ← applyRenames refInfo.binderType
    let fresh ← freshHypName instName refInfo.kind
    let hyp : TSyntax `ident := mkIdent fresh
    nameToHypRef.modify (·.insert instName hyp)
    hypOrderRef.modify (·.push (hyp, { refInfo with binderType }))
  let order ← hypOrderRef.get
  -- Class-valued wanted refs become instance binders so Lean's typeclass synth can find them
  -- (including via Π-instance synth when chained through another wanted). Non-class refs become
  -- implicit binders; their own non-class dependencies have already been surfaced as sibling
  -- binders (see `rewriteRefs`) and threaded into the reference's application.
  let mkBinderStx : (TSyntax `ident × WantedRefInfo) →
      CommandElabM (TSyntax ``Lean.Parser.Term.bracketedBinder) := fun (hyp, refInfo) =>
    if refInfo.isClass then
      `(Parser.Term.bracketedBinderF| [$hyp : $(refInfo.binderType)])
    else
      `(Parser.Term.bracketedBinderF| {$hyp : $(refInfo.binderType)})
  -- For `proof_wanted` the `(_ : Prop)` ascription reproduces the "not a proposition" check
  -- `theorem` gives for free; `def_wanted` omits it. `linter.unusedVariables` is
  -- silenced because user binders may only appear in the statement. With a body, the discarded
  -- `have` type-checks `body'` against the statement without preserving it as a proof.
  let wrapper : TSyntax `ident := mkIdent kind.wrapper
  let resAscribed : TSyntax `term ← if kind.requireProp then `(($res' : Prop)) else `($res')
  -- Emit the placeholder declaration with the given generated binders. A `def_wanted` *with a body*
  -- becomes a transparent `@[reducible]` def wrapped in `DerivedWanted`, so `❰foo❱` βι-reduces
  -- to its body and downstream definitional equalities go through; otherwise it is an opaque
  -- `DefWanted`/`ProofWanted` placeholder. The leaves it abstracts over remain opaque placeholders,
  -- so no `axiom`/`sorry` is introduced. (See the module docstring.)
  let emitDecl : Array (TSyntax ``Lean.Parser.Term.bracketedBinder) → CommandElabM Unit :=
    fun binders => do
      if body'?.isSome && !kind.requireProp && !kind.isInstance then
        let body' := body'?.get!
        -- `noncomputable`: a transparent placeholder may derive from noncomputable data (it is a
        -- blueprint, never compiled); the `@[reducible]` + `DerivedWanted` projection still
        -- unfold for definitional equality regardless.
        elabCommand <| ← `(
          section
          set_option linter.unusedVariables false
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Varianta819246929aca25a341c2f546e5ddccbcf4e1da3245bfea37c2529d484e23936.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Varianta819246929aca25a341c2f546e5ddccbcf4e1da3245bfea37c2529d484e23936.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0127b0d5b9669304194635d542c0d0d58a98fc0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
