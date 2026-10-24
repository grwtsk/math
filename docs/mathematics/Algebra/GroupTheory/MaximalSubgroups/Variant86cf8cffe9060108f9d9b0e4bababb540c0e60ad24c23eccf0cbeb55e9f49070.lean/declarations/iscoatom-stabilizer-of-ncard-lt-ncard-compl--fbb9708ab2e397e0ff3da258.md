# isCoatom_stabilizer_of_ncard_lt_ncard_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6ce74be-faa1-9f53-30b4-5a454cf0cf65",
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
  "slug": "iscoatom-stabilizer-of-ncard-lt-ncard-compl--fbb9708ab2e397e0ff3da258",
  "source": {
    "blob": "682c52f8dab2283509e47bff294eae9c068f4f3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 225,
    "path": "GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant86cf8cffe9060108f9d9b0e4bababb540c0e60ad24c23eccf0cbeb55e9f49070.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbb9708ab2e397e0ff3da2586832173b4bc1ea3be7b313b0cb27a78d89efd82d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MaximalSubgroups/Variant86cf8cffe9060108f9d9b0e4bababb540c0e60ad24c23eccf0cbeb55e9f49070.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6ce74be-faa1-9f53-30b4-5a454cf0cf65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCoatom_stabilizer_of_ncard_lt_ncard_compl {s : Set α}
    (h0 : s.Nontrivial) (hs : s.ncard < (sᶜ : Set α).ncard) :
    IsCoatom (stabilizer (alternatingGroup α) s) := by
  have := ncard_add_ncard_compl s
  have h1 : sᶜ.Nontrivial := by
    rw [← one_lt_ncard_iff_nontrivial]
    exact lt_of_le_of_lt h0.nonempty.ncard_pos hs
  have hα : 4 < Nat.card α := by
    rw [← Set.one_lt_ncard_iff_nontrivial] at h0
    grind
  -- To prove that `stabilizer (alternatingGroup α) s` is maximal,
  -- we need to prove that it is `≠ ⊤`
  use stabilizer_ne_top h0.nonempty h1
  -- … and that every strict over-subgroup `G` is equal to `⊤`
  intro G hG
  suffices IsPreprimitive G α from subgroup_eq_top_of_isPreprimitive hα G hG.le
  -- G acts transitively
  have := G.isPretransitive_of_stabilizer_lt hG
    (exists_mem_stabilizer_smul_eq (Nat.le_of_succ_le hα))
  apply IsPreprimitive.mk
  -- We reduce to proving that a block which is not a subsingleton is `univ`.
  intro B hB
  rw [IsTrivialBlock, or_iff_not_imp_left]
  intro hB'
  suffices sᶜ ⊆ B by
    apply hB.eq_univ_of_card_lt
    have : sᶜ.ncard ≤ B.ncard := ncard_le_ncard this
    grind
  -- The proof needs 4 steps
  /- Step 1 : `sᶜ` is not a block.
       This uses that `s.ncard  < sᶜ.ncard`.
       In the equality case, it is possible that `B = sᶜ` is a block:
       in that case, `G` would be a wreath product,
       this is case (b) of the O'Nan-Scott classification
       of maximal subgroups of the alternating group. -/
  have not_isBlock_sc : ¬ IsBlock G sᶜ := fun hsc ↦ by
    apply compl_ne_univ.mpr h0.nonempty -- `sᶜ ≠ univ`
    apply hsc.eq_univ_of_card_lt
    grind
  -- Step 2 : A block contained in `sᶜ` is a subsingleton
  have hB_not_le_sc (B : Set α) (hB : IsBlock G B) (hBsc : B ⊆ sᶜ) :
      B.Subsingleton :=
    IsBlock.subsingleton_of_ssubset_compl_of_stabilizer_alternatingGroup_le h0
      (hBsc.ssubset_of_ne (by aesop)) -- uses Step 1
      hG.le hB
  -- Step 3 : A block contained in `s` is a subsingleton
  have hB_not_le_s (B : Set α) (hB : IsBlock G B) (hBs : B ⊆ s) :
      B.Subsingleton :=
    have : IsPreprimitive (stabilizer G s) s :=
      stabilizer_subgroup_isPreprimitive h1 hG.le
    hB.subsingleton_of_stabilizer_lt_of_subset hB_not_le_sc hG hBs
  -- Step 4 : sᶜ ⊆ B : A block which is not a subsingleton contains `sᶜ`.
  suffices IsMultiplyPretransitive (↥(alternatingGroup α)) α (s.ncard + 1) by
    have : ¬ B ⊆ s := fun h ↦ hB' (hB_not_le_s B hB h)
    have : ¬ B ⊆ sᶜ := fun h ↦ hB' (hB_not_le_sc B hB h)
    apply hB.compl_subset_of_stabilizer_le_of_not_subset_of_not_subset_compl
      hG.le <;> grind
  have := isMultiplyPretransitive α
  apply isMultiplyPretransitive_of_le (n := Nat.card α - 2) _ (Nat.sub_le _ _)
  grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MaximalSubgroups/Variant86cf8cffe9060108f9d9b0e4bababb540c0e60ad24c23eccf0cbeb55e9f49070.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant86cf8cffe9060108f9d9b0e4bababb540c0e60ad24c23eccf0cbeb55e9f49070.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `682c52f8dab2283509e47bff294eae9c068f4f3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
