# isLocalization_basicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "941355433d09b45c53809ac658b279827279d001",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 502,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afa82512-a85f-6612-84e0-d826007f3677",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f7481cc-7cd1-1635-21d8-4935050f7aed",
  "kind": "theorem",
  "lexical_name": "isLocalization_basicOpen",
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
  "slug": "islocalization-basicopen--052d6b18fe6948d069ee35fc",
  "source": {
    "blob": "941355433d09b45c53809ac658b279827279d001",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 502,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variant8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:052d6b18fe6948d069ee35fc387c6490a349cbd511eec19dbb93458a65b7983f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineScheme/Variant8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f7481cc-7cd1-1635-21d8-4935050f7aed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocalization_basicOpen {X : Scheme} {U : Opens X} (hU : IsAffineOpen U)
    (f : X.presheaf.obj (op U)) : IsLocalization.Away f (X.presheaf.obj (op <| X.basicOpen f)) := by
  apply
    (IsLocalization.isLocalization_iff_of_ringEquiv (Submonoid.powers f)
        (asIso <|
            basicOpenSectionsToAffine hU f ≫
              (Scheme.Spec.obj _).presheaf.map
                (eqToHom (basicOpen_eq_of_affine _).symm).op).commRingCatIsoToRingEquiv).mpr
  convert StructureSheaf.IsLocalization.to_basicOpen _ f using 1
  -- Porting note : more hand holding is required here, the next 4 lines were not necessary
  delta StructureSheaf.openAlgebra
  congr 1
  rw [CommRingCat.ringHom_comp_eq_comp, Iso.commRingIsoToRingEquiv_toRingHom, asIso_hom]
  dsimp [CommRingCat.ofHom]
  change X.presheaf.map _ ≫ basicOpenSectionsToAffine hU f ≫ _ = _
  delta basicOpenSectionsToAffine
  simp only [Scheme.comp_val_c_app, Category.assoc]
  -- Porting note : `erw naturality_assoc` for some reason does not work, so changed to a version
  -- where `naturality` is used, the good thing is that `erw` is changed back to `rw`
  simp only [←Category.assoc]
  rw [hU.fromSpec.val.c.naturality, hU.fromSpec_app_eq]
  -- simp only [Category.assoc]
  -- rw [hU.fromSpec_app_eq]
  dsimp
  simp only [Category.assoc, ← Functor.map_comp, ← op_comp]
  apply StructureSheaf.toOpen_res
#align algebraic_geometry.is_localization_basic_open AlgebraicGeometry.isLocalization_basicOpen

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineScheme/Variant8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variant8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `941355433d09b45c53809ac658b279827279d001` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
