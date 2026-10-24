# kf_w

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9ad3c38-448d-bdd6-1b2e-8c484e9eaff0",
  "kind": "lemma",
  "lexical_name": "kf_w",
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
  "slug": "kf-w--1b7d5da8eaea753f608fc1d8",
  "source": {
    "blob": "c58cd3a6ccdc358167bdb86c3433f2aa7319ab51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 245,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variant6321287eceb5b9ba795285f77bebe6a10f3a0258604b9402dc4d8721e346ff89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b7d5da8eaea753f608fc1d812a4a53f69fa8093401f43c192dc20e77a4caa82",
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

Occurrence: `result:e9ad3c38-448d-bdd6-1b2e-8c484e9eaff0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma kf_w (hn₁ : n₀ + 1 = n₁ := by lia) (hn₂ : n₁ + 1 = n₂ := by lia) :
    (X.mapFourδ₁Toδ₀' i₀' i₀ i₁ i₂ i₃ (data.i₀_le' hrr' hr pq' hi₀' hi₀)
      (data.le₀₁' r hr pq' hi₀ hi₁) (data.le₁₂' pq' hi₁ hi₂) (data.le₂₃' r hr pq' hi₂ hi₃)
        n₀ n₁ n₂ hn₁ hn₂ ≫
      (pageXIso X data _ hr _ _ _ _ _ hi₀ hi₁ hi₂ hi₃ _ _ _ hn₁' _ _).inv) ≫
        (page X data r hr).d pq' pq'' = 0 := by
  by_cases h : (c r).Rel pq' pq''
  · dsimp
    rw [pageD_eq X data r hr pq' pq'' h
      (homOfLE (by simpa only [hi₀', data.i₀_prev r r' _ _ h] using data.le₀₁ r pq''))
      (homOfLE (data.i₀_le' hrr' hr pq' hi₀' hi₀)) (homOfLE (data.le₀₁' r hr pq' hi₀ hi₁))
      (homOfLE (data.le₁₂' pq' hi₁ hi₂)) (homOfLE (data.le₂₃' r hr pq' hi₂ hi₃)) rfl
      (by rw [hi₀', data.i₀_prev r r' pq' pq'' h]) hi₀ hi₁ hi₂ hi₃ _ _ _ _ hn₁' hn₁ hn₂ rfl,
      Category.assoc, Iso.inv_hom_id_assoc, map_fourδ₁Toδ₀_d_assoc .., zero_comp]
  · rw [HomologicalComplex.shape _ _ _ h, comp_zero]

/-- A (limit) kernel fork of the differential on the `r`th page whose point
identifies to an object `X.E` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variant6321287eceb5b9ba795285f77bebe6a10f3a0258604b9402dc4d8721e346ff89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variant6321287eceb5b9ba795285f77bebe6a10f3a0258604b9402dc4d8721e346ff89.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c58cd3a6ccdc358167bdb86c3433f2aa7319ab51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
