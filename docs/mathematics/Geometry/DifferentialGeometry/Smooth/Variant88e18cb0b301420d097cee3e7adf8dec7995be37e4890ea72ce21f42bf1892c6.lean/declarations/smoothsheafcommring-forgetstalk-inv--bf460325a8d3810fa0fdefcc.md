# smoothSheafCommRing.ι_forgetStalk_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32ee1886-94ba-4b87-c9f2-c790f105030f",
  "kind": "lemma",
  "lexical_name": "smoothSheafCommRing.ι_forgetStalk_inv",
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
  "slug": "smoothsheafcommring-forgetstalk-inv--bf460325a8d3810fa0fdefcc",
  "source": {
    "blob": "be64afd7d24be3e00ba3bab182e2d930ac7a18ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 339,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Smooth/Variant88e18cb0b301420d097cee3e7adf8dec7995be37e4890ea72ce21f42bf1892c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf460325a8d3810fa0fdefccbda199d3a47b4a6b60e948ab8b57cd360e27f2cb",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Smooth/Variant88e18cb0b301420d097cee3e7adf8dec7995be37e4890ea72ce21f42bf1892c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32ee1886-94ba-4b87-c9f2-c790f105030f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp, reassoc, elementwise] lemma smoothSheafCommRing.ι_forgetStalk_inv (x : TopCat.of M) (U) :
    colimit.ι ((OpenNhds.inclusion x).op ⋙ (smoothSheaf IM I M R).presheaf) U ≫
    (smoothSheafCommRing.forgetStalk IM I M R x).inv =
    ↾(colimit.ι ((OpenNhds.inclusion x).op ⋙
      (smoothSheafCommRing IM I M R).presheaf) U).hom  := by
  dsimp
  rw [Iso.comp_inv_eq, ← smoothSheafCommRing.ι_forgetStalk_hom]
  rfl

/-- Given a smooth commutative ring `R` and a manifold `M`, and an open neighbourhood `U` of a point
`x : M`, the evaluation-at-`x` map to `R` from smooth functions from  `U` to `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Smooth/Variant88e18cb0b301420d097cee3e7adf8dec7995be37e4890ea72ce21f42bf1892c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Smooth/Variant88e18cb0b301420d097cee3e7adf8dec7995be37e4890ea72ce21f42bf1892c6.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be64afd7d24be3e00ba3bab182e2d930ac7a18ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
