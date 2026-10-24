# supDegree_monic_esymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c4736c30e82459d8bb087ca2f4ce876ddb6c1a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98c849d3-6c44-7ae8-3297-b8b39e3b788b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5faf3641-fa30-83dd-2b0f-33764d441d4d",
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
  "slug": "supdegree-monic-esymm--55198117dd168e1e0375bb82",
  "source": {
    "blob": "5c4736c30e82459d8bb087ca2f4ce876ddb6c1a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 171,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55198117dd168e1e0375bb82b0540abb20c0cbf8605af0bb280c242279e99624",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5faf3641-fa30-83dd-2b0f-33764d441d4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–195.

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
  all_goals simp only [Pi.toLex_apply, ofLex_toLex, Finsupp.indicator_apply]
  · have hki := mem_Iic.2 (hk.le.trans <| mem_Iic.1 hkm.1)
    rw [dif_pos hki, dif_pos]
    by_contra h
    exact lt_irrefl k <| ((lt_min'_iff _ _).1 hk) _ <| mem_sdiff.2 ⟨hki, h⟩
  · rw [dif_neg hkm.2, dif_pos hkm.1]; exact Nat.zero_lt_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c4736c30e82459d8bb087ca2f4ce876ddb6c1a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
