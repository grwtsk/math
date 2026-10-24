# SpecIso_hom_appTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:124972c3-a1c7-5836-102b-8eeb47e16be3",
  "kind": "lemma",
  "lexical_name": "SpecIso_hom_appTop",
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
  "slug": "speciso-hom-apptop--567cdf6cd2641a14dddc91f8",
  "source": {
    "blob": "f6ef5202481ccce3fcc32a26d9f464b4c6dde646",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 254,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:567cdf6cd2641a14dddc91f8cf3c21caef6406c1f6419dc2db6e4e664fffe775",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:124972c3-a1c7-5836-102b-8eeb47e16be3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma SpecIso_hom_appTop (R : CommRingCat.{max u v}) :
    (SpecIso n R).hom.appTop = (Scheme.ΓSpecIso _).hom ≫
      CommRingCat.ofHom (eval₂Hom ((Scheme.ΓSpecIso _).inv ≫
        (𝔸(n; Spec R) ↘ Spec R).appTop).hom (coord (Spec R))) := by
  simp only [SpecIso, Iso.trans_hom, Functor.mapIso_hom, Iso.op_hom,
    RingEquiv.toRingHom_eq_coe, Scheme.Spec_map, Quiver.Hom.unop_op, Scheme.comp_coeBase,
    TopologicalSpace.Opens.map_comp_obj, TopologicalSpace.Opens.map_top, Scheme.comp_app,
    isoOfIsAffine_hom_appTop, Scheme.ΓSpecIso_naturality_assoc]
  congr 1
  ext : 1
  apply ringHom_ext'
  · ext; simp
  · simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6ef5202481ccce3fcc32a26d9f464b4c6dde646` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
