# processConstructor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a22275d0ced041727a949de3baeccbba3c9e4fbee3fc3e7ff8bfb23b46219c2e",
  "kind": "def",
  "lexical_name": "processConstructor",
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
  "slug": "processconstructor--0babb2f9c7d3ef8f3c4c2b93",
  "source": {
    "blob": "b3f746082ba1cc8331c685092032854f255b087f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 622,
    "line": 549,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0babb2f9c7d3ef8f3c4c2b93c9d13c735b4838b466c4bcd0cd4523148713ccea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a22275d0ced041727a949de3baeccbba3c9e4fbee3fc3e7ff8bfb23b46219c2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 549–622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def processConstructor (p : Problem) : MetaM (Array Problem) := do
  trace[Meta.Match.match] "constructor step"
  let x :: xs := p.vars | unreachable!
  let interestingCtors? ←
    -- We use a sparse case analysis only if there is at least one non-constructor pattern,
    -- but not just because there are constructors missing (in that case we benefit from
    -- the eager split in ruling out constructors by type or by a more explicit error message)
    if backward.match.sparseCases.get (← getOptions) && hasInaccessiblePattern p then
      let ctors := collectCtors p
      trace[Meta.Match.match] "using sparse cases: {ctors}"
      pure (some ctors)
    else
      pure none
  let subgoals? ← commitWhenSome? do
     let subgoals ←
       try
         p.mvarId.cases x.fvarId! (interestingCtors? := interestingCtors?)
       catch ex =>
         if p.alts.isEmpty then
           /- If we have no alternatives and dependent pattern matching fails, then a "missing cases" error is better than a "stuck" error message. -/
           return none
         else
           throwCasesException p ex
     if subgoals.isEmpty then
       /- Easy case: we have solved problem `p` since there are no subgoals -/
       return some #[]
     else if !p.alts.isEmpty then
       return some subgoals
     else do
       let isRec ← withGoalOf p <| hasRecursiveType x
        /- If there are no alternatives and the type of the current variable is recursive, we do NOT consider
          a constructor-transition to avoid nontermination.
          TODO: implement a more general approach if this is not sufficient in practice -/
       if isRec then
         return none
       else
         return some subgoals
  let some subgoals := subgoals? | return #[{ p with vars := xs }]
  subgoals.mapM fun subgoal => subgoal.mvarId.withContext do
    -- withTraceNode `Meta.Match.match (msg := (return m!"{exceptEmoji ·} case {subgoal.ctorName}")) do
    if let some ctorName := subgoal.ctorName then
      -- A normal constructor case
      let subst    := subgoal.subst
      let fields   := subgoal.fields.toList
      let newVars  := fields ++ xs
      let newVars  := newVars.map fun x => x.applyFVarSubst subst
      let subex    := Example.ctor ctorName <| fields.map fun field => match field with
        | .fvar fvarId => Example.var fvarId
        | _            => Example.underscore -- This case can happen due to dependent elimination
      let examples := p.examples.map <| Example.replaceFVarId x.fvarId! subex
      let examples := examples.map <| Example.applyFVarSubst subst
      let newAlts  := p.alts.filter fun alt => match alt.patterns with
        | .ctor n .. :: _       => n == ctorName
        | .inaccessible _ :: _  => true
        | _                     => unreachable!
      let newAlts  := newAlts.map fun alt => alt.applyFVarSubst subst
      let newAlts ← newAlts.mapM fun alt => do
        match alt.patterns with
        | .ctor _ _ _ fieldPats :: ps  => return { alt with patterns := fieldPats ++ ps }
        | .inaccessible _ :: ps        => return { alt with patterns := fields.map .inaccessible ++ ps }
        | _                            => unreachable!
      return { p with mvarId := subgoal.mvarId, vars := newVars, alts := newAlts, examples := examples }
    else
      -- A catch-all case
      let subst := subgoal.subst
      trace[Meta.Match.match] "constructor catch-all case"
      let examples := p.examples.map <| Example.applyFVarSubst subst
      let newVars := p.vars.map fun x => x.applyFVarSubst subst
      let newAlts := p.alts.filter fun alt => match alt.patterns with
        | .ctor .. :: _ => false
        | _             => true
      let newAlts := newAlts.map fun alt => alt.applyFVarSubst subst
      return { p with mvarId := subgoal.mvarId, alts := newAlts, vars := newVars, examples := examples }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean#L549).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3f746082ba1cc8331c685092032854f255b087f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
