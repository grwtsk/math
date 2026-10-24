# has_swap_mem_of_lt_stabilizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b98f7318-3444-a2ff-a748-80d0357358c5",
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
  "slug": "has-swap-mem-of-lt-stabilizer--d5027e2e8733b88bc3821aa5",
  "source": {
    "blob": "ece8975cbd5117fa90122dcc7a3d6c9f944d4354",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 164,
    "path": "GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5027e2e8733b88bc3821aa5f3b80306cc5282a4b4c24f66adb2751581f631cc",
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

Occurrence: `result:b98f7318-3444-a2ff-a748-80d0357358c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–208.

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

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ece8975cbd5117fa90122dcc7a3d6c9f944d4354` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
