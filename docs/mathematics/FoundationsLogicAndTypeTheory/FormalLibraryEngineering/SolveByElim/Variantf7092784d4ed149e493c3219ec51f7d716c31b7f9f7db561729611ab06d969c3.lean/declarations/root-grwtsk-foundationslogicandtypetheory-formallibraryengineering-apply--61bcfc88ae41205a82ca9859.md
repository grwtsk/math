# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyRulesConfig.Variantfed177d2e6fcef69d4487c66511bd3f822b259f133e40de44a73236ba7d5e6b5.Lean.MVarId.applyRules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:034f6600f69c45ba93b4eaefe4543fb530e3227c0b4c42b2ed333239752f29fe",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyRulesConfig.Variantfed177d2e6fcef69d4487c66511bd3f822b259f133e40de44a73236ba7d5e6b5.Lean.MVarId.applyRules",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-apply--61bcfc88ae41205a82ca9859",
  "source": {
    "blob": "f99627f8a8f32c2902e0f28b72f6879c5b302ece",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 301,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantf7092784d4ed149e493c3219ec51f7d716c31b7f9f7db561729611ab06d969c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61bcfc88ae41205a82ca985929076197232f064dc71adf9a79105cdff8a5eb9b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantf7092784d4ed149e493c3219ec51f7d716c31b7f9f7db561729611ab06d969c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:034f6600f69c45ba93b4eaefe4543fb530e3227c0b4c42b2ed333239752f29fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyRulesConfig.Variantfed177d2e6fcef69d4487c66511bd3f822b259f133e40de44a73236ba7d5e6b5.Lean.MVarId.applyRules (cfg : SolveByElimConfig) (lemmas : List (TermElabM Expr))
    (only : Bool := false) (g : MVarId) : MetaM (List MVarId) := do
  let ctx (cfg : SolveByElimConfig) : TermElabM (List Expr) :=
    if only then pure []
    else do saturateSymm cfg.symm (← getLocalHyps).toList
  solveByElim { cfg with backtracking := false } lemmas ctx [g]

open Lean.Parser.Tactic

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
on demand. This is the first component, with type `List (TermElabM Expr)`.

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
(Essentially using `getLocalHyps`, along with some filtering to remove hypotheses
that have been explicitly removed via `only` or `[-h]`.)

-/
-- These `TermElabM`s must be run inside a suitable `g.withContext`,
-- usually using `elabContextLemmas`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantf7092784d4ed149e493c3219ec51f7d716c31b7f9f7db561729611ab06d969c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantf7092784d4ed149e493c3219ec51f7d716c31b7f9f7db561729611ab06d969c3.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f99627f8a8f32c2902e0f28b72f6879c5b302ece` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
