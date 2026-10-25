# main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb2489e6607d537aee6a941156a47d0d94a0b2aed7086f4b50b69dfdee8d1049",
  "kind": "def",
  "lexical_name": "main",
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
  "slug": "main--7a383c2ce1c71bd01abc8c82",
  "source": {
    "blob": "4df90954a89531a08e5cf1aac0d9095d7a7009ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 770,
    "line": 714,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a383c2ce1c71bd01abc8c82b1164ae3738596e0c1fd0632741a913b5a01a668",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb2489e6607d537aee6a941156a47d0d94a0b2aed7086f4b50b69dfdee8d1049`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 714–770.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def main (patternVarDecls : Array PatternVarDecl) (ps : Array Expr) (matchType : Expr) (k : Array LocalDecl → Array Pattern → Expr → TermElabM α) : TermElabM α := do
  let explicitPatternVars := patternVarDecls.map fun decl => decl.fvarId
  let (ps, s) ← ps.mapM normalize |>.run { explicitPatternVars } |>.run {}
  let patternVars ← topSort s.patternVars
  trace[Elab.match] "patternVars after topSort: {patternVars}"
  for explicit in explicitPatternVars do
    unless patternVars.any (· == mkFVar explicit) do
      withInPattern do
        throwError "Invalid pattern(s): `{mkFVar explicit}` is an explicit pattern variable, but it only occurs in positions that are inaccessible to pattern matching:{indentD (MessageData.joinSep (ps.toList.map (MessageData.ofExpr .)) m!"\n\n")}"
  let packed ← pack patternVars ps matchType
  trace[Elab.match] "packed: {packed}"
  withErasedFVars explicitPatternVars do
    check packed
    unpack packed fun patternVars patterns matchType => do
      let localDecls ← patternVars.mapM fun x => x.fvarId!.getDecl
      trace[Elab.match] "patternVars: {patternVars}, matchType: {matchType}"
      k localDecls (← patterns.mapM fun p => toPattern p) matchType
where
  pack (patternVars : Array Expr) (ps : Array Expr) (matchType : Expr) : MetaM Expr := do
    /-
     Recall that some of the `patternVars` are metavariables without a user facing name.
     Thus, this method tries to infer names for them using `ps` before performing the `mkLambdaFVars` abstraction.
     Let `?m` be a metavariable in `patternVars` without a user facing name.
     The heuristic uses the patterns `ps`. We traverse the patterns from right to left searching for applications
     `f ... ?m`. The name for the corresponding `f`-parameter is used to name `?m`.
     We search from right to left to make sure we visit a pattern before visiting its indices. Example:
     ```
     #[@List.cons α i ?m, @HList.cons α β i ?m a as, @Member.head α i ?m]
     ```
    -/
    let setMVarsAt (e : Expr) : StateRefT (Array MVarId) MetaM Unit := do
      let mvarIds ← setMVarUserNamesAt (← erasePatternRefAnnotations e) patternVars
      modify (· ++ mvarIds)
    let go : StateRefT (Array MVarId) MetaM Expr := do
      try
        for p in ps.reverse do
          setMVarsAt p
        mkLambdaFVars patternVars (← packMatchTypePatterns matchType ps) (binderInfoForMVars := BinderInfo.default)
      finally
        resetMVarUserNames (← get)
    go |>.run' #[]

  unpack (packed : Expr) (k : (patternVars : Array Expr) → (patterns : Array Expr) → (matchType : Expr) → TermElabM α) : TermElabM α :=
    let rec go (packed : Expr) (patternVars : Array Expr) : TermElabM α := do
      match packed with
      | .lam n d b _ =>
        withLocalDecl n .default (← erasePatternRefAnnotations (← eraseInaccessibleAnnotations d)) (kind := .ofBinderName n) fun patternVar =>
          go (b.instantiate1 patternVar) (patternVars.push patternVar)
      | _ =>
        let (matchType, patterns) := unpackMatchTypePatterns packed
        let matchType ← erasePatternRefAnnotations (← eraseInaccessibleAnnotations matchType)
        let patterns ← patterns.mapM (savePatternInfo ·)
        k patternVars patterns matchType
    go packed #[]

end ToDepElimPattern

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean#L714).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4df90954a89531a08e5cf1aac0d9095d7a7009ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
