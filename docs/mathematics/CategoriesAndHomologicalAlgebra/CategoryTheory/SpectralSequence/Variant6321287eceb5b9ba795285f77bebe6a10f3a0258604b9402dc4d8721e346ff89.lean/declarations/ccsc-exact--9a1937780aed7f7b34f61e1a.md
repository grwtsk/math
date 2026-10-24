# ccSc_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0ad3da0-89da-ddc1-74d0-171a59a3fd8d",
  "kind": "lemma",
  "lexical_name": "ccSc_exact",
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
  "slug": "ccsc-exact--9a1937780aed7f7b34f61e1a",
  "source": {
    "blob": "c58cd3a6ccdc358167bdb86c3433f2aa7319ab51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 393,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variant6321287eceb5b9ba795285f77bebe6a10f3a0258604b9402dc4d8721e346ff89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a1937780aed7f7b34f61e1a548cd1834e4c01076fc36f6fc81312b83aae1647",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variant6321287eceb5b9ba795285f77bebe6a10f3a0258604b9402dc4d8721e346ff89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0ad3da0-89da-ddc1-74d0-171a59a3fd8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ccSc_exact (hn₁ : n₀ + 1 = n₁ := by lia) (hn₂ : n₁ + 1 = n₂ := by lia) :
    (ccSc X data r r' hrr' hr pq pq'
      i₀ i₁ i₂ i₃ i₃' hi₀ hi₁ hi₂ hi₃ hi₃' n₀ n₁ n₂ hn₁').Exact := by
  by_cases h : (c r).Rel pq pq'
  · refine ShortComplex.exact_of_iso (Iso.symm ?_)
      (X.dCokernelSequence_exact
      (homOfLE (data.le₀₁' r hr pq' hi₀ hi₁))
      (homOfLE (data.le₁₂' pq' hi₁ hi₂)) (homOfLE (data.le₂₃' r hr pq' hi₂ hi₃))
      (homOfLE (data.le₃₃' hrr' hr pq' hi₃ hi₃'))
      (show i₃' ⟶ data.i₃ r pq from homOfLE (by
        simpa only [hi₃', data.i₃_next r r' _ _ h] using data.le₂₃ r pq)) _ rfl
      (n₀ - 1) n₀ n₁ n₂ (by simp) hn₁ hn₂)
    refine ShortComplex.isoMk
      (pageXIso X data _ hr _ _ _ _ _
        (by rw [hi₂, data.hc₀₂ r _ _ h]) (by rw [hi₃, data.hc₁₃ r _ _ h])
        (by rw [hi₃', data.i₃_next r r' _ _ h]) rfl _ _ _ (by have := data.hc r _ _ h; lia))
      (pageXIso X data _ hr _ _ _ _ _ hi₀ hi₁ hi₂ hi₃ _ _ _ hn₁') (Iso.refl _) ?_ (by simp)
    dsimp
    rw [pageD_eq X data r hr pq pq' h
          (homOfLE (data.le₀₁' r hr pq' hi₀ hi₁)) (homOfLE (data.le₁₂' pq' hi₁ hi₂))
          (homOfLE (data.le₂₃' r hr pq' hi₂ hi₃)) (homOfLE (data.le₃₃' hrr' hr pq' hi₃ hi₃'))
          (homOfLE (data.le₂₃' r hr pq (by rw [hi₃', data.i₃_next r r' pq pq' h]) rfl))
          hi₀ hi₁ (hi₂.trans (data.hc₀₂ r pq pq' h).symm)
          (hi₃.trans (data.hc₁₃ r pq pq' h).symm) (hi₃'.trans (data.i₃_next r r' pq pq' h)) rfl
          (n₀ - 1) n₀ n₁ n₂ (by have := data.hc r _ _ h; lia),
        Category.assoc, Category.assoc, Iso.inv_hom_id, Category.comp_id]
  · refine (ShortComplex.exact_iff_mono _ ((page X data r hr).shape _ _ h)).mpr ?_
    have := isIso_mapFourδ₄Toδ₃' X data r r' hrr' hr pq pq' hpq
      i₀ i₁ i₂ i₃ i₃' hi₀ hi₁ hi₂ hi₃ hi₃' n₀ n₁ n₂ hn₁' h
    dsimp
    infer_instance

variable [X.HasSpectralSequence data] in
/-- The cokernel cofork `cc` is a colimit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variant6321287eceb5b9ba795285f77bebe6a10f3a0258604b9402dc4d8721e346ff89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variant6321287eceb5b9ba795285f77bebe6a10f3a0258604b9402dc4d8721e346ff89.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c58cd3a6ccdc358167bdb86c3433f2aa7319ab51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
