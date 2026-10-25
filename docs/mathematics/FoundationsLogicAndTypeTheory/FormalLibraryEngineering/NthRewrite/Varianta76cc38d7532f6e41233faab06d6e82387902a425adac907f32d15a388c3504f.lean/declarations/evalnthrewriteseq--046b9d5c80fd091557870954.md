# evalNthRewriteSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10cd98a1fc59bd49dde5f8909d487d02e52ed909ac59649194bc384deef69aa7",
  "kind": "def",
  "lexical_name": "evalNthRewriteSeq",
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
  "slug": "evalnthrewriteseq--046b9d5c80fd091557870954",
  "source": {
    "blob": "0023365205d06f2cb1b85128f64b8598a983be58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NthRewrite/Varianta76cc38d7532f6e41233faab06d6e82387902a425adac907f32d15a388c3504f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:046b9d5c80fd091557870954835118f0298841230f8d79604668341da86cd8d8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NthRewrite/Varianta76cc38d7532f6e41233faab06d6e82387902a425adac907f32d15a388c3504f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10cd98a1fc59bd49dde5f8909d487d02e52ed909ac59649194bc384deef69aa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[inherit_doc nthRewriteSeq, tactic nthRewriteSeq] def evalNthRewriteSeq : Tactic := fun stx => do
  match stx with
  | `(tactic| nth_rewrite $cfg:optConfig $[$n]* $_rules:rwRuleSeq $[$loc]?) =>
    let cfg ← elabRewriteConfig cfg
    let loc := expandOptLocation (mkOptionalNode loc)
    let occ := Occurrences.pos (n.map TSyntax.getNat).toList
    let cfg := { cfg with occs := occ }
    withRWRulesSeq stx[0] stx[3] fun symm term => do
      withLocation loc
        (rewriteLocalDecl term symm · cfg)
        (rewriteTarget term symm cfg)
        (throwTacticEx `nth_rewrite · "did not find instance of the pattern in the current goal")
  | _ => throwUnsupportedSyntax

/--
`nth_rw` is a variant of `rw` that only changes the `n₁, ..., nₖ`ᵗʰ _occurrence_ of the expression
to be rewritten. Like `rw`, and unlike `nth_rewrite`, it will try to close the goal by trying `rfl`
afterwards. `nth_rw n₁ ... nₖ [eq₁, eq₂,..., eqₘ]` will rewrite the `n₁, ..., nₖ`ᵗʰ _occurrence_ of
each of the `m` equalities `eqᵢ`in that order. Occurrences are counted beginning with `1` in
order of precedence. For example,
```lean
example (h : a = 1) : a + a + a + a + a = 5 := by
  nth_rw 2 3 [h]
/-
a: ℕ
h: a = 1
⊢ a + 1 + 1 + a + a = 5
-/
```
Notice that the second and third occurrences of `a` from the left have been rewritten by
`nth_rw`.

To understand the importance of order of precedence, consider the example below
```lean
example (a b c : Nat) : (a + b) + c = (b + a) + c := by
  nth_rewrite 2 [Nat.add_comm] -- ⊢ (b + a) + c = (b + a) + c
```
Here, although the occurrence parameter is `2`, `(a + b)` is rewritten to `(b + a)`. This happens
because in order of precedence, the first occurrence of `_ + _` is the one that adds `a + b` to `c`.
The occurrence in `a + b` counts as the second occurrence.

If a term `t` is introduced by rewriting with `eqᵢ`, then this instance of `t` will be counted as an
_occurrence_ of `t` for all subsequent rewrites of `t` with `eqⱼ` for `j > i`. This behaviour is
illustrated by the example below
```lean
example (h : a = a + b) : a + a + a + a + a = 0 := by
  nth_rw 3 [h, h]
/-
a b: ℕ
h: a = a + b
⊢ a + a + (a + b + b) + a + a = 0
-/
```
Here, the first `nth_rw` with `h` introduces an additional occurrence of `a` in the goal. That is,
the goal state after the first rewrite looks like below
```lean
/-
a b: ℕ
h: a = a + b
⊢ a + a + (a + b) + a + a = 0
-/
```
This new instance of `a` also turns out to be the third _occurrence_ of `a`.  Therefore,
the next `nth_rw` with `h` rewrites this `a`.

Further, `nth_rw` will close the remaining goal with `rfl` if possible.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NthRewrite/Varianta76cc38d7532f6e41233faab06d6e82387902a425adac907f32d15a388c3504f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NthRewrite/Varianta76cc38d7532f6e41233faab06d6e82387902a425adac907f32d15a388c3504f.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0023365205d06f2cb1b85128f64b8598a983be58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
