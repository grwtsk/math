# grewriteLocalDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5aba1595f98f7802562e5630a92ec1f29e67a634019e3ac126488d953345146",
  "kind": "def",
  "lexical_name": "grewriteLocalDecl",
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
  "slug": "grewritelocaldecl--f45efadf2060e8160729c2d5",
  "source": {
    "blob": "ff1566532695d1b9418b319ed99d6d2f6e16eda1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant1ced239b0a6c078895c33920c21d41d8bc2706fa0d42b92d855085f77cceb84a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f45efadf2060e8160729c2d535f076c35d1d388bd30bf73e1618f95640865665",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant1ced239b0a6c078895c33920c21d41d8bc2706fa0d42b92d855085f77cceb84a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5aba1595f98f7802562e5630a92ec1f29e67a634019e3ac126488d953345146`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def grewriteLocalDecl (stx : Syntax) (symm : Bool) (fvarId : FVarId) (config : GRewrite.Config) :
    TacticM Unit := withMainContext do
  -- Note: we cannot execute `replace` inside `Term.withSynthesize`.
  -- See issues https://github.com/leanprover-community/mathlib4/issues/2711 and https://github.com/leanprover-community/mathlib4/issues/2727.
  let goal ← getMainGoal
  let r ← withMainContext do
    elabGRewrite (← getMainGoal) (← fvarId.getType) stx symm (forwardImp := true) (config := config)
  let proof := r.impProof.app (.fvar fvarId)
  let { mvarId, .. } ← goal.replace fvarId proof r.eNew
  replaceMainGoal (mvarId :: r.mvarIds)

/-- Function elaborating `GRewrite.Config`. -/
declare_config_elab elabGRewriteConfig GRewrite.Config

/--
`grewrite [e₁, ..., eₙ]` uses each expression `eᵢ : Rᵢ aᵢ bᵢ` (where `Rᵢ` is any two-argument
relation) as a generalized rewrite rule on the main goal, replacing occurrences of `aᵢ` with `bᵢ`.
Use `grewrite [← eᵢ]` to rewrite in the other direction, replacing occurrences of `bᵢ` with `aᵢ`.

If an expression `e` is a defined constant, then the equational theorems associated with `e` are
used. This provides a convenient way to unfold `e`. If `e` has parameters, the tactic will try to
fill these in by unification with the matching part of the target. Parameters are only filled in
once per rule, restricting which later rewrites can be found. Parameters that are not filled in
after unification will create side goals.

To be able to use `grewrite`, the relevant lemmas need to be tagged with `@[gcongr]`.
To rewrite inside a transitive relation, you can also give it an `IsTrans` instance.

Rewriting with a strict inequality `a < b` may change a constant in the goal,
such as changing `<` to `≤`. If this is not possible, then `a < b` is treated the same as `a ≤ b`.

`grw` is like `grewrite` but tries to close the goal afterwards by "cheap" (reducible) `rfl`.
To rewrite only in the `n`-th position, use `nth_grewrite n`.
`apply_rewrite [e₁, ..., eₙ]` is a shorthand for `grewrite +implicationHyp [e₁, ..., eₙ]`: it
interprets `· → ·` as a relation instead of adding the hypothesis as a side condition.

* `grewrite [← e]` applies the rewrite rule `e : R a b` in the reverse direction, replacing
  occurrences of `b` with `a`.
* `grewrite (config := cfg) [e₁, ..., eₙ]` uses `cfg` as configuration. See `GRewrite.Config` for
  details.
  * To let `grewrite` unfold more aggressively, as in `erw`, use
    `grewrite (transparency := default) [e₁, ..., eₙ]`.
  * `grewrite +implicationHyp [e₁, ..., eₙ]` interprets `· → ·` as a relation (see `apply_rewrite`).
* `grewrite [e₁, ..., eₙ] at l` rewrites at the location(s) `l`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant1ced239b0a6c078895c33920c21d41d8bc2706fa0d42b92d855085f77cceb84a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant1ced239b0a6c078895c33920c21d41d8bc2706fa0d42b92d855085f77cceb84a.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff1566532695d1b9418b319ed99d6d2f6e16eda1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
