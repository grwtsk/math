# smoothSheafCommRing.forgetStalk_inv_comp_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57714cd1-40bd-371a-a6ef-e1f927bd5c76",
  "kind": "lemma",
  "lexical_name": "smoothSheafCommRing.forgetStalk_inv_comp_eval",
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
  "slug": "smoothsheafcommring-forgetstalk-inv-comp-eval--87df12ce1618b6ce3219904a",
  "source": {
    "blob": "476f47d527c0d340cae23555ab99e7d80b527abe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 355,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87df12ce1618b6ce3219904a6821bc6018b6b8400e77cffc92b65508832ad2d3",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57714cd1-40bd-371a-a6ef-e1f927bd5c76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp, reassoc, elementwise] lemma smoothSheafCommRing.forgetStalk_inv_comp_eval
    (x : TopCat.of M) :
    (smoothSheafCommRing.forgetStalk IM I M R x).inv ≫
     (DFunLike.coe (smoothSheafCommRing.evalHom IM I M R x).hom) =
    smoothSheaf.evalHom _ _ _ _ := by
  apply Limits.colimit.hom_ext
  intro U
  show (colimit.ι _ U) ≫ _ = colimit.ι ((OpenNhds.inclusion x).op ⋙ _) U ≫ _
  rw [smoothSheafCommRing.ι_forgetStalk_inv_assoc, smoothSheaf.ι_evalHom]
  ext x
  exact CategoryTheory.congr_fun (smoothSheafCommRing.ι_evalHom ..) x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `476f47d527c0d340cae23555ab99e7d80b527abe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
