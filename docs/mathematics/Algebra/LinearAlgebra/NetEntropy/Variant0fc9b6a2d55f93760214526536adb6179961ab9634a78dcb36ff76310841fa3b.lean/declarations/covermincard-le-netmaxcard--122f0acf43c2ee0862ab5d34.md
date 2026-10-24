# coverMincard_le_netMaxcard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63baeaaa-9da1-6733-8f77-4ffc47b5da8c",
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
  "slug": "covermincard-le-netmaxcard--122f0acf43c2ee0862ab5d34",
  "source": {
    "blob": "3e997501722ff7ab3a7da9284655694fda3bfaab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 233,
    "path": "GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:122f0acf43c2ee0862ab5d34b221df1590c7f501bbc22d5e259c79259f25bb3c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63baeaaa-9da1-6733-8f77-4ffc47b5da8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coverMincard_le_netMaxcard (T : X → X) (F : Set X) {U : Set (X × X)} (U_rfl : idRel ⊆ U)
    (U_symm : IsSymmetricRel U) (n : ℕ) :
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
  by_contra h
  obtain ⟨x, x_F, x_uncov⟩ := not_subset.1 h
  simp only [Finset.mem_coe, mem_iUnion, exists_prop, not_exists, not_and] at x_uncov
  have larger_net : IsDynNetIn T F U n (insert x s) := by
    refine ⟨insert_subset x_F s_net.1, pairwiseDisjoint_insert.2 ⟨s_net.2, ?_⟩⟩
    refine fun y y_s _ ↦ disjoint_left.2 fun z z_x z_y ↦ x_uncov y y_s ?_
    exact mem_ball_dynEntourage_comp T n U_symm x y (nonempty_of_mem ⟨z_x, z_y⟩)
  rw [← s.coe_insert x] at larger_net
  apply larger_net.card_le_netMaxcard.not_lt
  rw [← s_card, Nat.cast_lt]
  refine (lt_add_one s.card).trans_eq (s.card_insert_of_notMem fun x_s ↦ ?_).symm
  apply x_uncov x x_s (ball_mono (dynEntourage_monotone T n (subset_comp_self U_rfl)) x
    (ball_mono (idRel_subset_dynEntourage T U_rfl n) x _))
  simp only [ball, mem_preimage, mem_idRel]

/-! ### Net entropy of entourages -/

open ENNReal EReal ExpGrowth Filter

/-- The entropy of an entourage `U`, defined as the exponential rate of growth of the size of the
largest `(U, n)`-dynamical net of `F`. Takes values in the space of extended real numbers
`[-∞,+∞]`. This version uses a `limsup`, and is chosen as the default definition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e997501722ff7ab3a7da9284655694fda3bfaab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
