# coverMincard_le_netMaxcard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da75bab6-530e-07fe-4e2d-58c69569a91a",
  "kind": "lemma",
  "lexical_name": "coverMincard_le_netMaxcard",
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
  "slug": "covermincard-le-netmaxcard--ea6e63fcd1c4ac75ee0d636f",
  "source": {
    "blob": "0b33af122a73027f6721a0e16d69f4d50bb08206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 227,
    "path": "GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea6e63fcd1c4ac75ee0d636fa5108b9d893cc27ab6d1c0a6d49801894da4d083",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da75bab6-530e-07fe-4e2d-58c69569a91a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coverMincard_le_netMaxcard (T : X → X) (F : Set X) [U.IsRefl] [U.IsSymm] (n : ℕ) :
    coverMincard T F (U ○ U) n ≤ netMaxcard T F U n := by
  classical
  -- WLOG, there exists a maximal dynamical net `s`.
  rcases eq_top_or_lt_top (netMaxcard T F U n) with h | h
  · exact h ▸ le_top
  obtain ⟨s, s_net, s_card⟩ := (netMaxcard_finite_iff T F U n).1 h
  rw [← s_card]
  apply IsDynCoverOf.coverMincard_le_card
  --  We have to check that `s` is a cover for `dynEntourage T F (U ○ U) n`.
  -- If `s` is not a cover, then we can add to `s` a point `x` which is not covered
  -- and get a new net. This contradicts the maximality of `s`.
  rw [IsDynCoverOf, isCover_iff_subset_iUnion_ball]
  by_contra h
  obtain ⟨x, x_F, x_uncov⟩ := not_subset.1 h
  simp only [Finset.mem_coe, mem_iUnion, exists_prop, not_exists, not_and] at x_uncov
  have larger_net : IsDynNetIn T F U n (insert x s) := by
    refine ⟨insert_subset x_F s_net.1, pairwiseDisjoint_insert.2 ⟨s_net.2, ?_⟩⟩
    refine fun y y_s _ ↦ disjoint_left.2 fun z z_x z_y ↦ x_uncov y y_s ?_
    exact mem_ball_dynEntourage_comp T n x y (nonempty_of_mem ⟨z_x, z_y⟩)
  rw [← s.coe_insert x] at larger_net
  apply larger_net.card_le_netMaxcard.not_gt
  rw [← s_card, Nat.cast_lt]
  refine (lt_add_one s.card).trans_eq (s.card_insert_of_notMem fun x_s ↦ ?_).symm
  exact x_uncov x x_s (ball_mono (dynEntourage_monotone T n SetRel.left_subset_comp) x <|
    SetRel.rfl (dynEntourage T U n))

/-! ### Net entropy of entourages -/

open ENNReal EReal ExpGrowth Filter

/-- The entropy of an entourage `U`, defined as the exponential rate of growth of the size of the
largest `(U, n)`-dynamical net of `F`. Takes values in the space of extended real numbers
`[-∞,+∞]`. This version uses a `limsup`, and is chosen as the default definition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b33af122a73027f6721a0e16d69f4d50bb08206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
