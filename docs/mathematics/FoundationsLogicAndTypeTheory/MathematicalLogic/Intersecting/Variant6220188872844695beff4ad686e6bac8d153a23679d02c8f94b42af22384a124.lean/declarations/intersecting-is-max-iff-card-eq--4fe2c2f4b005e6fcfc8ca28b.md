# Intersecting.is_max_iff_card_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2aec6140-4f65-5d78-9b29-a9fff833555f",
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
  "slug": "intersecting-is-max-iff-card-eq--4fe2c2f4b005e6fcfc8ca28b",
  "source": {
    "blob": "ab8cb2bb188c95ac201a2b1decef094662749d36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fe2c2f4b005e6fcfc8ca28bc33e49e613d3fc62f0626e94fa33d48a80858038",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2aec6140-4f65-5d78-9b29-a9fff833555f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–189.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab8cb2bb188c95ac201a2b1decef094662749d36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
