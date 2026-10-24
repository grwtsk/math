# Ideal.height_le_height_add_spanFinrank_of_le

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
      "line": 356,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/acd31f5d78323b13192d844cb7ddca7930b56b963c27457f47927397ae388757.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e399498a-53e3-b8b2-0e3a-539b3aa39c00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:16bfe1b1-7800-7f97-74b1-28fe5399be03",
  "kind": "lemma",
  "lexical_name": "Ideal.height_le_height_add_spanFinrank_of_le",
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
  "slug": "ideal-height-le-height-add-spanfinrank-of-le--7dbb1b1e1ad82c7ef4fb14e4",
  "source": {
    "blob": "1fa404f1e229a5dc7850ad185ac2c9594fd7418f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 356,
    "path": "GRWTSK/Algebra/KrullsHeightTheorem/Variantacd31f5d78323b13192d844cb7ddca7930b56b963c27457f47927397ae388757.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dbb1b1e1ad82c7ef4fb14e40625c8e2fb3885395f06d4df730de447f6363eb1",
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

Occurrence: `result:16bfe1b1-7800-7f97-74b1-28fe5399be03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.height_le_height_add_spanFinrank_of_le {I p : Ideal R} [p.IsPrime] (hrp : I ≤ p) :
    p.height ≤ (p.map (Quotient.mk I)).height + I.spanFinrank := by
  classical
  let p' := p.map (algebraMap R (R ⧸ I))
  have : p'.IsPrime := isPrime_map_quotientMk_of_isPrime hrp
  obtain ⟨s, hps, hs⟩ := exists_finset_card_eq_height_of_isNoetherianRing p'
  have hsp' : (s : Set (R ⧸ I)) ⊆ (p' : Set _) := fun _ hx ↦ hps.le (subset_span hx)
  have : Set.SurjOn (Ideal.Quotient.mk I) p s := by
    refine Set.SurjOn.mono subset_rfl hsp' fun x hx ↦ ?_
    obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective x
    exact ⟨x, by simpa [hrp, sup_of_le_left, p'] using hx⟩
  obtain ⟨o, hsubset, ho, himgo⟩ := s.exists_subset_injOn_image_eq_of_surjOn (p : Set R) this
  have hI : I.FG := IsNoetherian.noetherian I
  let t : Finset R := o ∪ (Submodule.FG.finite_generators hI).toFinset
  suffices h : p.height ≤ t.card by
    refine le_trans h (hs ▸ ?_)
    norm_cast
    have : (Submodule.FG.finite_generators hI).toFinset.card = I.spanFinrank := by
      rw [← Set.ncard_eq_toFinset_card (hs := Submodule.FG.finite_generators hI)]
      exact Submodule.FG.generators_ncard hI
    grind
  refine Ideal.height_le_card_of_mem_minimalPrimes_span_finset ?_
  rw [Finset.coe_union, Set.Finite.coe_toFinset, span_union, sup_comm, span,
    Submodule.span_generators]
  refine Ideal.mem_minimalPrimes_sup hrp ?_
  convert! hps
  simp [Ideal.map_span, ← himgo]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KrullsHeightTheorem/Variantacd31f5d78323b13192d844cb7ddca7930b56b963c27457f47927397ae388757.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KrullsHeightTheorem/Variantacd31f5d78323b13192d844cb7ddca7930b56b963c27457f47927397ae388757.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fa404f1e229a5dc7850ad185ac2c9594fd7418f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
