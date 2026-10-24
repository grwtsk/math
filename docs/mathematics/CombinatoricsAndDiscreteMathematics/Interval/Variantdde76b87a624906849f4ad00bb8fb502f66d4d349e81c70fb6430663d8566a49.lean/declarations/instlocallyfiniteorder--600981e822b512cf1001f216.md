# instLocallyFiniteOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0b6f7ab16748f1eb2ef7d03cd8299d05c57dda656f3c0f0049d43cc194957f4",
  "kind": "instance",
  "lexical_name": "instLocallyFiniteOrder",
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
  "slug": "instlocallyfiniteorder--600981e822b512cf1001f216",
  "source": {
    "blob": "0723f783e0bff75746c85602b4a2672abdecdcfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 24,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:600981e822b512cf1001f216f13a78a1ba28193db05ae094c4d62e459f2223fc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0b6f7ab16748f1eb2ef7d03cd8299d05c57dda656f3c0f0049d43cc194957f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instLocallyFiniteOrder : LocallyFiniteOrder ℤ where
  finsetIcc a b :=
    (Finset.range (b + 1 - a).toNat).map <| Nat.castEmbedding.trans <| addLeftEmbedding a
  finsetIco a b := (Finset.range (b - a).toNat).map <| Nat.castEmbedding.trans <| addLeftEmbedding a
  finsetIoc a b :=
    (Finset.range (b - a).toNat).map <| Nat.castEmbedding.trans <| addLeftEmbedding (a + 1)
  finsetIoo a b :=
    (Finset.range (b - a - 1).toNat).map <| Nat.castEmbedding.trans <| addLeftEmbedding (a + 1)
  finset_mem_Icc a b x := by
    simp_rw [mem_map, mem_range, Int.lt_toNat, Function.Embedding.trans_apply,
      Nat.castEmbedding_apply, addLeftEmbedding_apply]
    constructor
    · rintro ⟨a, h, rfl⟩
      rw [lt_sub_iff_add_lt, Int.lt_add_one_iff, add_comm] at h
      exact ⟨Int.le.intro a rfl, h⟩
    · rintro ⟨ha, hb⟩
      use (x - a).toNat
      rw [← lt_add_one_iff] at hb
      rw [toNat_sub_of_le ha]
      exact ⟨sub_lt_sub_right hb _, add_sub_cancel _ _⟩
  finset_mem_Ico a b x := by
    simp_rw [mem_map, mem_range, Int.lt_toNat, Function.Embedding.trans_apply,
      Nat.castEmbedding_apply, addLeftEmbedding_apply]
    constructor
    · rintro ⟨a, h, rfl⟩
      exact ⟨Int.le.intro a rfl, lt_sub_iff_add_lt'.mp h⟩
    · rintro ⟨ha, hb⟩
      use (x - a).toNat
      rw [toNat_sub_of_le ha]
      exact ⟨sub_lt_sub_right hb _, add_sub_cancel _ _⟩
  finset_mem_Ioc a b x := by
    simp_rw [mem_map, mem_range, Int.lt_toNat, Function.Embedding.trans_apply,
      Nat.castEmbedding_apply, addLeftEmbedding_apply]
    constructor
    · rintro ⟨a, h, rfl⟩
      rw [← add_one_le_iff, le_sub_iff_add_le', add_comm _ (1 : ℤ), ← add_assoc] at h
      exact ⟨Int.le.intro a rfl, h⟩
    · rintro ⟨ha, hb⟩
      use (x - (a + 1)).toNat
      rw [toNat_sub_of_le ha, ← add_one_le_iff, sub_add, add_sub_cancel_right]
      exact ⟨sub_le_sub_right hb _, add_sub_cancel _ _⟩
  finset_mem_Ioo a b x := by
    simp_rw [mem_map, mem_range, Int.lt_toNat, Function.Embedding.trans_apply,
      Nat.castEmbedding_apply, addLeftEmbedding_apply]
    constructor
    · rintro ⟨a, h, rfl⟩
      rw [sub_sub, lt_sub_iff_add_lt'] at h
      exact ⟨Int.le.intro a rfl, h⟩
    · rintro ⟨ha, hb⟩
      use (x - (a + 1)).toNat
      rw [toNat_sub_of_le ha, sub_sub]
      exact ⟨sub_lt_sub_right hb _, add_sub_cancel _ _⟩

variable (a b : ℤ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0723f783e0bff75746c85602b4a2672abdecdcfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
