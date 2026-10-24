# supDegree_monic_esymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b450c6f9-1587-a5bc-2607-e8ad327245c6",
  "kind": "lemma",
  "lexical_name": "supDegree_monic_esymm",
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
  "slug": "supdegree-monic-esymm--fe63da2c51912560a845f49a",
  "source": {
    "blob": "b4be8cfbca1a6bdec3f250a361ad1bb296ad05c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 185,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe63da2c51912560a845f49afc582ce01fdc912a676a9eb2bdbe46dff7a90f2e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b450c6f9-1587-a5bc-2607-e8ad327245c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma supDegree_monic_esymm [Nontrivial R] {i : ℕ} (him : i < m) :
    supDegree toLex (esymm (Fin m) R (i + 1)) =
      toLex (Finsupp.indicator (Iic ⟨i, him⟩) fun _ _ ↦ 1) ∧
    Monic toLex (esymm (Fin m) R (i + 1)) := by
  have := supDegree_leadingCoeff_sum_eq (D := toLex) (s := univ.powersetCard (i + 1))
    (i := Iic (⟨i, him⟩ : Fin m)) ?_ (f := fun s ↦ monomial (∑ j ∈ s, fun₀ | j => 1) (1 : R)) ?_
  · rwa [← esymm_eq_sum_monomial, ← Finsupp.indicator_eq_sum_single, ← single_eq_monomial,
      supDegree_single_ne_zero _ one_ne_zero, leadingCoeff_single toLex.injective] at this
  · exact mem_powersetCard.2 ⟨subset_univ _, Fin.card_Iic _⟩
  intro t ht hne
  have ht' : #t = #(Iic (⟨i, him⟩ : Fin m)) := by
    rw [(mem_powersetCard.1 ht).2, Fin.card_Iic]
  simp_rw [← single_eq_monomial, supDegree_single_ne_zero _ one_ne_zero,
    ← Finsupp.indicator_eq_sum_single]
  rw [ne_comm, Ne, ← subset_iff_eq_of_card_le ht'.le, not_subset] at hne
  simp_rw [← mem_sdiff] at hne
  have hkm := mem_sdiff.1 (min'_mem _ hne)
  refine ⟨min' _ hne, fun k hk ↦ ?_, ?_⟩
  all_goals simp only [ofLex_toLex, Finsupp.indicator_apply]
  · have hki := mem_Iic.2 (hk.le.trans <| mem_Iic.1 hkm.1)
    rw [dite_eq_left hki, dite_eq_left]
    by_contra h
    exact lt_irrefl k <| ((lt_min'_iff _ _).1 hk) _ <| mem_sdiff.2 ⟨hki, h⟩
  · rw [dite_eq_right hkm.2, dite_eq_left hkm.1]; exact Nat.zero_lt_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4be8cfbca1a6bdec3f250a361ad1bb296ad05c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
