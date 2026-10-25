# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.Lean.MVarId.applyRules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cfcfd70d845b692137d6e321c787b621597ad89e2af56c1b23813811574ffea3",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.Lean.MVarId.applyRules",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-confi--548c0c44f22e7fdb5a05af8f",
  "source": {
    "blob": "c5b3589c48a07965b5a4d3be497d2d1a935f4d55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 259,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantb0118aab9e76d8d50e3dfdd457cefbfc45606a741de047ec8aa952a35838932a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:548c0c44f22e7fdb5a05af8fcc9b62f43fcde5dc9fe2509d210a97076e46dae6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantb0118aab9e76d8d50e3dfdd457cefbfc45606a741de047ec8aa952a35838932a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cfcfd70d845b692137d6e321c787b621597ad89e2af56c1b23813811574ffea3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.Lean.MVarId.applyRules (cfg : Config) (lemmas : List (TermElabM Expr))
    (only : Bool := false) (g : MVarId) : MetaM (List MVarId) := do
  let ctx : TermElabM (List Expr) := if only then pure [] else do pure (← getLocalHyps).toList
  solveByElim { cfg with backtracking := false } lemmas ctx [g]

open Lean.Parser.Tactic
open Mathlib.Tactic.LabelAttr

/--
`mkAssumptionSet` builds a collection of lemmas for use in
the backtracking search in `solve_by_elim`.

* By default, it includes all local hypotheses, along with `rfl`, `trivial`, `congrFun`
  and `congrArg`.
* The flag `noDefaults` removes these.
* The flag `star` includes all local hypotheses, but not `rfl`, `trivial`, `congrFun`,
  or `congrArg`. (It doesn't make sense to use `star` without `noDefaults`.)
* The argument `add` is the list of terms inside the square brackets that did not have `-`
  and can be used to add expressions or local hypotheses
* The argument `remove` is the list of terms inside the square brackets that had a `-`,
  and can be used to remove local hypotheses.
  (It doesn't make sense to remove expressions which are not local hypotheses,
  to remove local hypotheses unless `!noDefaults || star`,
  and it does not make sense to use `star` unless you remove at least one local hypothesis.)

`mkAssumptionSet` returns not a `List expr`, but a `List (TermElabM Expr) × TermElabM (List Expr)`.
There are two separate problems that need to be solved.

### Stuck metavariables

Lemmas with implicit arguments would be filled in with metavariables if we created the
`Expr` objects immediately, so instead we return thunks that generate the expressions
on demand. This is the first component, with type `List (TermElabM expr)`.

As an example, we have `def rfl : ∀ {α : Sort u} {a : α}, a = a`, which on elaboration will become
`@rfl ?m_1 ?m_2`.

Because `solve_by_elim` works by repeated application of lemmas against subgoals,
the first time such a lemma is successfully applied,
those metavariables will be unified, and thereafter have fixed values.
This would make it impossible to apply the lemma
a second time with different values of the metavariables.

See https://github.com/leanprover-community/mathlib/issues/2269

### Relevant local hypotheses

`solve_by_elim*` works with multiple goals,
and we need to use separate sets of local hypotheses for each goal.
The second component of the returned value provides these local hypotheses.
(Essentially using `local_context`, along with some filtering to remove hypotheses
that have been explicitly removed via `only` or `[-h]`.)

-/
-- These `TermElabM`s must be run inside a suitable `g.withContext`,
-- usually using `elabContextLemmas`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantb0118aab9e76d8d50e3dfdd457cefbfc45606a741de047ec8aa952a35838932a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantb0118aab9e76d8d50e3dfdd457cefbfc45606a741de047ec8aa952a35838932a.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5b3589c48a07965b5a4d3be497d2d1a935f4d55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
