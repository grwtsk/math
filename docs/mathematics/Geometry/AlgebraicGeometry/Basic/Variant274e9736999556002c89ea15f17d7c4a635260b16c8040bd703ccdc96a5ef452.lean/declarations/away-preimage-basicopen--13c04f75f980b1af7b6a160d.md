# awayι_preimage_basicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "080e13f6216621fcf7dadf6c41c4a97d56e1b78d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 301,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be0609bf-2c7d-4df2-6eb8-7f4556c9aaa0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48977379-0aba-e3cf-25eb-036ee49fbc20",
  "kind": "lemma",
  "lexical_name": "awayι_preimage_basicOpen",
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
  "slug": "away-preimage-basicopen--13c04f75f980b1af7b6a160d",
  "source": {
    "blob": "080e13f6216621fcf7dadf6c41c4a97d56e1b78d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 301,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13c04f75f980b1af7b6a160de090878e0358b02b29ab247dc1692565ca37bb21",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48977379-0aba-e3cf-25eb-036ee49fbc20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma awayι_preimage_basicOpen :
    awayι 𝒜 f f_deg hm ⁻¹ᵁ basicOpen 𝒜 g =
      PrimeSpectrum.basicOpen (Away.isLocalizationElem f_deg g_deg) := by
  ext1
  trans Set.range (Spec.map (CommRingCat.ofHom (awayMap 𝒜 g_deg rfl)))
  · rw [← pullbackAwayιIso_inv_fst 𝒜 f_deg hm g_deg hm' rfl]
    simp only [TopologicalSpace.Opens.map_coe, Scheme.Hom.comp_base,
      TopCat.hom_comp, ContinuousMap.coe_comp, Set.range_comp]
    rw [Set.range_eq_univ.mpr (by exact
      (pullbackAwayιIso 𝒜 f_deg hm g_deg hm' rfl).inv.homeomorph.surjective),
      ← opensRange_awayι _ _ g_deg hm']
    simp [IsOpenImmersion.range_pullbackFst]
  · let := (awayMap (f := f) 𝒜 g_deg rfl).toAlgebra
    let := HomogeneousLocalization.Away.isLocalization_mul f_deg g_deg rfl hm.ne'
    exact PrimeSpectrum.localization_away_comap_range _ _

open TopologicalSpace.Opens in
/-- Given a family of homogeneous elements `f` of positive degree that spans the irrelevant ideal,
`Spec (A_f)₀ ⟶ Proj A` forms an affine open cover of `Proj A`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `080e13f6216621fcf7dadf6c41c4a97d56e1b78d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
