# ι_isoCarrier_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ab7f774-66f0-3089-3253-b88a43258ee7",
  "kind": "theorem",
  "lexical_name": "ι_isoCarrier_inv",
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
  "slug": "isocarrier-inv--9a1228a281bfb4959024e3aa",
  "source": {
    "blob": "30158fa53d40ec14bdd9eea6368777899c2d5605",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 215,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant02c339df70a8cd6435ab33542e2ee70ee5c99aad5cd2f4594a06c07ea9eaa521.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a1228a281bfb4959024e3aa40d583b4db92637c6f330996c10b7231a12ab0f3",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Gluing/Variant02c339df70a8cd6435ab33542e2ee70ee5c99aad5cd2f4594a06c07ea9eaa521.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ab7f774-66f0-3089-3253-b88a43258ee7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ι_isoCarrier_inv (i : D.J) :
    (D_).ι i ≫ D.isoCarrier.inv = (D.ι i).base := by
  delta isoCarrier
  rw [Iso.trans_inv, GlueData.ι_gluedIso_inv_assoc, Functor.mapIso_inv, Iso.trans_inv,
    Functor.mapIso_inv, Iso.trans_inv, SheafedSpace.forgetToPresheafedSpace_map, forget_map,
    forget_map, ← PresheafedSpace.comp_base, ← Category.assoc,
    D.toLocallyRingedSpaceGlueData.toSheafedSpaceGlueData.ι_isoPresheafedSpace_inv i]
  erw [← Category.assoc, D.toLocallyRingedSpaceGlueData.ι_isoSheafedSpace_inv i]
  change (_ ≫ D.isoLocallyRingedSpace.inv).base = _
  rw [D.ι_isoLocallyRingedSpace_inv i]

/-- An equivalence relation on `Σ i, D.U i` that holds iff `𝖣.ι i x = 𝖣.ι j y`.
See `AlgebraicGeometry.Scheme.GlueData.ι_eq_iff`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Gluing/Variant02c339df70a8cd6435ab33542e2ee70ee5c99aad5cd2f4594a06c07ea9eaa521.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant02c339df70a8cd6435ab33542e2ee70ee5c99aad5cd2f4594a06c07ea9eaa521.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30158fa53d40ec14bdd9eea6368777899c2d5605` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
