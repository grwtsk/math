# fromOfGlobalSections_toSpecZero

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
      "line": 514,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba5dde77-3831-df61-4b8f-be76700bb200",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7753e419-edfa-8140-076a-f05dc96a55e0",
  "kind": "lemma",
  "lexical_name": "fromOfGlobalSections_toSpecZero",
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
  "slug": "fromofglobalsections-tospeczero--9bbbc1805d8199aa3c447589",
  "source": {
    "blob": "080e13f6216621fcf7dadf6c41c4a97d56e1b78d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 533,
    "line": 514,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bbbc1805d8199aa3c447589d0cc5d81cc8f54854fadb8bb46bbd0a67d550197",
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

Occurrence: `result:7753e419-edfa-8140-076a-f05dc96a55e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fromOfGlobalSections_toSpecZero
    (f : A →+* Γ(X, ⊤)) (hf : (HomogeneousIdeal.irrelevant 𝒜).toIdeal.map f = ⊤) :
    fromOfGlobalSections 𝒜 f hf ≫ toSpecZero 𝒜 =
      X.toSpecΓ ≫ Spec.map (CommRingCat.ofHom (f.comp (algebraMap _ _))) := by
  refine (openCoverOfMapIrrelevantEqTop 𝒜 f hf).hom_ext _ _ fun x ↦ ?_
  simp only [fromOfGlobalSections, toBasicOpenOfGlobalSections, CommRingCat.ofHom_comp,
    Category.assoc, Scheme.Cover.ι_glueMorphisms_assoc, basicOpenIsoSpec_inv_ι_assoc,
    awayι_toSpecZero, Iso.inv_comp_eq]
  simp only [openCoverOfMapIrrelevantEqTop,
    Scheme.openCoverOfIsOpenCover_f, Scheme.isoOfEq_hom_ι_assoc, ← morphismRestrict_ι_assoc]
  congr 1
  simp only [basicOpenIsoSpecAway, ← CommRingCat.ofHom_comp, ← Spec.map_comp, ← Iso.eq_inv_comp,
    IsOpenImmersion.isoOfRangeEq_inv_fac_assoc, ← HomogeneousLocalization.algebraMap_eq]
  congr 2
  rw [RingHom.comp_assoc, ← IsScalarTower.algebraMap_eq, IsScalarTower.algebraMap_eq _ A,
    ← RingHom.comp_assoc, IsLocalization.map_comp, RingHom.comp_assoc]

end ofGlobalSection

end AlgebraicGeometry.Proj
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `080e13f6216621fcf7dadf6c41c4a97d56e1b78d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
