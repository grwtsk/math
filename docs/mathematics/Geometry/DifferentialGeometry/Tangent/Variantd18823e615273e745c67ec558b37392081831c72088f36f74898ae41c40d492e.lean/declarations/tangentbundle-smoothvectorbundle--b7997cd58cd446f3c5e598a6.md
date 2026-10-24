# TangentBundle.smoothVectorBundle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9dfe4fb4aed13702947d4a9575780689220d66dde0ea8ecccd6161bdd2f03885",
  "kind": "instance",
  "lexical_name": "TangentBundle.smoothVectorBundle",
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
  "slug": "tangentbundle-smoothvectorbundle--b7997cd58cd446f3c5e598a6",
  "source": {
    "blob": "5d06efd071cf7ec8889d7ad4244e87e21b413d48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 324,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7997cd58cd446f3c5e598a66a2c1e3985cba8b340c499beb6ea6343bc83a114",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9dfe4fb4aed13702947d4a9575780689220d66dde0ea8ecccd6161bdd2f03885`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance TangentBundle.smoothVectorBundle : SmoothVectorBundle E (TangentSpace I : M → Type _) I :=
  (tangentBundleCore I M).smoothVectorBundle _
#align tangent_bundle.smooth_vector_bundle TangentBundle.smoothVectorBundle

end TangentBundleInstances

/-! ## The tangent bundle to the model space -/


/-- In the tangent bundle to the model space, the charts are just the canonical identification
between a product type and a sigma type, a.k.a. `TotalSpace.toProd`. -/
@[simp, mfld_simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d06efd071cf7ec8889d7ad4244e87e21b413d48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
