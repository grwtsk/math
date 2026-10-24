# card_roots_le_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e5faca769f987ee3a9d4367a6eece1cefc877f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d70292e8d5ea6bcbd2611a411090d20b82ea7a179f94b24d5685c6890ab8480e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c26d1476-8889-57e6-5e92-7e6efc9a6125",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa8e7856-daf1-37f5-8f96-a56e131302c4",
  "kind": "theorem",
  "lexical_name": "card_roots_le_derivative",
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
  "slug": "card-roots-le-derivative--72d9d21b6d9e535b58e84393",
  "source": {
    "blob": "7e5faca769f987ee3a9d4367a6eece1cefc877f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 55,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantd70292e8d5ea6bcbd2611a411090d20b82ea7a179f94b24d5685c6890ab8480e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72d9d21b6d9e535b58e84393b2daff80636380164e4abe8779ae1ea49c731e64",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variantd70292e8d5ea6bcbd2611a411090d20b82ea7a179f94b24d5685c6890ab8480e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa8e7856-daf1-37f5-8f96-a56e131302c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_roots_le_derivative (p : ℝ[X]) :
    Multiset.card p.roots ≤ Multiset.card (derivative p).roots + 1 :=
  calc
    Multiset.card p.roots = ∑ x ∈ p.roots.toFinset, p.roots.count x :=
      (Multiset.toFinset_sum_count_eq _).symm
    _ = ∑ x ∈ p.roots.toFinset, (p.roots.count x - 1 + 1) :=
      (Eq.symm <| Finset.sum_congr rfl fun _ hx => tsub_add_cancel_of_le <|
        Nat.succ_le_iff.2 <| Multiset.count_pos.2 <| Multiset.mem_toFinset.1 hx)
    _ = (∑ x ∈ p.roots.toFinset, (p.rootMultiplicity x - 1)) + p.roots.toFinset.card := by
      simp only [Finset.sum_add_distrib, Finset.card_eq_sum_ones, count_roots]
    _ ≤ (∑ x ∈ p.roots.toFinset, p.derivative.rootMultiplicity x) +
          ((p.derivative.roots.toFinset \ p.roots.toFinset).card + 1) :=
      (add_le_add
        (Finset.sum_le_sum fun _ _ => rootMultiplicity_sub_one_le_derivative_rootMultiplicity _ _)
        p.card_roots_toFinset_le_card_roots_derivative_diff_roots_succ)
    _ ≤ (∑ x ∈ p.roots.toFinset, p.derivative.roots.count x) +
          ((∑ x ∈ p.derivative.roots.toFinset \ p.roots.toFinset,
            p.derivative.roots.count x) + 1) := by
      simp only [← count_roots]
      refine add_le_add_left (add_le_add_right ((Finset.card_eq_sum_ones _).trans_le ?_) _) _
      refine Finset.sum_le_sum fun x hx => Nat.succ_le_iff.2 <| ?_
      rw [Multiset.count_pos, ← Multiset.mem_toFinset]
      exact (Finset.mem_sdiff.1 hx).1
    _ = Multiset.card (derivative p).roots + 1 := by
      rw [← add_assoc, ← Finset.sum_union Finset.disjoint_sdiff, Finset.union_sdiff_self_eq_union, ←
        Multiset.toFinset_sum_count_eq, ← Finset.sum_subset Finset.subset_union_right]
      intro x _ hx₂
      simpa only [Multiset.mem_toFinset, Multiset.count_eq_zero] using hx₂

/-- The number of real roots of a polynomial is at most the number of roots of its derivative plus
one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variantd70292e8d5ea6bcbd2611a411090d20b82ea7a179f94b24d5685c6890ab8480e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantd70292e8d5ea6bcbd2611a411090d20b82ea7a179f94b24d5685c6890ab8480e.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e5faca769f987ee3a9d4367a6eece1cefc877f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
