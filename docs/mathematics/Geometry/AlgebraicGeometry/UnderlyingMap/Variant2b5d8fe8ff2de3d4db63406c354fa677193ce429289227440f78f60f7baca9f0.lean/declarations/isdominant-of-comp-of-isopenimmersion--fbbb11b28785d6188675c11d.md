# IsDominant.of_comp_of_isOpenImmersion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22779e0b-826d-ebf9-74f3-46db0eb0a0f1",
  "kind": "lemma",
  "lexical_name": "IsDominant.of_comp_of_isOpenImmersion",
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
  "slug": "isdominant-of-comp-of-isopenimmersion--fbbb11b28785d6188675c11d",
  "source": {
    "blob": "f2ca5cdadd17ccab3fd026f5b1c0982f01b15d5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 265,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/UnderlyingMap/Variant2b5d8fe8ff2de3d4db63406c354fa677193ce429289227440f78f60f7baca9f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbbb11b28785d6188675c11d64b27645c7785ef08120112e2ab5c5ddbd9fc261",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/UnderlyingMap/Variant2b5d8fe8ff2de3d4db63406c354fa677193ce429289227440f78f60f7baca9f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22779e0b-826d-ebf9-74f3-46db0eb0a0f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsDominant.of_comp_of_isOpenImmersion
    (f : X ⟶ Y) (g : Y ⟶ Z) [H : IsDominant (f ≫ g)] [IsOpenImmersion g] :
    IsDominant f := by
  rw [isDominant_iff, DenseRange] at H ⊢
  simp only [Scheme.Hom.comp_base, TopCat.coe_comp, Set.range_comp] at H
  convert H.preimage g.isOpenEmbedding.isOpenMap
  rw [Set.preimage_image_eq _ g.isOpenEmbedding.injective]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/UnderlyingMap/Variant2b5d8fe8ff2de3d4db63406c354fa677193ce429289227440f78f60f7baca9f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/UnderlyingMap/Variant2b5d8fe8ff2de3d4db63406c354fa677193ce429289227440f78f60f7baca9f0.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2ca5cdadd17ccab3fd026f5b1c0982f01b15d5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
