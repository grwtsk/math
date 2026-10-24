# pred_succ_iterate_of_not_isMax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e397cbb9-2c1d-d754-7c48-2a970e14fcfa",
  "kind": "theorem",
  "lexical_name": "pred_succ_iterate_of_not_isMax",
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
  "slug": "pred-succ-iterate-of-not-ismax--e576bb7959f2e09ac73d5d8b",
  "source": {
    "blob": "b760b9b84b67691b8bd019d4ba4704f2abf107e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 729,
    "line": 683,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant3e27aa28086a2a4f0df94f5150eebfaeae9b4ffa83015599b9b5ef71cc695fdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e576bb7959f2e09ac73d5d8bc932bc5aaaaf05a06e5c5c6c22ab7d7c29f380c6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant3e27aa28086a2a4f0df94f5150eebfaeae9b4ffa83015599b9b5ef71cc695fdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e397cbb9-2c1d-d754-7c48-2a970e14fcfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 683–729.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pred_succ_iterate_of_not_isMax (i : α) (n : ℕ) (hin : ¬IsMax (succ^[n - 1] i)) :
    pred^[n] (succ^[n] i) = i := by
  induction n with
  | zero => simp only [Function.iterate_zero, id]
  | succ n hn =>
    rw [Nat.succ_sub_succ_eq_sub, Nat.sub_zero] at hin
    have h_not_max : ¬IsMax (succ^[n - 1] i) := by
      rcases n with - | n
      · simpa using hin
      rw [Nat.succ_sub_succ_eq_sub, Nat.sub_zero] at hn ⊢
      have h_sub_le : succ^[n] i ≤ succ^[n.succ] i := by
        rw [Function.iterate_succ']
        exact le_succ _
      refine fun h_max => hin fun j hj => ?_
      have hj_le : j ≤ succ^[n] i := h_max (h_sub_le.trans hj)
      exact hj_le.trans h_sub_le
    rw [Function.iterate_succ, Function.iterate_succ']
    simp only [Function.comp_apply]
    rw [pred_succ_of_not_isMax hin]
    exact hn h_not_max

end SuccPredOrder

end Order

open Order

/-! ### `WithBot`, `WithTop`
Adding a greatest/least element to a `SuccOrder` or to a `PredOrder`.

As far as successors and predecessors are concerned, there are four ways to add a bottom or top
element to an order:
* Adding a `⊤` to an `OrderTop`: Preserves `succ` and `pred`.
* Adding a `⊤` to a `NoMaxOrder`: Preserves `succ`. Never preserves `pred`.
* Adding a `⊥` to an `OrderBot`: Preserves `succ` and `pred`.
* Adding a `⊥` to a `NoMinOrder`: Preserves `pred`. Never preserves `succ`.
  where "preserves `(succ/pred)`" means
  `(Succ/Pred)Order α → (Succ/Pred)Order ((WithTop/WithBot) α)`.
-/

namespace WithTop

section Succ

variable [PartialOrder α] [SuccOrder α] [∀ a : α, Decidable (succ a = a)]

@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant3e27aa28086a2a4f0df94f5150eebfaeae9b4ffa83015599b9b5ef71cc695fdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant3e27aa28086a2a4f0df94f5150eebfaeae9b4ffa83015599b9b5ef71cc695fdb.lean#L683).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b760b9b84b67691b8bd019d4ba4704f2abf107e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
