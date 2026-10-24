# compression_improved

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b63d9f4-0a08-36f4-46f8-eb4c0624fb67",
  "kind": "lemma",
  "lexical_name": "compression_improved",
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
  "slug": "compression-improved--9e0a1573c656cb59477b1c01",
  "source": {
    "blob": "08dfb3532f0b77b4454d0354a84f98f7de6d331f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 161,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant318d81793696ffd57322684fccab9a014dde03d21474d92539de2a5ae50bea54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e0a1573c656cb59477b1c0166c13f88c1c6fb0d4272d6649c22c43bc6918d66",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant318d81793696ffd57322684fccab9a014dde03d21474d92539de2a5ae50bea54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b63d9f4-0a08-36f4-46f8-eb4c0624fb67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma compression_improved (𝒜 : Finset (Finset α)) (h₁ : UsefulCompression U V)
    (h₂ : ∀ ⦃U₁ V₁⦄, UsefulCompression U₁ V₁ → #U₁ < #U → IsCompressed U₁ V₁ 𝒜) :
    #(∂ (𝓒 U V 𝒜)) ≤ #(∂ 𝒜) := by
  obtain ⟨UVd, same_size, hU, hV, max_lt⟩ := h₁
  refine card_shadow_compression_le _ _ fun x Hx ↦ ⟨min' V hV, min'_mem _ _, ?_⟩
  obtain hU' | hU' := eq_or_lt_of_le (succ_le_iff.2 hU.card_pos)
  · rw [← hU'] at same_size
    have : erase U x = ∅ := by rw [← Finset.card_eq_zero, card_erase_of_mem Hx, ← hU']
    have : erase V (min' V hV) = ∅ := by
      rw [← Finset.card_eq_zero, card_erase_of_mem (min'_mem _ _), ← same_size]
    rw [‹erase U x = ∅›, ‹erase V (min' V hV) = ∅›]
    exact isCompressed_self _ _
  refine h₂ ⟨UVd.mono (erase_subset ..) (erase_subset ..), ?_, ?_, ?_, ?_⟩ (card_erase_lt_of_mem Hx)
  · rw [card_erase_of_mem (min'_mem _ _), card_erase_of_mem Hx, same_size]
  · rwa [← card_pos, card_erase_of_mem Hx, tsub_pos_iff_lt]
  · rwa [← Finset.card_pos, card_erase_of_mem (min'_mem _ _), ← same_size, tsub_pos_iff_lt]
  · exact (Finset.max'_subset _ <| erase_subset _ _).trans_lt (max_lt.trans_le <| le_max' _ _ <|
      mem_erase.2 ⟨(min'_lt_max'_of_card _ (by rwa [← same_size])).ne', max'_mem _ _⟩)

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
/-- If we're compressed by all useful compressions, then we're an initial segment. This is the other
key Kruskal-Katona part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant318d81793696ffd57322684fccab9a014dde03d21474d92539de2a5ae50bea54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant318d81793696ffd57322684fccab9a014dde03d21474d92539de2a5ae50bea54.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08dfb3532f0b77b4454d0354a84f98f7de6d331f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
