# schnirelmannDensity_setOf_mod_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d52dc79ce8e422d45375b4cf549ad7a7aa640db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 226,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5819ef6c-d44f-450d-b3e3-f710499e3b67",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03b651a5-8480-1896-7277-1fc38bcc7450",
  "kind": "lemma",
  "lexical_name": "schnirelmannDensity_setOf_mod_eq_one",
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
  "slug": "schnirelmanndensity-setof-mod-eq-one--18954d30bd6cc99cc25d9604",
  "source": {
    "blob": "3d52dc79ce8e422d45375b4cf549ad7a7aa640db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 226,
    "path": "GRWTSK/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18954d30bd6cc99cc25d9604af8bdfa745cb76bb6c001bae47daadab63ce2fad",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03b651a5-8480-1896-7277-1fc38bcc7450`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma schnirelmannDensity_setOf_mod_eq_one {m : ℕ} (hm : m ≠ 1) :
    schnirelmannDensity {n | n % m = 1} = (m⁻¹ : ℝ) := by
  rcases m.eq_zero_or_pos with rfl | hm'
  · simp only [Nat.cast_zero, inv_zero]
    refine schnirelmannDensity_finite ?_
    simp
  apply le_antisymm (schnirelmannDensity_le_of_le m hm'.ne' _) _
  · rw [← one_div, ← @Nat.cast_one ℝ]
    gcongr
    simp only [Set.mem_setOf_eq, card_le_one_iff_subset_singleton, subset_iff,
      mem_filter, mem_Ioc, mem_singleton, and_imp]
    use 1
    intro x _ hxm h
    rcases eq_or_lt_of_le hxm with rfl | hxm'
    · simp at h
    rwa [Nat.mod_eq_of_lt hxm'] at h
  rw [le_schnirelmannDensity_iff]
  intro n hn
  simp only [Set.mem_setOf_eq]
  have : (Icc 0 ((n - 1) / m)).image (· * m + 1) ⊆ {x ∈ Ioc 0 n | x % m = 1} := by
    simp only [subset_iff, mem_image, forall_exists_index, mem_filter, mem_Ioc, mem_Icc, and_imp]
    rintro _ y _ hy' rfl
    have hm : 2 ≤ m := hm.lt_of_le' hm'
    simp only [Nat.mul_add_mod', Nat.mod_eq_of_lt hm, add_pos_iff, or_true, and_true, true_and,
      ← Nat.le_sub_iff_add_le hn, zero_lt_one]
    exact Nat.mul_le_of_le_div _ _ _ hy'
  rw [le_div_iff₀ (Nat.cast_pos.2 hn), mul_comm, ← div_eq_mul_inv]
  apply (Nat.cast_le.2 (card_le_card this)).trans'
  rw [card_image_of_injective, Nat.card_Icc, Nat.sub_zero, div_le_iff₀ (Nat.cast_pos.2 hm'),
    ← Nat.cast_mul, Nat.cast_le, add_one_mul (α := ℕ)]
  · have := @Nat.lt_div_mul_add n.pred m hm'
    rwa [← Nat.succ_le, Nat.succ_pred hn.ne'] at this
  intro a b
  simp [hm'.ne']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d52dc79ce8e422d45375b4cf549ad7a7aa640db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
