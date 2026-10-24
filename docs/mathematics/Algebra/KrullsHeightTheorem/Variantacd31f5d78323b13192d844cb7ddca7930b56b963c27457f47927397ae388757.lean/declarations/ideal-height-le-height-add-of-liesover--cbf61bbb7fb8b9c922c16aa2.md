# Ideal.height_le_height_add_of_liesOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1fa404f1e229a5dc7850ad185ac2c9594fd7418f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 450,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/acd31f5d78323b13192d844cb7ddca7930b56b963c27457f47927397ae388757.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1f23433-1858-61f8-de65-01fbf7810b30",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6fc1509-de05-e0ef-4b3d-aaf6c19fc3d5",
  "kind": "lemma",
  "lexical_name": "Ideal.height_le_height_add_of_liesOver",
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
  "slug": "ideal-height-le-height-add-of-liesover--cbf61bbb7fb8b9c922c16aa2",
  "source": {
    "blob": "1fa404f1e229a5dc7850ad185ac2c9594fd7418f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 486,
    "line": 450,
    "path": "GRWTSK/Algebra/KrullsHeightTheorem/Variantacd31f5d78323b13192d844cb7ddca7930b56b963c27457f47927397ae388757.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbf61bbb7fb8b9c922c16aa20d37c0df77026a261f5b9f13438df35993b034a6",
  "verification": {
    "reference": "docs/verification/Algebra/KrullsHeightTheorem/Variantacd31f5d78323b13192d844cb7ddca7930b56b963c27457f47927397ae388757.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6fc1509-de05-e0ef-4b3d-aaf6c19fc3d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.height_le_height_add_of_liesOver [IsNoetherianRing S] (p : Ideal R) [p.IsPrime]
      (P : Ideal S) [P.IsPrime] [P.LiesOver p] :
    P.height ≤ p.height +
      (P.map (Ideal.Quotient.mk <| p.map (algebraMap R S))).height := by
  classical
  obtain ⟨s, hp, heq⟩ := p.exists_finset_card_eq_height_of_isNoetherianRing
  let P' := P.map (Ideal.Quotient.mk <| p.map (algebraMap R S))
  obtain ⟨s', hP', heq'⟩ := P'.exists_finset_card_eq_height_of_isNoetherianRing
  have hsP'sub : (s' : Set <| S ⧸ (Ideal.map (algebraMap R S) p)) ⊆ (P' : Set <| S ⧸ _) :=
    fun x hx ↦ hP'.le (Ideal.subset_span hx)
  have : Set.SurjOn (Ideal.Quotient.mk (p.map (algebraMap R S))) P s' := by
    refine Set.SurjOn.mono subset_rfl hsP'sub fun x hx ↦ ?_
    obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective x
    rw [SetLike.mem_coe, Ideal.mem_quotient_iff_mem] at hx
    · use y, hx
    · rw [Ideal.map_le_iff_le_comap, Ideal.LiesOver.over (p := p) (P := P)]
  obtain ⟨o, ho, hinj, himgo⟩ := s'.exists_subset_injOn_image_eq_of_surjOn (P : Set S) this
  let t : Finset S := Finset.image (algebraMap R S) s ∪ o
  suffices h : P.height ≤ t.card by
    rw [← heq, ← heq']
    apply le_trans h
    norm_cast
    refine le_trans (Finset.card_union_le _ _) (add_le_add Finset.card_image_le ?_)
    rw [← himgo, Finset.card_image_of_injOn hinj]
  refine Ideal.height_le_card_of_mem_minimalPrimes_span_finset ?_
  have : Ideal.span t = Ideal.map (algebraMap R S) (.span s) ⊔ .span o := by
    simp [t, Ideal.map_span]
  refine this ▸ map_sup_mem_minimalPrimes_of_map_quotientMk_mem_minimalPrimes hp (span_le.mpr ho) ?_
  convert! hP'
  simp [Ideal.map_span, ← himgo]

/--
If `S` satisfies going-down as an `R`-algebra and `P` lies over `p`, the height of `P` is equal
to the height of `p` plus the height of the image of `P` in `S ⧸ p S`
(Matsumura 13.B Th. 19 (2)).
-/
@[stacks 00ON]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KrullsHeightTheorem/Variantacd31f5d78323b13192d844cb7ddca7930b56b963c27457f47927397ae388757.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KrullsHeightTheorem/Variantacd31f5d78323b13192d844cb7ddca7930b56b963c27457f47927397ae388757.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fa404f1e229a5dc7850ad185ac2c9594fd7418f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
