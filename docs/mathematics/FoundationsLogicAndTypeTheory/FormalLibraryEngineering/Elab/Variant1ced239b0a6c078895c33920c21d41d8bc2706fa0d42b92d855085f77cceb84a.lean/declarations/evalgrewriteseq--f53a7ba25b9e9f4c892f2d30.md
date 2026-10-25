# evalGRewriteSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16e1c2d657bd88dc16a0847052791cb4279d0d644b329b7e3aec36b003558855",
  "kind": "def",
  "lexical_name": "evalGRewriteSeq",
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
  "slug": "evalgrewriteseq--f53a7ba25b9e9f4c892f2d30",
  "source": {
    "blob": "ff1566532695d1b9418b319ed99d6d2f6e16eda1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 164,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant1ced239b0a6c078895c33920c21d41d8bc2706fa0d42b92d855085f77cceb84a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f53a7ba25b9e9f4c892f2d30e7415ebff31735fcffbf7b6769e771624d431369",
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

Occurrence: `declaration:16e1c2d657bd88dc16a0847052791cb4279d0d644b329b7e3aec36b003558855`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
public def evalGRewriteSeq : Tactic := fun stx => do
  let cfg ← elabGRewriteConfig stx[1]
  let loc := expandOptLocation stx[3]
  withRWRulesSeq stx[0] stx[2] fun symm term => do
    withLocation loc
      (grewriteLocalDecl term symm · cfg)
      (grewriteTarget term symm cfg)
      (throwTacticEx `grewrite · "did not find instance of the pattern in the current goal")

/--
`grw [e₁, ..., eₙ]` uses each expression `eᵢ : Rᵢ aᵢ bᵢ` (where `Rᵢ` is any two-argument
relation) as a generalized rewrite rule on the main goal, replacing occurrences of `aᵢ` with `bᵢ`,
then tries to close the main goal by "cheap" (reducible) `rfl`.
Use `grw [← eᵢ]` to rewrite in the other direction, replacing occurrences of `bᵢ` with `aᵢ`.

If an expression `e` is a defined constant, then the equational theorems associated with `e` are
used. This provides a convenient way to unfold `e`. If `e` has parameters, the tactic will try to
fill these in by unification with the matching part of the target. Parameters are only filled in
once per rule, restricting which later rewrites can be found. Parameters that are not filled in
after unification will create side goals.

To be able to use `grw`, the relevant lemmas need to be tagged with `@[gcongr]`.
To rewrite inside a transitive relation, you can also give it an `IsTrans` instance.

Rewriting with a strict inequality `a < b` may change the goal, such as changing `<` to `≤`.
If this is not possible, then `a < b` is treated the same as `a ≤ b`.

`grewrite` is like `grw` but does not try to apply `rfl` afterwards.
To rewrite only in the `n`-th position, use `nth_grw n`.
`apply_rw [e₁, ..., eₙ]` is a shorthand for `grw +implicationHyp [e₁, ..., eₙ]`: it interprets
`· → ·` as a relation instead of adding the hypothesis as a side condition.

* `grw [← e]` applies the rewrite rule `e : R a b` in the reverse direction, replacing occurrences
  of `b` with `a`.
* `grw (config := cfg) [e₁, ..., eₙ]` uses `cfg` as configuration. See `GRewrite.Config` for
  details.
  * To let `grw` unfold more aggressively, as in `erw`, use
    `grw (transparency := default) [e₁, ..., eₙ]`.
  * `grw +implicationHyp [e₁, ..., eₙ]` interprets `· → ·` as a relation (see `apply_rw`).
* `grw [e₁, ..., eₙ] at l` rewrites at the location(s) `l`.

Examples:

```lean
variable {a b c d n : ℤ}

example (h₁ : a < b) (h₂ : b ≤ c) : a + d ≤ c + d := by
  grw [h₁, h₂]

example (h : a ≡ b [ZMOD n]) : a ^ 2 ≡ b ^ 2 [ZMOD n] := by
  grw [h]

example (h₁ : a ∣ b) (h₂ : b ∣ a ^ 2 * c) : a ∣ b ^ 2 * c := by
  grw [h₁] at *
  exact h₂

-- To replace the RHS with the LHS of the given relation, use the `←` notation (just like in `rw`):
example (h₁ : a < b) (h₂ : b ≤ c) : a + d ≤ c + d := by
  grw [← h₂, ← h₁]
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant1ced239b0a6c078895c33920c21d41d8bc2706fa0d42b92d855085f77cceb84a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant1ced239b0a6c078895c33920c21d41d8bc2706fa0d42b92d855085f77cceb84a.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff1566532695d1b9418b319ed99d6d2f6e16eda1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
