# mem_shadow_iff_exists_mem_card_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6274fd7-582d-c2c1-b388-5a16935f8d6f",
  "kind": "theorem",
  "lexical_name": "mem_shadow_iff_exists_mem_card_add",
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
  "slug": "mem-shadow-iff-exists-mem-card-add--90f1bd2470b9cf73212aaa59",
  "source": {
    "blob": "f364e12f95e6a7105a9c49ecd761f72dda12494b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 151,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90f1bd2470b9cf73212aaa5987ccc976183cdb58e6c2f30c2a3bd60e360a413b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6274fd7-582d-c2c1-b388-5a16935f8d6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_shadow_iff_exists_mem_card_add :
    s ∈ ∂ ^[k] 𝒜 ↔ ∃ t ∈ 𝒜, s ⊆ t ∧ t.card = s.card + k := by
  induction' k with k ih generalizing 𝒜 s
  · refine' ⟨fun hs => ⟨s, hs, Subset.refl _, rfl⟩, _⟩
    rintro ⟨t, ht, hst, hcard⟩
    rwa [eq_of_subset_of_card_le hst hcard.le]
  simp only [exists_prop, Function.comp_apply, Function.iterate_succ]
  refine' ih.trans _
  clear ih
  constructor
  · rintro ⟨t, ht, hst, hcardst⟩
    obtain ⟨u, hu, htu, hcardtu⟩ := mem_shadow_iff_exists_mem_card_add_one.1 ht
    refine' ⟨u, hu, hst.trans htu, _⟩
    rw [hcardtu, hcardst]
    rfl
  · rintro ⟨t, ht, hst, hcard⟩
    obtain ⟨u, hsu, hut, hu⟩ :=
      Finset.exists_intermediate_set k
        (by
          rw [add_comm, hcard]
          exact le_succ _)
        hst
    rw [add_comm] at hu
    refine' ⟨u, mem_shadow_iff_exists_mem_card_add_one.2 ⟨t, ht, hut, _⟩, hsu, hu⟩
    rw [hcard, hu]
    rfl
#align finset.mem_shadow_iff_exists_mem_card_add Finset.mem_shadow_iff_exists_mem_card_add

end Shadow

open FinsetFamily

section UpShadow

variable [DecidableEq α] [Fintype α] {𝒜 : Finset (Finset α)} {s t : Finset α} {a : α} {k r : ℕ}

/-- The upper shadow of a set family `𝒜` is all sets we can get by adding one element to any set in
`𝒜`, and the (`k` times) iterated upper shadow (`upShadow^[k]`) is all sets we can get by adding
`k` elements from any set in `𝒜`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f364e12f95e6a7105a9c49ecd761f72dda12494b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
