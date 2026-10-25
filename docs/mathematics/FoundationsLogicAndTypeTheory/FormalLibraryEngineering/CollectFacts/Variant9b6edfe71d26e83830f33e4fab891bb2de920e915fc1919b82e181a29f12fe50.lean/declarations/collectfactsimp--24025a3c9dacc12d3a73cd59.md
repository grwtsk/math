# collectFactsImp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ccfabecd59e97e5f71f66287fd5e488f23d1c6de12f0b6b9586837667e201a59",
  "kind": "def",
  "lexical_name": "collectFactsImp",
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
  "slug": "collectfactsimp--24025a3c9dacc12d3a73cd59",
  "source": {
    "blob": "65d43f730c39982962b0c61018d412b1ba90d4ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant9b6edfe71d26e83830f33e4fab891bb2de920e915fc1919b82e181a29f12fe50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24025a3c9dacc12d3a73cd599d66398017c8325aa496023dfc12ed884646d386",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant9b6edfe71d26e83830f33e4fab891bb2de920e915fc1919b82e181a29f12fe50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ccfabecd59e97e5f71f66287fd5e488f23d1c6de12f0b6b9586837667e201a59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def collectFactsImp (only? : Bool) (hyps : Array Expr) (negGoal : Expr) :
    CollectFactsM Unit := do
  let ctx ← getLCtx
  for expr in hyps do
    processExpr expr
  processExpr negGoal
  if !only? then
    for ldecl in ctx do
      if ldecl.isImplementationDetail then
        continue
      let e := ldecl.toExpr
      if e == negGoal then
        continue
      processExpr e
where
  /-- Extracts facts and atoms from the expression. -/
  processExpr (expr : Expr) : CollectFactsM Unit := do
    let type ← inferType expr
    if !(← isProp type) then
      return
    let ⟨u, type, expr⟩ ← inferTypeQ expr
    let _ : u =QL 0 := ⟨⟩
    match type with
    | ~q(@Eq ($α : Type _) $x $y) =>
      if (← synthInstance? (q(Preorder $α))).isSome then
        let α ← addType α
        let xIdx ← addAtom α x
        let yIdx ← addAtom α y
        addFact α <| .eq xIdx yIdx expr
    | ~q(@LE.le $α $inst $x $y) =>
      let α ← addType α
      let xIdx ← addAtom α x
      let yIdx ← addAtom α y
      addFact α <| .le xIdx yIdx expr
    | ~q(@LT.lt $α $inst $x $y) =>
      let α ← addType α
      let xIdx ← addAtom α x
      let yIdx ← addAtom α y
      addFact α <| .lt xIdx yIdx expr
    | ~q(@Ne ($α : Type _) $x $y) =>
      if (← synthInstance? (q(Preorder $α))).isSome then
        let α ← addType α
        let xIdx ← addAtom α x
        let yIdx ← addAtom α y
        addFact α <| .ne xIdx yIdx expr
    | ~q(Not $p) =>
      match p with
      | ~q(@LE.le $α $inst $x $y) =>
        let α ← addType α
        let xIdx ← addAtom α x
        let yIdx ← addAtom α y
        addFact α <| .nle xIdx yIdx expr
      | ~q(@LT.lt $α $inst $x $y) =>
        let α ← addType α
        let xIdx ← addAtom α x
        let yIdx ← addAtom α y
        addFact α <| .nlt xIdx yIdx expr
      | _ => return
    | ~q($p ∧ $q) =>
      processExpr q(And.left $expr)
      processExpr q(And.right $expr)
    | ~q(Exists $P) =>
      processExpr q(Exists.choose_spec $expr)
    | _ => return

/-- Collects facts from the local context. `negGoal` is the negated goal, `hyps` is the expressions
passed to the tactic using square brackets. If `only?` is true, we collect facts only from `hyps`
and `negGoal`, otherwise we also use the local context.

For each occurring type `α`, the returned map contains an array containing all collected
`AtomicFact`s about atoms of type `α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant9b6edfe71d26e83830f33e4fab891bb2de920e915fc1919b82e181a29f12fe50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant9b6edfe71d26e83830f33e4fab891bb2de920e915fc1919b82e181a29f12fe50.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65d43f730c39982962b0c61018d412b1ba90d4ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
