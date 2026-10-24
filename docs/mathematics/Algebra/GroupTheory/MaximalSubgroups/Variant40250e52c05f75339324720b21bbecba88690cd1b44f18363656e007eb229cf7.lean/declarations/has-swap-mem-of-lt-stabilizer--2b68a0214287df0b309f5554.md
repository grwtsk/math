# has_swap_mem_of_lt_stabilizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5bb0abfa730ea97d964e278137622d7277bf6d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:87834481-a4cd-3ff6-f5e4-48714ac72ca2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65636a33-3d59-d4f6-ea14-838011946e80",
  "kind": "theorem",
  "lexical_name": "has_swap_mem_of_lt_stabilizer",
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
  "slug": "has-swap-mem-of-lt-stabilizer--2b68a0214287df0b309f5554",
  "source": {
    "blob": "f5bb0abfa730ea97d964e278137622d7277bf6d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 156,
    "path": "GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b68a0214287df0b309f5554c3bdfdf31d98e6afca6248710f020488ab24af72",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65636a33-3d59-d4f6-ea14-838011946e80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem has_swap_mem_of_lt_stabilizer [DecidableEq α]
    (s : Set α) (G : Subgroup (Perm α))
    (hG : stabilizer (Perm α) s < G) :
    ∃ g : Perm α, g.IsSwap ∧ g ∈ G := by
  have : ∀ (t : Set α) (_ : 1 < t.encard), ∃ (g : Perm α),
      g.IsSwap ∧ g ∈ stabilizer (Perm α) t := by
    intro t ht
    rw [Set.one_lt_encard_iff] at ht
    obtain ⟨a, b, ha, hb, h⟩ := ht
    use swap a b, Perm.swap_isSwap_iff.mpr h, swap_mem_stabilizer ha hb
  rcases lt_or_ge 1 s.encard with h1 | h1'
  · obtain ⟨g, hg, hg'⟩ := this s h1
    exact ⟨g, hg, hG.le hg'⟩
  rcases lt_or_ge 1 sᶜ.encard with h1c | h1c'
  · obtain ⟨g, hg, hg'⟩ := this sᶜ h1c
    use g, hg
    rw [stabilizer_compl] at hg'
    exact hG.le hg'
  have hα : Set.encard (_root_.Set.univ : Set α) = 2 := by
    rw [← Set.encard_add_encard_compl s]
    have : (1 + 1 : ENat) = 2 := by norm_num
    convert! this <;>
    · apply le_antisymm
      · assumption
      rw [one_le_encard_iff_nonempty, Set.nonempty_iff_ne_empty]
      aesop
  have _ : Finite α := by
    rw [finite_iff_nonempty_fintype]
    refine univ_finite_iff_nonempty_fintype.mp ?_
    exact finite_of_encard_eq_coe hα
  have hα : Nat.card α = 2 := by
    rw [← ENat.card_coe_set_eq, ENat.card_eq_coe_natCard, Nat.card_coe_set_eq, ncard_univ] at hα
    exact ENat.natCast_inj.mp hα
  have hα2 : Fact (Nat.card (Perm α)).Prime := by
    apply Fact.mk
    rw [Nat.card_perm, hα, Nat.factorial_two]
    exact Nat.prime_two
  cases G.eq_bot_or_eq_top_of_prime_card with
  | inl h =>
    exfalso; exact ne_bot_of_gt hG h
  | inr h =>
    rw [h, ← stabilizer_univ_eq_top (Perm α) α]
    apply this
    simp_all

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5bb0abfa730ea97d964e278137622d7277bf6d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
