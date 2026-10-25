# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07e3212df0b8101c2ba9c34bc49bf8e71683df86daeb6b467ee2cb45446a3eb7",
  "kind": "macro",
  "lexical_name": null,
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
  "slug": "macro--914b5bddb66f76fe175410fa",
  "source": {
    "blob": "c13e144f79677ab5e57a39842c4c1a36ea0a9034",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 288,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant7b99cbea0ea8797b39f782c9af2a15016c3f7ec2cfca89f8bb967b1b3324441d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:914b5bddb66f76fe175410fa70bc0cfd79aed8ceadf2d190326eac0b46554ee5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant7b99cbea0ea8797b39f782c9af2a15016c3f7ec2cfca89f8bb967b1b3324441d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07e3212df0b8101c2ba9c34bc49bf8e71683df86daeb6b467ee2cb45446a3eb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro "nth_grewrite" c:optConfig ppSpace nums:(num)+ s:rwRuleSeq loc:(location)? : tactic =>
  `(tactic|
    grewrite $[$(getConfigItems c)]* +useKAbstract (occs := .pos [$[$nums],*]) $s:rwRuleSeq $(loc)?)

/--
`nth_grw n₁ ... nₖ [e₁, ..., eₙ]` is a variant of `grw` that for each expression `eᵢ : R aᵢ bᵢ` only
replaces the `n₁, ..., nₖ`th occurrence of `aᵢ` with `bᵢ`. Use `nth_grw n₁ ... nₖ [← eᵢ]` to rewrite
in the other direction, replacing occurrences of `bᵢ` with `aᵢ`.

If an expression `e` is a defined constant, then the equational theorems associated with `e` are
used. This provides a convenient way to unfold `e`. If `e` has parameters, the tactic will try to
fill these in by unification with the matching part of the target. Parameters are only filled in
once per rule, restricting which later rewrites can be found. Parameters that are not filled in
after unification will create side goals.

To be able to use `nth_grw`, the relevant lemmas need to be tagged with `@[gcongr]`.
To rewrite inside a transitive relation, you can also give it an `IsTrans` instance.
Rewriting with a strict inequality `a < b` may change the strictness of the goal,
replacing a goal `_ < _` by `_ ≤ _`. If this is not possible, then `a < b` is treated as `a ≤ b`.

* `nth_grw n₁ ... nₖ [← e]` applies the rewrite rule `e : R a b` in the reverse direction, replacing
  the `n₁, ..., nₖ`th occurrences of `b` with `a`.
* `nth_grw (config := cfg) n₁ ... nₖ [e₁, ..., eₙ]` uses `cfg` as configuration. See
  `GRewrite.Config` for details.
  * To let `nth_grw` unfold more aggressively, as in `erw`, use
    `nth_grw (transparency := default) n₁ ... nₖ [e₁, ..., eₙ]`.
  * `nth_grw +implicationHyp n₁ ... nₖ [e₁, ..., eₙ]` interprets `· → ·` as a relation.
* `nth_grw n₁ ... nₖ [e₁, ..., eₙ] at l` rewrites at the location(s) `l`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant7b99cbea0ea8797b39f782c9af2a15016c3f7ec2cfca89f8bb967b1b3324441d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant7b99cbea0ea8797b39f782c9af2a15016c3f7ec2cfca89f8bb967b1b3324441d.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c13e144f79677ab5e57a39842c4c1a36ea0a9034` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
