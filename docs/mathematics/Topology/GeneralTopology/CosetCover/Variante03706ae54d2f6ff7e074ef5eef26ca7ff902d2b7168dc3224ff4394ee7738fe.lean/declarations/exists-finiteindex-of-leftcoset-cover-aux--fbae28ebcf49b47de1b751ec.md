# exists_finiteIndex_of_leftCoset_cover_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "37b507a6c6f810c77b88bd72a6d78639136ff249",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbd78e89-3076-a03c-09ff-8a75530c463e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7d749be-cfb5-acf7-6f16-0728248fb574",
  "kind": "theorem",
  "lexical_name": "exists_finiteIndex_of_leftCoset_cover_aux",
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
  "slug": "exists-finiteindex-of-leftcoset-cover-aux--fbae28ebcf49b47de1b751ec",
  "source": {
    "blob": "37b507a6c6f810c77b88bd72a6d78639136ff249",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 127,
    "path": "GRWTSK/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbae28ebcf49b47de1b751ec88f0563095c141c41145afccffb299ac2019545f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7d749be-cfb5-acf7-6f16-0728248fb574`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_finiteIndex_of_leftCoset_cover_aux [DecidableEq (Subgroup G)]
    (j : ι) (hj : j ∈ s) (hcovers' : ⋃ i ∈ s.filter (H · = H j), g i • (H i : Set G) ≠ Set.univ) :
    ∃ i ∈ s, H i ≠ H j ∧ (H i).FiniteIndex := by
  classical
  have ⟨n, hn⟩ : ∃ n, n = (s.image H).card := exists_eq
  induction n using Nat.strongRec generalizing ι with
  | ind n ih =>
    -- Every left coset of `H j` is contained in a finite union of
    -- left cosets of the other subgroups `H k ≠ H j` of the covering.
    have ⟨x, hx⟩ : ∃ (x : G), ∀ i ∈ s, H i = H j → (g i : G ⧸ H i) ≠ ↑x := by
      simpa [Set.eq_univ_iff_forall, mem_leftCoset_iff, ← QuotientGroup.eq] using hcovers'
    replace hx : ∀ (y : G), y • (H j : Set G) ⊆
        ⋃ i ∈ s.filter (H · ≠ H j), (y * x⁻¹ * g i) • (H i : Set G) := by
      intro y z hz
      simp_rw [Finset.mem_filter, Set.mem_iUnion]
      have ⟨i, hi, hmem⟩ : ∃ i ∈ s, x * (y⁻¹ * z) ∈ g i • (H i : Set G) := by
        simpa using Set.eq_univ_iff_forall.mp hcovers (x * (y⁻¹ * z))
      rw [mem_leftCoset_iff, SetLike.mem_coe, ← QuotientGroup.eq] at hmem
      refine ⟨i, ⟨hi, fun hij => hx i hi hij ?_⟩, ?_⟩
      · rwa [hmem, eq_comm, QuotientGroup.eq, hij, inv_mul_cancel_left,
          ← SetLike.mem_coe, ← mem_leftCoset_iff]
      · simpa [mem_leftCoset_iff, SetLike.mem_coe, QuotientGroup.eq, mul_assoc] using hmem
    -- Thus `G` can also be covered by a finite union `U k, f k • K k` of left cosets
    -- of the subgroups `H k ≠ H j`.
    let κ := ↥(s.filter (H · ≠ H j)) × Option ↥(s.filter (H · = H j))
    let f : κ → G
    | ⟨k₁, some k₂⟩ => g k₂ * x⁻¹ * g k₁
    | ⟨k₁, none⟩ => g k₁
    let K (k : κ) : Subgroup G := H k.1.val
    have hK' (k : κ) : K k ∈ (s.image H).erase (H j) := by
      have := Finset.mem_filter.mp k.1.property
      exact Finset.mem_erase.mpr ⟨this.2, Finset.mem_image_of_mem H this.1⟩
    have hK (k : κ) : K k ≠ H j := ((Finset.mem_erase.mp (hK' k)).left ·)
    replace hcovers : ⋃ k ∈ Finset.univ, f k • (K k : Set G) = Set.univ :=
        Set.iUnion₂_eq_univ_iff.mpr fun y => by
      rw [← s.filter_union_filter_neg_eq (H · = H j), Finset.set_biUnion_union] at hcovers
      cases (Set.mem_union _ _ _).mp (hcovers.superset (Set.mem_univ y)) with
      | inl hy =>
        have ⟨k, hk, hy⟩ := Set.mem_iUnion₂.mp hy
        have hk' : H k = H j := And.right <| by simpa using hk
        have ⟨i, hi, hy⟩ := Set.mem_iUnion₂.mp (hx (g k) (hk' ▸ hy))
        exact ⟨⟨⟨i, hi⟩, some ⟨k, hk⟩⟩, Finset.mem_univ _, hy⟩
      | inr hy =>
        have ⟨i, hi, hy⟩ := Set.mem_iUnion₂.mp hy
        exact ⟨⟨⟨i, hi⟩, none⟩, Finset.mem_univ _, hy⟩
    -- Let `H k` be one of the subgroups in this covering.
    have ⟨k⟩ : Nonempty κ := not_isEmpty_iff.mp fun hempty => by
      rw [Set.iUnion_of_empty] at hcovers
      exact Set.empty_ne_univ hcovers
    -- If `G` is the union of the cosets of `H k` in the new covering, we are done.
    by_cases hcovers' : ⋃ i ∈ Finset.filter (K · = K k) Finset.univ, f i • (K i : Set G) = Set.univ
    · rw [Set.iUnion₂_congr fun i hi => by rw [(Finset.mem_filter.mp hi).right]] at hcovers'
      exact ⟨k.1, Finset.mem_of_mem_filter k.1.1 k.1.2, hK k,
        finiteIndex_of_leftCoset_cover_const hcovers'⟩
    -- Otherwise, by the induction hypothesis, one of the subgroups `H k ≠ H j` has finite index.
    have hn' : (Finset.univ.image K).card < n := hn ▸ by
      refine ((Finset.card_le_card fun x => ?_).trans_lt <|
        Finset.card_erase_lt_of_mem (Finset.mem_image_of_mem H hj))
      rw [mem_image_univ_iff_mem_range, Set.mem_range]
      exact fun ⟨k, hk⟩ => hk ▸ hK' k
    have ⟨k', hk'⟩ := ih _ hn' hcovers k (Finset.mem_univ k) hcovers' rfl
    exact ⟨k'.1.1, Finset.mem_of_mem_filter k'.1.1 k'.1.2, hK k', hk'.2.2⟩

/-- Let the group `G` be the union of finitely many left cosets `g i • H i`.
Then at least one subgroup `H i` has finite index in `G`. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37b507a6c6f810c77b88bd72a6d78639136ff249` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
