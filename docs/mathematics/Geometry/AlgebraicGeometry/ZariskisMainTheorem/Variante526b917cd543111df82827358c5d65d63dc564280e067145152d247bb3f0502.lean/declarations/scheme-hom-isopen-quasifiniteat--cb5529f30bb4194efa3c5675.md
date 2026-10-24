# Scheme.Hom.isOpen_quasiFiniteAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a32b081abd10daac73e49c7f6f401ee80590c99",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e526b917cd543111df82827358c5d65d63dc564280e067145152d247bb3f0502.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d4dcaea-d83b-fa96-c97a-0e5d3474eac8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:72776395-1cd8-a99d-bd02-0cd0e0f6ef0a",
  "kind": "lemma",
  "lexical_name": "Scheme.Hom.isOpen_quasiFiniteAt",
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
  "slug": "scheme-hom-isopen-quasifiniteat--cb5529f30bb4194efa3c5675",
  "source": {
    "blob": "9a32b081abd10daac73e49c7f6f401ee80590c99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 292,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ZariskisMainTheorem/Variante526b917cd543111df82827358c5d65d63dc564280e067145152d247bb3f0502.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb5529f30bb4194efa3c56751ba0dec66eb89b1b4aa433196e1332f14114119c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ZariskisMainTheorem/Variante526b917cd543111df82827358c5d65d63dc564280e067145152d247bb3f0502.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72776395-1cd8-a99d-bd02-0cd0e0f6ef0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.Hom.isOpen_quasiFiniteAt [LocallyOfFiniteType f] :
    IsOpen { x | f.QuasiFiniteAt x } := by
  wlog H : IsAffineHom f
  · rw [isOpen_iff_forall_mem_open]
    intro x hx
    obtain ⟨_, ⟨U : Y.Opens, hU, rfl⟩, hxU, -⟩ := Y.isBasis_affineOpens.exists_subset_of_mem_open
      (Set.mem_univ (f x)) isOpen_univ
    obtain ⟨_, ⟨V : X.Opens, hV, rfl⟩, hxV, hVU⟩ := X.isBasis_affineOpens.exists_subset_of_mem_open
      hxU (f ⁻¹ᵁ U).2
    have inst : IsAffineHom (f.resLE U V hVU) :=
      have : IsAffine _ := hU
      have : IsAffine _ := hV
      isAffineHom_of_isAffine _
    refine ⟨_, ?_, V.2.isOpenEmbedding_subtypeVal.isOpenMap _ (this (f.resLE U V hVU) inst), ?_⟩
    · rintro _ ⟨x : V, hx : (f.resLE U V hVU).QuasiFiniteAt _, rfl⟩
      rwa [← quasiFiniteAt_comp_iff (g := U.ι), resLE_comp_ι,
        quasiFiniteAt_comp_iff_of_isOpenImmersion] at hx
    · refine ⟨⟨x, hxV⟩, show (f.resLE _ _ _).QuasiFiniteAt _ from ?_, rfl⟩
      rwa [← quasiFiniteAt_comp_iff (g := U.ι), resLE_comp_ι,
        quasiFiniteAt_comp_iff_of_isOpenImmersion]
  obtain ⟨U, hU, e⟩ := Scheme.Hom.exists_isIso_morphismRestrict_toNormalization f
  exact e ▸ (f.toNormalization ⁻¹ᵁ U).2

/-- The set of quasi-finite points of a morphism `f : X ⟶ Y` as an `X.Opens`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ZariskisMainTheorem/Variante526b917cd543111df82827358c5d65d63dc564280e067145152d247bb3f0502.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ZariskisMainTheorem/Variante526b917cd543111df82827358c5d65d63dc564280e067145152d247bb3f0502.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a32b081abd10daac73e49c7f6f401ee80590c99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
