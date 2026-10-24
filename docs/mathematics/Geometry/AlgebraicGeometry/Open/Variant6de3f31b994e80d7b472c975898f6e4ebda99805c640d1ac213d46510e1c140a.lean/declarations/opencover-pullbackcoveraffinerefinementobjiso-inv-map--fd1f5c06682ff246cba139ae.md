# OpenCover.pullbackCoverAffineRefinementObjIso_inv_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:060b106b-4d34-4311-41e8-4f58da2d8b32",
  "kind": "lemma",
  "lexical_name": "OpenCover.pullbackCoverAffineRefinementObjIso_inv_map",
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
  "slug": "opencover-pullbackcoveraffinerefinementobjiso-inv-map--fd1f5c06682ff246cba139ae",
  "source": {
    "blob": "2f533bc3aff5d348041a94ac741124d29495e4a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 183,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Open/Variant6de3f31b994e80d7b472c975898f6e4ebda99805c640d1ac213d46510e1c140a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd1f5c06682ff246cba139ae640be1831f68e1761311f396966d9cf6c443b1d0",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Open/Variant6de3f31b994e80d7b472c975898f6e4ebda99805c640d1ac213d46510e1c140a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:060b106b-4d34-4311-41e8-4f58da2d8b32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma OpenCover.pullbackCoverAffineRefinementObjIso_inv_map (f : X ⟶ Y) (𝒰 : Y.OpenCover) (i) :
    (𝒰.pullbackCoverAffineRefinementObjIso f i).inv ≫
      (𝒰.affineRefinement.openCover.pullback₁ f).f i =
      ((𝒰.X i.1).affineCover.pullback₁ (𝒰.pullbackHom f i.1)).f i.2 ≫
        (𝒰.pullback₁ f).f i.1 := by
  simp only [Precoverage.ZeroHypercover.pullback₁_toPreZeroHypercover,
    PreZeroHypercover.pullback₁_X, AffineOpenCover.openCover_X, AffineOpenCover.openCover_f,
    pullbackCoverAffineRefinementObjIso, Iso.trans_inv, asIso_inv, Iso.symm_inv, Category.assoc,
    PreZeroHypercover.pullback₁_f, pullbackSymmetry_inv_comp_fst, IsIso.inv_comp_eq,
    limit.lift_π_assoc, PullbackCone.mk_pt, cospan_left, PullbackCone.mk_π_app,
    pullbackSymmetry_hom_comp_fst]
  convert!
    pullbackSymmetry_inv_comp_snd_assoc ((𝒰.X i.1).affineCover.f i.2) (pullback.fst _ _) _ using 2
  exact pullbackRightPullbackFstIso_hom_snd _ _ _

set_option backward.isDefEq.respectTransparency false in
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Open/Variant6de3f31b994e80d7b472c975898f6e4ebda99805c640d1ac213d46510e1c140a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Open/Variant6de3f31b994e80d7b472c975898f6e4ebda99805c640d1ac213d46510e1c140a.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f533bc3aff5d348041a94ac741124d29495e4a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
