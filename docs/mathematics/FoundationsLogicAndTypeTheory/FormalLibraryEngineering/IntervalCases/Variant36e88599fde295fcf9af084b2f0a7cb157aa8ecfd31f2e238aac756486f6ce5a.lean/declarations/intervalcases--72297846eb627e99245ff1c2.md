# intervalCases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed592641540fc8c2088f5dd7959e5fb7aba98245fb62a68aad69e00fcc09909a",
  "kind": "def",
  "lexical_name": "intervalCases",
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
  "slug": "intervalcases--72297846eb627e99245ff1c2",
  "source": {
    "blob": "d1fdf7b7d018cdc1bf84f43fa53b17bf5d338608",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 278,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:72297846eb627e99245ff1c21ca15dc0969f91e8e921922edd16276ed8494ad7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed592641540fc8c2088f5dd7959e5fb7aba98245fb62a68aad69e00fcc09909a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def intervalCases (g : MVarId) (e e' : Expr) (lbs ubs : Array Expr) (mustUseBounds := false) :
    MetaM (Array IntervalCasesSubgoal) := g.withContext do
  let α ← whnfR (← inferType e)
  let m ←
    if α.isConstOf ``Nat then pure natMethods else
    if α.isConstOf ``Int then pure intMethods else
    -- if α.isConstOf ``PNat then pure pnatMethods else
    throwError "interval_cases failed: unsupported type {α}"
  let mut lb ← try? (m.initLB e)
  for pf in lbs do
    if let some lb1 ← try? (m.getBound e pf true) then
      if lb.all (·.1.asLower < lb1.1.asLower) then
        lb := some lb1
    else if mustUseBounds then
      throwError "interval_cases failed: provided bound '{← inferType pf}' cannot be evaluated"
  let mut ub ← try? (m.initUB e)
  for pf in ubs do
    if let some ub1 ← try? (m.getBound e pf false) then
      if ub.all (·.1.asUpper > ub1.1.asUpper) then
        ub := some ub1
    else if mustUseBounds then
      throwError "interval_cases failed: provided bound '{← inferType pf}' cannot be evaluated"
  match lb, ub with
  | some (z1, e1, p1), some (z2, e2, p2) =>
    if z1.asLower > z2.asUpper then
      (← g.exfalso).assign (← m.inconsistentBounds z1 z2 e1 e2 p1 p2 e)
      pure #[]
    else
      let mut goals := #[]
      let lo := z1.asLower
      let tgt ← g.getType
      let tag ← g.getTag
      for i in [:(z2.asUpper-lo+1).toNat] do
        let z := lo+i
        let rhs ← m.mkNumeral z
        let ty ← mkArrow (← mkEq e rhs) tgt
        let goal ← mkFreshExprMVar ty .syntheticOpaque (appendTag tag (.mkSimple (toString z)))
        goals := goals.push { rhs, value := z, goal := goal.mvarId! }
      m.bisect g goals.toSubarray z1 z2 e1 e2 p1 p2 e
      pure goals
  | none, some _ => throwError "interval_cases failed: could not find lower bound on {e'}"
  | some _, none => throwError "interval_cases failed: could not find upper bound on {e'}"
  | none, none => throwError "interval_cases failed: could not find bounds on {e'}"

end IntervalCases

open IntervalCases Tactic

/--
`interval_cases n` searches for upper and lower bounds on a variable `n`,
and if bounds are found,
splits into separate cases for each possible value of `n`.

As an example, in
```
example (n : ℕ) (w₁ : n ≥ 3) (w₂ : n < 5) : n = 3 ∨ n = 4 := by
  interval_cases n
  all_goals simp
```
after `interval_cases n`, the goals are `3 = 3 ∨ 3 = 4` and `4 = 3 ∨ 4 = 4`.

You can also explicitly specify a lower and upper bound to use,
as `interval_cases using hl, hu`.
The hypotheses should be in the form `hl : a ≤ n` and `hu : n < b`,
in which case `interval_cases` calls `fin_cases` on the resulting fact `n ∈ Set.Ico a b`.

You can specify a name `h` for the new hypothesis,
as `interval_cases h : n` or `interval_cases h : n using hl, hu`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1fdf7b7d018cdc1bf84f43fa53b17bf5d338608` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
