# pred_succ_iterate_of_not_isMax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "579dab7a4a7f5879e253555c02a4b61709c03f24",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 675,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62caa6fa9c2d6825960d7b211ca87df2454670e71d4a482f6ac20568f693a667.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94151580-d436-8abe-69bf-1d20844643b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e81a242-d3dd-c8d3-034b-342adba6b1dd",
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
  "slug": "pred-succ-iterate-of-not-ismax--7796b1d8e38867ea599f0dce",
  "source": {
    "blob": "579dab7a4a7f5879e253555c02a4b61709c03f24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 721,
    "line": 675,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant62caa6fa9c2d6825960d7b211ca87df2454670e71d4a482f6ac20568f693a667.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7796b1d8e38867ea599f0dce7d6c06d58bef0332ebf115010a3dd4f33df5de94",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant62caa6fa9c2d6825960d7b211ca87df2454670e71d4a482f6ac20568f693a667.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e81a242-d3dd-c8d3-034b-342adba6b1dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 675–721.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant62caa6fa9c2d6825960d7b211ca87df2454670e71d4a482f6ac20568f693a667.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant62caa6fa9c2d6825960d7b211ca87df2454670e71d4a482f6ac20568f693a667.lean#L675).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `579dab7a4a7f5879e253555c02a4b61709c03f24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
