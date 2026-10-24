# _root_.GRWTSK.Algebra.GroupTheory.FunctionInjectiveMulActionHomEmbedding.Variantbf4c8728f92b2700b63157297197060f38dedf4c47afb6b6ea174ee1cac10cdd.IsMultiplyPretransitive.alternatingGroup_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07f01143-7244-4715-7fa4-c0563294c421",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.FunctionInjectiveMulActionHomEmbedding.Variantbf4c8728f92b2700b63157297197060f38dedf4c47afb6b6ea174ee1cac10cdd.IsMultiplyPretransitive.alternatingGroup_le",
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
  "slug": "root-grwtsk-algebra-grouptheory-functioninjectivemulactionhomembedding-v--ffe323ec7003a0c9f7b66260",
  "source": {
    "blob": "7ef92d0cdf83f804be1f6ecfd29e1a2cdf279e8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 635,
    "line": 610,
    "path": "GRWTSK/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffe323ec7003a0c9f7b662609d4ca4c6a07ceb5cd6c149291eaf77bf831bdeb3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07f01143-7244-4715-7fa4-c0563294c421`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 610–635.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.GroupTheory.FunctionInjectiveMulActionHomEmbedding.Variantbf4c8728f92b2700b63157297197060f38dedf4c47afb6b6ea174ee1cac10cdd.IsMultiplyPretransitive.alternatingGroup_le
    (G : Subgroup (Equiv.Perm α))
    (hmt : IsMultiplyPretransitive G α (Nat.card α - 2)) :
    alternatingGroup α ≤ G := by
  rcases Nat.lt_or_ge (Nat.card α) 2 with hα1 | hα
  · -- Nat.card α  < 2
    rw [eq_bot_of_card_le_two hα1.le]
    exact bot_le
  -- 2 ≤ Nat.card α
  apply Equiv.Perm.alternatingGroup_le_of_index_le_two
  -- one picks up a set of cardinality (card α - 2)
  obtain ⟨s, _, hs⟩ :=
    Set.exists_subset_card_eq (s := (Set.univ : Set α)) (n := Nat.card α - 2)
      (by rw [Set.ncard_univ]; exact sub_le (Nat.card α) 2)
  rw [← hs] at hmt
  -- The index of (fixingSubgroup G s) is (card α)!/2
  have := hmt.index_of_fixingSubgroup_mul rfl
  rw [hs, Nat.sub_sub_self hα, factorial_two] at this
  -- conclude
  rw [← mul_le_mul_iff_of_pos_left (a := Nat.card G) card_pos,
    Subgroup.card_mul_index, ← (fixingSubgroup G s).index_mul_card,
    mul_assoc, mul_comm _ 2, ← mul_assoc]
  rw [this, Nat.card_perm]
  refine Nat.le_mul_of_pos_right (Nat.card α)! card_pos

/-- The alternating group on 3 letters or more acts transitively. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean#L610).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ef92d0cdf83f804be1f6ecfd29e1a2cdf279e8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
