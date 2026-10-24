# isCoatom_stabilizer_of_ncard_lt_ncard_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35835093-a272-c9b0-9610-2526aed393f1",
  "kind": "theorem",
  "lexical_name": "isCoatom_stabilizer_of_ncard_lt_ncard_compl",
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
  "slug": "iscoatom-stabilizer-of-ncard-lt-ncard-compl--b9338e798593580e701298c0",
  "source": {
    "blob": "ece8975cbd5117fa90122dcc7a3d6c9f944d4354",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 339,
    "path": "GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9338e798593580e701298c05e66b03b032d1ae0bf8d26820c9c336b7d3aeaa0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35835093-a272-c9b0-9610-2526aed393f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCoatom_stabilizer_of_ncard_lt_ncard_compl
    {s : Set α} (h0 : s.Nonempty) (hα : s.ncard < sᶜ.ncard) :
    IsCoatom (stabilizer (Perm α) s) := by
  classical
  have h1 : sᶜ.Nonempty := nonempty_iff_ne_empty.mpr (by aesop)
  have : Fintype α := Fintype.ofFinite α
  -- To prove that `stabilizer (Perm α) s` is maximal,
  -- we need to prove that it is `≠ ⊤`
  refine ⟨stabilizer_ne_top_of_nonempty_of_nonempty_compl h0 h1, fun G hG ↦ ?_⟩
  have hG' : stabilizer (Perm α) sᶜ < G := by rwa [stabilizer_compl]
  -- … and that every strict over-subgroup `G` is equal to `⊤`
  -- We know that `G` contains a swap
  obtain ⟨g, hg_swap, hg⟩ := has_swap_mem_of_lt_stabilizer s G hG
  -- By Jordan's theorem `subgroup_eq_top_of_isPreprimitive_of_isSwap_mem`,
  -- it suffices to prove that `G` acts primitively
  apply subgroup_eq_top_of_isPreprimitive_of_isSwap_mem _ g hg_swap hg
  -- First, we prove that `G` acts transitively
  have := G.isPretransitive_of_stabilizer_lt hG exists_mem_stabilizer_smul_eq
  apply IsPreprimitive.mk
  -- We now have to prove that all blocks of `G` are trivial
  -- We reduce to proving that a block which is not a subsingleton is `univ`.
  intro B hB
  unfold IsTrivialBlock
  rw [or_iff_not_imp_left]
  intro hB'
  suffices sᶜ ⊆ B by
    apply hB.eq_univ_of_card_lt
    have : sᶜ.ncard ≤ B.ncard := ncard_le_ncard this
    rw [← Set.ncard_add_ncard_compl s]
    lia
  -- The proof needs 4 steps
  /- Step 1 : `sᶜ` is not a block.
       This uses that `Nat.card s < Nat.card sᶜ`.
       In the equality case, `Nat.card s` = Nat.card sᶜ`,
       it would be possible that `sᶜ` is a block,
       and then `G` would be a wreath product,
       — this is case (b) of the O'Nan-Scott classification
       of maximal subgroups of the symmetric group -/
  have not_isBlock_sc : ¬ IsBlock G sᶜ := fun hsc ↦ by
    rcases lt_or_ge (Nat.card α) (sᶜ.ncard * 2) with hB' | hB'
    · apply h0.ne_empty
      rw [← compl_univ_iff]
      exact hsc.eq_univ_of_card_lt hB'
    · rw [← not_lt] at hB'
      apply hB'
      rwa [← Set.ncard_add_ncard_compl sᶜ, mul_two, add_lt_add_iff_left, compl_compl]
  -- Step 2 : A block contained in sᶜ is a subsingleton
  have hB_not_le_sc (B : Set α) (hB : IsBlock G B) (hBsc : B ⊆ sᶜ) :
      B.Subsingleton :=
    -- uses Step 1
    hB.subsingleton_of_ssubset_of_stabilizer_Perm_le (hBsc.ssubset_of_ne (by lia)) hG'.le
  -- Step 3 : A block contained in `s` is a subsingleton
  have hB_not_le_s (B : Set α) (hB : IsBlock G B) (hBs : B ⊆ s) : B.Subsingleton :=
    have := isPreprimitive_stabilizer_subgroup hG.le
    hB.subsingleton_of_stabilizer_lt_of_subset hB_not_le_sc hG hBs
  -- Step 4 : `sᶜ ⊆ B`
  have _ := isMultiplyPretransitive α (s.ncard + 1)
  apply MulAction.IsBlock.compl_subset_of_stabilizer_le_of_not_subset_of_not_subset_compl hG.le <;>
    grind

/-- `MulAction.stabilizer (Perm α) s` is a maximal subgroup of `Perm α`,
provided `s` and `sᶜ` are nonempty, and `Nat.card α ≠ 2 * Nat.card s`.

This is the intransitive case of the O'Nan–Scott classification. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ece8975cbd5117fa90122dcc7a3d6c9f944d4354` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
