# card_preimage_eq_sum_card_image_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9a30d36780429f125748cd65c9102ea87565474",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/927c8c5e51c149c397dc5057410a3adbf4c7358e54cc04ad75b8b8fd5aa6a82a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae3e701f-365d-d1fb-a22b-1fc17090a86b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:efe07b74-c855-4db5-82b5-342a47f430bb",
  "kind": "theorem",
  "lexical_name": "card_preimage_eq_sum_card_image_eq",
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
  "slug": "card-preimage-eq-sum-card-image-eq--44b710f5c0173d6d51481777",
  "source": {
    "blob": "c9a30d36780429f125748cd65c9102ea87565474",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 33,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variant927c8c5e51c149c397dc5057410a3adbf4c7358e54cc04ad75b8b8fd5aa6a82a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44b710f5c0173d6d5148177715a74fec64e75eb243f32403c81046d17053d77c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Nat/Variant927c8c5e51c149c397dc5057410a3adbf4c7358e54cc04ad75b8b8fd5aa6a82a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efe07b74-c855-4db5-82b5-342a47f430bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_preimage_eq_sum_card_image_eq {M : Type*} {f : ι → M} {s : Finset M}
    (hb : ∀ b ∈ s, Set.Finite {a | f a = b}) :
    Nat.card (f⁻¹' s) = ∑ b ∈ s, Nat.card {a // f a = b} := by
  classical
  -- `t = s ∩ Set.range f` as a `Finset`
  let t := (Set.finite_coe_iff.mp (Finite.Set.finite_inter_of_left ↑s (Set.range f))).toFinset
  rw [show Nat.card (f⁻¹' s) = Nat.card (f⁻¹' t) by simp [t]]
  rw [show ∑ b ∈ s, Nat.card {a //f a = b} = ∑ b ∈ t, Nat.card {a | f a = b} by
    exact (Finset.sum_subset (by simp [t]) (by aesop)).symm]
  have ht : Set.Finite (f⁻¹' t) := Set.Finite.preimage' (finite_toSet t) (by aesop)
  rw [Nat.card_eq_card_finite_toFinset ht, Finset.card_eq_sum_card_image (f := f)]
  refine Finset.sum_congr ?_ fun m hm ↦ ?_
  · simpa [← Finset.coe_inj, t] using Set.image_preimage_eq_inter_range
  · rw [Nat.card_eq_card_finite_toFinset (hb _ (by aesop))]
    suffices {a | f a = m} ⊆ ht.toFinset from
      congr_arg (Finset.card ·) (Finset.ext_iff.mpr fun a ↦ by simpa using fun h ↦ this h)
    intro _ h
    simpa using by rwa [h]

end Finset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Nat/Variant927c8c5e51c149c397dc5057410a3adbf4c7358e54cc04ad75b8b8fd5aa6a82a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variant927c8c5e51c149c397dc5057410a3adbf4c7358e54cc04ad75b8b8fd5aa6a82a.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9a30d36780429f125748cd65c9102ea87565474` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
