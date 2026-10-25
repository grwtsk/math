# preprocessMatchCongrEqType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d9d25922de04ddcdb0bfbc63a2bb8471f893aaa94ad1e60a4907627f8795260",
  "kind": "def",
  "lexical_name": "preprocessMatchCongrEqType",
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
  "slug": "preprocessmatchcongreqtype--e27abe1ab089b4d5d5a54c7f",
  "source": {
    "blob": "654387b687c2b34418a7dd62aa266d893b498135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 194,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e27abe1ab089b4d5d5a54c7f24b82c3a97ca394dbae210722cd8b54ca7ba2c36",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d9d25922de04ddcdb0bfbc63a2bb8471f893aaa94ad1e60a4907627f8795260`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def preprocessMatchCongrEqType (type : Expr) : MetaM Expr := do
  forallTelescopeReducing type fun hs resultType => do
    let lhs ← match_expr resultType with
      | Eq _ lhs _ => pure lhs
      | HEq _ lhs _ _ => pure lhs
      | _ => return type
    let lhsFn := lhs.getAppFn
    let .const declName _ := lhsFn | return type
    let some matcherInfo ← getMatcherInfo? declName | return type
    let range := matcherInfo.getDiscrRange
    let mut args := lhs.getAppArgs
    for h in hs do
      match_expr (← inferType h) with
      | f@Eq α lhs rhs =>
        for i in range do
          if lhs == args[i]! then
            args := args.set! i (mkGenPattern f.constLevels! α h lhs rhs)
            break
      | f@HEq α lhs β rhs =>
        for i in range do
          if lhs == args[i]! then
            args := args.set! i (mkGenHEqPattern f.constLevels! α β h lhs rhs)
            break
      | _ => pure ()
    let lhsNew := mkAppN lhsFn args
    let resultTypeFn := resultType.getAppFn
    let resultArgs := resultType.getAppArgs
    let resultType := mkAppN resultTypeFn (resultArgs.set! 1 lhsNew)
    mkForallFVars hs resultType

/--
A heuristic procedure for detecting generalized patterns.
For example, given the theorem
```
theorem Option.pbind_some' {α β} {x : Option α} {a : α} {f : (a : α) → x = some a → Option β}
  (h : x = some a) : pbind x f = f a h
```
In the current implementation, we support only occurrences in the resulting type.
Thus, the following resulting type is generated for the example above:
```
pbind (Grind.genPattern h x (some a)) f = f a h
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `654387b687c2b34418a7dd62aa266d893b498135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
