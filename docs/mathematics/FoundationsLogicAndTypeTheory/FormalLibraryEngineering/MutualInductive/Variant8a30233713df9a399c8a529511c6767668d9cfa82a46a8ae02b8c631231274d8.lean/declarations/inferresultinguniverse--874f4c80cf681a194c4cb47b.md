# inferResultingUniverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:185a03952015af90bf53cab003cab9343f46844a68435c97cdcb43d62728b99d",
  "kind": "def",
  "lexical_name": "inferResultingUniverse",
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
  "slug": "inferresultinguniverse--874f4c80cf681a194c4cb47b",
  "source": {
    "blob": "70adc2c0ca9bfa1e7a54b5e64de2521494b71cb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1042,
    "line": 948,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant8a30233713df9a399c8a529511c6767668d9cfa82a46a8ae02b8c631231274d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:874f4c80cf681a194c4cb47b6fa2cd715f8e3d16c5598b65381c34b751368b6d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant8a30233713df9a399c8a529511c6767668d9cfa82a46a8ae02b8c631231274d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:185a03952015af90bf53cab003cab9343f46844a68435c97cdcb43d62728b99d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 948–1042.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def inferResultingUniverse (views : Array InductiveView)
    (numParams : Nat) (indTypes : List InductiveType) (indFVars : Array Expr) (typeLMVarIds : Array LMVarId) :
    TermElabM ResultingUniverseResult := do
  let u ← getResultingUniverse indTypes >>= instantiateLevelMVars
  -- For `Prop` candidates, need to examine `u` itself, rather than `univForInfer` (which has been simplified).
  if let Level.mvar mvarId := u.normalize then
    if ← isPropCandidate numParams indTypes indFVars then
      -- May as well assign now, since `Level.zero` is already normalized.
      assignLevelMVar mvarId Level.zero
      return { u := u, assign? := none }
  -- Proceed with non-`Prop`-candidate case.
  let univForInfer ← withViewTypeRef views <| processResultingUniverseForInference u
  let r@(Level.mvar mvarId) := univForInfer.getLevelOffset | return { u := u, assign? := none }
  let rOffset := univForInfer.getOffset
  /- Collect universe level constraints -/
  let acc ← collectUniverseConstraints views r rOffset numParams indTypes typeLMVarIds
  -- Add `1 ≤ ?r + rOffset` if `rOffset = 0`.
  let acc := if rOffset == 0 then acc.push .zero (-1) else acc
  -- Filter the accumulated constraints for the ones that are not already satisfied.
  let rConstraints := acc.levels.fold (init := []) fun parts l k =>
    /-
    The constraint is `l ≤ ?r + k`, where `k` might be negative.
    Adding `rOffset - k` to both sides gets the "ideal" constraint `l + (rOffset - k) ≤ ?r + rOffset`.
    If `l + (rOffset - k) ≤ u` already, we do not need to incorporate it.
    -/
    if u.geq (l.addOffset (rOffset - k).toNat) then
      parts
    else
      (l, k) :: parts
  trace[Elab.inductive] "inferResultingUniverse r: {r}, rOffset: {rOffset}, rConstraints: {rConstraints}"
  /- Compute the inferred `r` -/
  let rInferred := Level.normalize <| rConstraints.foldl (init := Level.zero) fun u' (level, k) =>
    -- If `k ≤ 0`, then add `level + (-k) ≤ ?r` constraint, otherwise add `level ≤ ?r`.
    mkLevelMax' u' <| level.addOffset (-k).toNat
  let uInferred := (u.replace fun v => if v == r then some rInferred else none).normalize
  /- Analyze "bad" constraints if there are any, and report an error if needed. -/
  if rConstraints.any (fun (_, k) => k > 0) then
    let uAtZero := u.replace fun v => if v == r then some Level.zero else none
    /- For "bad" level constraints (those of the form `l ≤ ?r + k` where `k > 0`),
    we add `rOffset - k` to both sides to get the ideal constraint. -/
    let uIdeal := Level.normalize <| rConstraints.foldl (init := uAtZero) fun u' (level, k) =>
      mkLevelMax' u' <| level.addOffset (rOffset - k).toNat
    unless uIdeal.geq uInferred do
      withViewTypeRef views do
        let badConstraints := rConstraints.foldl (init := []) fun msgs (level, k) =>
          if k <= 0 then
            msgs
          else
            indentD m!"{level} ≤ {Level.addOffset r k.toNat}" :: msgs
        logWarning <| m!"Inferred universe level for type may be unnecessarily high. \
          The inferred resulting universe is{indentD <| mkSort uInferred}\n\
          but it possibly could be{indentD <| mkSort uIdeal}\n\
          Explicitly providing a resulting universe with no metavariables will silence this warning."
          ++ .note m!"The elaborated resulting universe after constructor elaboration is{indentD <| mkSort u}\n\
            The inference algorithm attempts to compute the smallest level for `{r}` such that all universe constraints for all \
            constructor fields are satisfied, with some approximations. \
            The following derived constraint(s) are the cause of this possible unnecessarily high universe:\
            {MessageData.joinSep badConstraints ""}\n\
            For example, if the resulting universe is of the form `Sort (?r + 1)` and a constructor field is in universe `Sort u`, \
            the constraint `u ≤ ?r + 1` leads to the unnecessarily high resulting universe `Sort (u + 1)`. \
            Using `Sort (max 1 u)` avoids this universe bump, if using it is possible."
  trace[Elab.inductive] "inferred r: {rInferred}"
  return { u := uInferred, assign? := some (mvarId, rInferred) }

/--
Solves for level metavariables in constructor argument types that are completely determined by the resulting type.
The `simplifyResultingUniverse` of the resulting universe level `u` must be of the form `r+k`, where `r` is a parameter or zero,
otherwise inference is ambiguous.
Ambiguity example: `?v ≤ max a b` could be satisfied by either constraint `?v ≤ a` or `?v ≤ b`.
Possibly `r` is a metavariable -- in that case, since it will eventually be turned into a parameter
in `levelMVarToParamAtInductives`, we work with it as if it is a parameter here.

This only assigns if there is a *unique* solution, though we will take a non-constant solution over
a constant one. This function does not throw errors. For underconstrained metavariables it simply
doesn't assign to them. Even constraint issues are ignored, since these will be reported later.
We also assume that `imax` is effectively `max`.

The rules imply that the only assignments we will ever consider are `?v = 0` or `?v = r`.
From each universe constraint, we get simple constraints of the form `?v ≤ r + k'`,
with `k' : Int` like in `inferResultingUniverse`.
Consider the cases:
- if `r=0`, then we must have `k'≥0` to have a solution, and `k'≤0` to have a unique solution.
- if `r` is a parameter, then if `k'>0` there are multiple non-constant solutions, and if
  `k'<0` then there are no solutions that work for all values of `r`. We must have `k'=0`.
Thus, the solution to such simple constraints is always `?v = r` if `k' = 0`.

One wrinkle to this is that we wish to avoid assigning `?u = 0` in some cases due examples like the following
that lead to counterintuitive behavior:
```
inductive Bar : Type
| foobar {Foo} : Foo → Bar
```
Since `Foo : Sort ?u : Type ?u`, propagation causes `?u = 0`, and so `Foo : Prop`.
We avoid assigning level metavariables to `0` if it could cause a field to become a `Prop`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant8a30233713df9a399c8a529511c6767668d9cfa82a46a8ae02b8c631231274d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant8a30233713df9a399c8a529511c6767668d9cfa82a46a8ae02b8c631231274d8.lean#L948).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70adc2c0ca9bfa1e7a54b5e64de2521494b71cb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
