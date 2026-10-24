# ContMDiff.smoothSheafCommRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0a83bda553fb1e5d512f990fcda1d2398a2f90125f39f9ec3028b140a029081",
  "kind": "def",
  "lexical_name": "ContMDiff.smoothSheafCommRingHom",
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
  "slug": "contmdiff-smoothsheafcommringhom--b9c4abddac22969afbd10c40",
  "source": {
    "blob": "f7688d9a32c03ec419d80638acb14ce051589252",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 416,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Smooth/Variant1a57af4f6521dc79422e72a2850e2a4a50d13335e4fbf9e8dcebeac1d23b44ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9c4abddac22969afbd10c402f9fbe334644ecf065ed3b98b73e12b6fc52b0f4",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Smooth/Variant1a57af4f6521dc79422e72a2850e2a4a50d13335e4fbf9e8dcebeac1d23b44ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0a83bda553fb1e5d512f990fcda1d2398a2f90125f39f9ec3028b140a029081`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ContMDiff.smoothSheafCommRingHom (f : M → P) (hf : ContMDiff IM IP ∞ f) :
    smoothSheafCommRing IP I P R ⟶
      (TopCat.Sheaf.pushforward _ (TopCat.ofHom ⟨f, hf.continuous⟩)).obj
        (smoothSheafCommRing IM I M R) where
  hom.app U := CommRingCat.ofHom
    { toFun := (hf.smoothSheafHom _ _ f).hom.app U
      map_one' := rfl
      map_mul' _ _ := rfl
      map_zero' := rfl
      map_add' _ _ := rfl }

end SmoothCommRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Smooth/Variant1a57af4f6521dc79422e72a2850e2a4a50d13335e4fbf9e8dcebeac1d23b44ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Smooth/Variant1a57af4f6521dc79422e72a2850e2a4a50d13335e4fbf9e8dcebeac1d23b44ed.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7688d9a32c03ec419d80638acb14ce051589252` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
