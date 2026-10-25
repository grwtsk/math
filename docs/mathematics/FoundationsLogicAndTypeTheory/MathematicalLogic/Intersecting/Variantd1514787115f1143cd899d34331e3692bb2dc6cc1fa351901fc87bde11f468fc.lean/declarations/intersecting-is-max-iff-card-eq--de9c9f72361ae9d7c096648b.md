# Intersecting.is_max_iff_card_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9018c50a48691ffdfbde9368f9ff788cd54c8ef7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d12839c-2e2b-4189-7f06-5635827f29b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b85850d-b638-5284-db53-92795339c318",
  "kind": "theorem",
  "lexical_name": "Intersecting.is_max_iff_card_eq",
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
  "slug": "intersecting-is-max-iff-card-eq--de9c9f72361ae9d7c096648b",
  "source": {
    "blob": "9018c50a48691ffdfbde9368f9ff788cd54c8ef7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 161,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de9c9f72361ae9d7c096648b091dfc5ff914565507cac2ef7b578094e2a1a1ed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b85850d-b638-5284-db53-92795339c318`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Intersecting.is_max_iff_card_eq (hs : (s : Set α).Intersecting) :
    (∀ t : Finset α, (t : Set α).Intersecting → s ⊆ t → s = t) ↔ 2 * #s = Fintype.card α := by
  classical
    refine ⟨fun h ↦ ?_, fun h t ht hst ↦ Finset.eq_of_subset_of_card_le hst <|
      Nat.le_of_mul_le_mul_left (ht.card_le.trans_eq h.symm) Nat.two_pos⟩
    suffices s.disjUnion (s.map ⟨compl, compl_injective⟩) hs.disjoint_map_compl = Finset.univ by
      rw [Fintype.card, ← this, Nat.two_mul, card_disjUnion, card_map]
    rw [← coe_eq_univ, disjUnion_eq_union, coe_union, coe_map, Function.Embedding.coeFn_mk,
      image_eq_preimage_of_inverse compl_compl compl_compl]
    refine eq_univ_of_forall fun a => ?_
    simp_rw [mem_union, mem_preimage]
    by_contra! ha
    refine s.ne_insert_of_notMem _ ha.1 (h _ ?_ <| s.subset_insert _)
    rw [coe_insert]
    refine hs.insert ?_ fun b hb hab => ha.2 <| (hs.isUpperSet' h) hab.le_compl_left hb
    rintro rfl
    have := h {⊤} (by rw [coe_singleton]; exact intersecting_singleton.2 top_ne_bot)
    rw [compl_bot] at ha
    rw [coe_eq_empty.1 ((hs.isUpperSet' h).top_notMem.1 ha.2)] at this
    exact Finset.singleton_ne_empty _ (this <| Finset.empty_subset _).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9018c50a48691ffdfbde9368f9ff788cd54c8ef7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
