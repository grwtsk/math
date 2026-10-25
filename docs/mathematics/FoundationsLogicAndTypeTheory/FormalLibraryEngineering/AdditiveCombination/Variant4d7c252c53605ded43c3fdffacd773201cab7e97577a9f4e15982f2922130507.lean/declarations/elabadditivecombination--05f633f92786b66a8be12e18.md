# elabAdditiveCombination

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c4eda80eddc1deafc159d2b7ae1039829f4cc866fcc4d230a4cccd884dd57b5",
  "kind": "def",
  "lexical_name": "elabAdditiveCombination",
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
  "slug": "elabadditivecombination--05f633f92786b66a8be12e18",
  "source": {
    "blob": "cabdd32a2b5b5022e4bc98f7bada190048a70cbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant4d7c252c53605ded43c3fdffacd773201cab7e97577a9f4e15982f2922130507.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05f633f92786b66a8be12e18028738940fe38d9c806fe3e42d9c74c0958438b5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant4d7c252c53605ded43c3fdffacd773201cab7e97577a9f4e15982f2922130507.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c4eda80eddc1deafc159d2b7ae1039829f4cc866fcc4d230a4cccd884dd57b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def elabAdditiveCombination (tk : Syntax)
    (norm? : Option Syntax.Tactic) (exp? : Option Syntax.NumLit) (input : Option Syntax.Term)
    (twoGoals := false) : Tactic.TacticM Unit := Tactic.withMainContext do
  let some (ty, _) := (← (← Tactic.getMainGoal).getType').eq? |
    throwError "'additive_combination' only proves equalities"
  let p ← match input with
  | none => `(Eq.refl 0)
  | some e =>
    match ← expandAdditiveCombo ty e with
    | .const c => `(Eq.refl $c)
    | .proof p => pure p
  let norm := norm?.getD (Unhygienic.run <| withRef tk `(tactic| ((try simp only [smul_add, smul_sub]); abel)))
  Term.withoutErrToSorry <| Tactic.evalTactic <| ← withFreshMacroScope <|
  if twoGoals then
    `(tactic| (
      refine eq_trans₃ $p ?a ?b
      case' a => $norm:tactic
      case' b => $norm:tactic))
  else
    match exp? with
    | some n =>
      if n.getNat = 1 then `(tactic| (refine eq_of_add $p ?a; case' a => $norm:tactic))
      else `(tactic| (refine eq_of_add_pow $n $p ?a; case' a => $norm:tactic))
    | _ => `(tactic| (refine eq_of_add $p ?a; case' a => $norm:tactic))


/--
`additive_combination` attempts to simplify the target by creating a additive combination
  of a list of equalities and subtracting it from the target.
  The tactic will create a additive
  combination by adding the equalities together from left to right, so the order
  of the input hypotheses does matter.  If the `normalize` field of the
  configuration is set to false, then the tactic will simply set the user up to
  prove their target using the additive combination instead of normalizing the subtraction.

Note: The left and right sides of all the equalities should have the same
  type, and the coefficients should also have this type.  There must be
  instances of `Mul` and `AddGroup` for this type.

* The input `e` in `additive_combination e` is a additive combination of proofs of equalities,
  given as a sum/difference of coefficients multiplied by expressions.
  The coefficients may be arbitrary expressions.
  The expressions can be arbitrary proof terms proving equalities.
  Most commonly they are hypothesis names `h1, h2, ...`.
* `additive_combination (norm := tac) e` runs the "normalization tactic" `tac`
  on the subgoal(s) after constructing the additive combination.
  * The default normalization tactic is `abel`, which closes the goal or fails.
  * To avoid normalization entirely, use `skip` as the normalization tactic.
* `additive_combination (exp := n) e` will take the goal to the `n`th power before subtracting the
  combination `e`. In other words, if the goal is `t1 = t2`, `additive_combination (exp := n) e`
  will change the goal to `(t1 - t2)^n = 0` before proceeding as above.
  This feature is not supported for `additive_combination2`.

Example Usage:
```
example (x y : ℤ) (h1 : x*y + 2*x = 1) (h2 : x = y) : x*y = -2*y + 1 := by
  additive_combination 1*h1 - 2*h2

example (x y : ℤ) (h1 : x*y + 2*x = 1) (h2 : x = y) : x*y = -2*y + 1 := by
  additive_combination h1 - 2*h2

example (x y : ℤ) (h1 : x*y + 2*x = 1) (h2 : x = y) : x*y = -2*y + 1 := by
  additive_combination (norm := ring_nf) -2*h2
  /- Goal: x * y + x * 2 - 1 = 0 -/

example (x y z : ℝ) (ha : x + 2*y - z = 4) (hb : 2*x + y + z = -2)
    (hc : x + 2*y + z = 2) :
    -3*x - 3*y - 4*z = 2 := by
  additive_combination ha - hb - 2*hc

example (x y : ℚ) (h1 : x + y = 3) (h2 : 3*x = 7) :
    x*x*y + y*x*y + 6*x = 3*x*y + 14 := by
  additive_combination x*y*h1 + 2*h2

example (x y : ℤ) (h1 : x = -3) (h2 : y = 10) : 2*x = -6 := by
  additive_combination (norm := skip) 2*h1
  simp

axiom qc : ℚ
axiom hqc : qc = 2*qc

example (a b : ℚ) (h : ∀ p q : ℚ, p = q) : 3*a + qc = 3*b + 2*qc := by
  additive_combination 3 * h a b + hqc
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant4d7c252c53605ded43c3fdffacd773201cab7e97577a9f4e15982f2922130507.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant4d7c252c53605ded43c3fdffacd773201cab7e97577a9f4e15982f2922130507.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cabdd32a2b5b5022e4bc98f7bada190048a70cbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
