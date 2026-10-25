# elabLinearCombination'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b2c82de7dbd484e744c5c3905facadf09bc483f894176b9f1b822be4fe0535e",
  "kind": "def",
  "lexical_name": "elabLinearCombination'",
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
  "slug": "elablinearcombination--eb362f48932a4307405995fe",
  "source": {
    "blob": "d7c3e6d68305467fb6892acfd1f497917c0979c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant83839b3e8746e666e009388d3521d88dd46b0c8e26cfc9cc1dafd4347c480377.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb362f48932a4307405995fecd9aa9e6309f01db7136c577e5899f50bcc92357",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant83839b3e8746e666e009388d3521d88dd46b0c8e26cfc9cc1dafd4347c480377.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b2c82de7dbd484e744c5c3905facadf09bc483f894176b9f1b822be4fe0535e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabLinearCombination' (tk : Syntax)
    (norm? : Option Syntax.Tactic) (exp? : Option Syntax.NumLit) (input : Option Syntax.Term)
    (twoGoals := false) : Tactic.TacticM Unit := Tactic.withMainContext do
  let some (ty, _) := (← (← Tactic.getMainGoal).getType').eq? |
    throwError "'linear_combination'' only proves equalities"
  let p ← match input with
  | none => `(Eq.refl 0)
  | some e =>
    match ← expandLinearCombo ty e with
    | .const c => `(Eq.refl $c)
    | .proof p => pure p
  let norm := norm?.getD (Unhygienic.run <| withRef tk `(tactic| ring1))
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
The `(norm := $tac)` syntax says to use `tac` as a normalization postprocessor for
`linear_combination'`. The default normalizer is `ring1`, but you can override it with `ring_nf`
to get subgoals from `linear_combination'` or with `skip` to disable normalization.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant83839b3e8746e666e009388d3521d88dd46b0c8e26cfc9cc1dafd4347c480377.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant83839b3e8746e666e009388d3521d88dd46b0c8e26cfc9cc1dafd4347c480377.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7c3e6d68305467fb6892acfd1f497917c0979c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
