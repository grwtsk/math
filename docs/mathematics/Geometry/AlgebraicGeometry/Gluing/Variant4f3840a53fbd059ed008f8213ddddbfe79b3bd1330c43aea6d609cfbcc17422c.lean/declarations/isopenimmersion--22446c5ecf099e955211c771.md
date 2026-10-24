# ι_isOpenImmersion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57a793251702725ad75c4093695df13e4049c361c7d08cbfcfa99946491e5d00",
  "kind": "instance",
  "lexical_name": "ι_isOpenImmersion",
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
  "slug": "isopenimmersion--22446c5ecf099e955211c771",
  "source": {
    "blob": "a985a4acd24189fa486ee61ddfb20ac6433bb3b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 697,
    "line": 691,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22446c5ecf099e955211c7713a3141725db00030b916711729fc0a8532c69b41",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57a793251702725ad75c4093695df13e4049c361c7d08cbfcfa99946491e5d00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 691–697.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ι_isOpenImmersion (i : D.J) : IsOpenImmersion (𝖣.ι i) := by
  delta IsOpenImmersion; rw [← D.ι_isoSheafedSpace_inv]
  apply (config := { allowSynthFailures := true }) PresheafedSpace.IsOpenImmersion.comp
  -- Porting note : this was automatic
  exact (D.toSheafedSpaceGlueData).ιIsOpenImmersion i
#align algebraic_geometry.LocallyRingedSpace.glue_data.ι_IsOpenImmersion AlgebraicGeometry.LocallyRingedSpace.GlueData.ι_isOpenImmersion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean#L691).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a985a4acd24189fa486ee61ddfb20ac6433bb3b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
