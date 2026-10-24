# card_le_of_interleaved

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5160912b-f549-a4d8-567e-a9c4b9f83305",
  "kind": "theorem",
  "lexical_name": "card_le_of_interleaved",
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
  "slug": "card-le-of-interleaved--d1213fe0f888fce1cdbce8c8",
  "source": {
    "blob": "4b45a670ec988407d16b92980b7b39b1bf377f7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 292,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1213fe0f888fce1cdbce8c86afa3858753e9aec9b807441537f10604a337476",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5160912b-f549-a4d8-567e-a9c4b9f83305`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_le_of_interleaved {s t : Finset α}
    (h : ∀ᵉ (x ∈ s) (y ∈ s),
        x < y → (∀ z ∈ s, z ∉ Set.Ioo x y) → ∃ z ∈ t, x < z ∧ z < y) :
    s.card ≤ t.card + 1 := by
  replace h : ∀ᵉ (x ∈ s) (y ∈ s), x < y → ∃ z ∈ t, x < z ∧ z < y := by
    intro x hx y hy hxy
    rcases exists_next_right ⟨y, hy, hxy⟩ with ⟨a, has, hxa, ha⟩
    rcases h x hx a has hxa fun z hzs hz => hz.2.not_ge <| ha _ hzs hz.1 with ⟨b, hbt, hxb, hba⟩
    exact ⟨b, hbt, hxb, hba.trans_le <| ha _ hy hxy⟩
  set f : α → WithTop α := fun x => (t.filter fun y => x < y).min
  have f_mono : StrictMonoOn f s := by
    intro x hx y hy hxy
    rcases h x hx y hy hxy with ⟨a, hat, hxa, hay⟩
    calc
      f x ≤ a := min_le (mem_filter.2 ⟨hat, by simpa⟩)
      _ < f y :=
        (Finset.lt_inf_iff <| WithTop.coe_lt_top a).2 fun b hb =>
          WithTop.coe_lt_coe.2 <| hay.trans (by simpa using (mem_filter.1 hb).2)
  calc
    s.card = (s.image f).card := (card_image_of_injOn f_mono.injOn).symm
    _ ≤ (insert ⊤ (t.image (↑)) : Finset (WithTop α)).card :=
      card_mono <| image_subset_iff.2 fun x _ =>
          insert_subset_insert _ (image_subset_image <| filter_subset _ _)
            (min_mem_insert_top_image_coe _)
    _ ≤ t.card + 1 := (card_insert_le _ _).trans (Nat.add_le_add_right card_image_le _)

/-- If finsets `s` and `t` are interleaved, then `Finset.card s ≤ Finset.card (t \ s) + 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b45a670ec988407d16b92980b7b39b1bf377f7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
