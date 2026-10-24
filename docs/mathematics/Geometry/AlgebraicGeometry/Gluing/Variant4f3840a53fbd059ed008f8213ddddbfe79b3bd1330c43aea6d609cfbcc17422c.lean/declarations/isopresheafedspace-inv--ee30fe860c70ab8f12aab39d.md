# ι_isoPresheafedSpace_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a985a4acd24189fa486ee61ddfb20ac6433bb3b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 609,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:02df5c5d-c6f9-268a-46f8-d537903549a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f74600db-5f01-bdd5-c301-fa4c127b4d3f",
  "kind": "theorem",
  "lexical_name": "ι_isoPresheafedSpace_inv",
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
  "slug": "isopresheafedspace-inv--ee30fe860c70ab8f12aab39d",
  "source": {
    "blob": "a985a4acd24189fa486ee61ddfb20ac6433bb3b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 609,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee30fe860c70ab8f12aab39d250ee7a720b300bbe663b7eb0b2be468acf24217",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f74600db-5f01-bdd5-c301-fa4c127b4d3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 609–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ι_isoPresheafedSpace_inv (i : D.J) :
    D.toPresheafedSpaceGlueData.toGlueData.ι i ≫ D.isoPresheafedSpace.inv = 𝖣.ι i :=
  𝖣.ι_gluedIso_inv _ _
#align algebraic_geometry.SheafedSpace.glue_data.ι_iso_PresheafedSpace_inv AlgebraicGeometry.SheafedSpaceₓ.GlueData.ι_isoPresheafedSpace_inv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean#L609).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a985a4acd24189fa486ee61ddfb20ac6433bb3b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
