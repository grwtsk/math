# kruskal_katona_lovasz_form

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8fe3293e6b636baf85a98304145dd1d087b0604",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 301,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/8004580802286778607446fec3ffd4c9476e350e5c5185539470294df0ba26e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8034393b-3132-3acb-72e1-001b9066265d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03ad2079-8754-316f-d6c2-3cdcbfeb83cd",
  "kind": "theorem",
  "lexical_name": "kruskal_katona_lovasz_form",
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
  "slug": "kruskal-katona-lovasz-form--6e55756ad05269aa7e674b6c",
  "source": {
    "blob": "f8fe3293e6b636baf85a98304145dd1d087b0604",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 301,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant8004580802286778607446fec3ffd4c9476e350e5c5185539470294df0ba26e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e55756ad05269aa7e674b6ca00c197b802de6a57e661e89fff20b5485f5e989",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant8004580802286778607446fec3ffd4c9476e350e5c5185539470294df0ba26e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03ad2079-8754-316f-d6c2-3cdcbfeb83cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kruskal_katona_lovasz_form (hir : i ≤ r) (hrk : r ≤ k) (hkn : k ≤ n)
    (h₁ : (𝒜 : Set (Finset (Fin n))).Sized r) (h₂ : k.choose r ≤ #𝒜) :
    k.choose (r - i) ≤ #(∂^[i] 𝒜) := by
  set range'k : Finset (Fin n) :=
    attachFin (range k) fun m ↦ by rw [mem_range]; apply forall_lt_iff_le.2 hkn
  set 𝒞 : Finset (Finset (Fin n)) := powersetCard r range'k
  have : (𝒞 : Set (Finset (Fin n))).Sized r := Set.sized_powersetCard _ _
  calc
    k.choose (r - i)
    _ = #(powersetCard (r - i) range'k) := by rw [card_powersetCard, card_attachFin, card_range]
    _ = #(∂^[i] 𝒞) := by
      congr!
      ext B
      rw [mem_powersetCard, mem_shadow_iterate_iff_exists_sdiff]
      constructor
      · rintro ⟨hBk, hB⟩
        have := exists_subsuperset_card_eq hBk (Nat.le_add_left _ i) <| by
          rwa [hB, card_attachFin, card_range, ← Nat.add_sub_assoc hir, Nat.add_sub_cancel_left]
        obtain ⟨C, BsubC, hCrange, hcard⟩ := this
        rw [hB, ← Nat.add_sub_assoc hir, Nat.add_sub_cancel_left] at hcard
        refine ⟨C, mem_powersetCard.2 ⟨hCrange, hcard⟩, BsubC, ?_⟩
        rw [card_sdiff_of_subset BsubC, hcard, hB, Nat.sub_sub_self hir]
      · rintro ⟨A, Ah, hBA, card_sdiff_i⟩
        rw [mem_powersetCard] at Ah
        refine ⟨hBA.trans Ah.1, eq_tsub_of_add_eq ?_⟩
        rw [← Ah.2, ← card_sdiff_i, add_comm, card_sdiff_add_card_eq_card hBA]
    _ ≤ #(∂^[i] 𝒜) := by
      refine iterated_kk h₁ ?_ ⟨‹_›, ?_⟩
      · rwa [card_powersetCard, card_attachFin, card_range]
      simp_rw [𝒞, mem_powersetCard]
      rintro A B hA ⟨HB₁, HB₂⟩
      refine ⟨fun t ht ↦ ?_, ‹_›⟩
      rw [mem_attachFin, mem_range]
      have : toColex (image Fin.val B) < toColex (image Fin.val A) := by
        rwa [toColex_image_lt_toColex_image Fin.val_strictMono]
      apply Colex.forall_lt_mono this.le _ t (mem_image.2 ⟨t, ht, rfl⟩)
      simp_rw [mem_image]
      rintro _ ⟨a, ha, hab⟩
      simpa [range'k, hab] using hA.1 ha

end KK

/-- The **Erdős–Ko–Rado theorem**.

The maximum size of an intersecting family in `α` where all sets have size `r` is bounded by
`(card α - 1).choose (r - 1)`. This bound is sharp. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant8004580802286778607446fec3ffd4c9476e350e5c5185539470294df0ba26e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant8004580802286778607446fec3ffd4c9476e350e5c5185539470294df0ba26e0.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8fe3293e6b636baf85a98304145dd1d087b0604` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
