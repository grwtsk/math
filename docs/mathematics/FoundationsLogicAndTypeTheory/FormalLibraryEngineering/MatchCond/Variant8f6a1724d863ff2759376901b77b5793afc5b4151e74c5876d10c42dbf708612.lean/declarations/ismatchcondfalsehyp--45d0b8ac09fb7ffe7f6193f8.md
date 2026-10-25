# isMatchCondFalseHyp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67ce0183ce6bb44289f17c5ec5596b8969111366b7e2d81477016dee67537063",
  "kind": "def",
  "lexical_name": "isMatchCondFalseHyp",
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
  "slug": "ismatchcondfalsehyp--45d0b8ac09fb7ffe7f6193f8",
  "source": {
    "blob": "f747a7b07ad04a39d62959d53ab792797c8c4230",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 210,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45d0b8ac09fb7ffe7f6193f8bd796d6514133cb0d995852fddc3932bbced10bc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67ce0183ce6bb44289f17c5ec5596b8969111366b7e2d81477016dee67537063`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private partial def isMatchCondFalseHyp (e : Expr) : GoalM Bool := do
  let some (_, lhs, rhs) := isEqHEq? e | return false
  isFalse lhs rhs
where
  isFalse (lhs rhs : Expr) : GoalM Bool := do
    if lhs.hasLooseBVars then return false
    let root ← getRootENode lhs
    if root.ctor then
      let some ctorLhs ← isConstructorApp? root.self | return false
      let some ctorRhs ← isConstructorApp? rhs | return false
      if ctorLhs.name ≠ ctorRhs.name then return true
      let lhsArgs := root.self.getAppArgs
      let rhsArgs := rhs.getAppArgs
      for i in ctorLhs.numParams...(ctorLhs.numParams + ctorLhs.numFields) do
        if (← isFalse lhsArgs[i]! rhsArgs[i]!) then
          return true
      return false
    else if root.interpreted then
      if rhs.hasLooseBVars then return false
      unless (← isLitValue rhs) do return false
      return (← normLitValue root.self) != (← normLitValue rhs)
    else
      return false

/--
Returns `true` if `e` is a `Grind.MatchCond`, and it has been satisfied.
Recall that we use `Grind.MatchCond` to annotate conditional `match`-equations.
Consider the following example:
```
inductive S where
  | mk1 (n : Nat)
  | mk2 (n : Nat) (s : S)
  | mk3 (n : Bool)
  | mk4 (s1 s2 : S)

def f (x y : S) :=
  match x, y with
  | .mk1 _, _ => 2
  | _, .mk2 1 (.mk4 _ _) => 3
  | .mk3 _, _ => 4
  | _, _ => 5
```
The `match`-expression in the example above has overlapping patterns and
consequently produces conditional `match` equations. Thus, `grind` generates
the following auxiliary `Grind.MatchCond` terms for an application `f a b`:
- `Grind.MatchCond (∀ (n : Nat), a = S.mk1 n → False)`
- `Grind.MatchCond (∀ (s1 s2 : S), b = S.mk2 1 (s1.mk4 s2) → False)`
- `Grind.MatchCond (∀ (n : Bool), a = S.mk3 n → False)`

`isSatisfied` uses the fact that constructor applications and literal values
are always the root of their equivalence classes.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f747a7b07ad04a39d62959d53ab792797c8c4230` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
