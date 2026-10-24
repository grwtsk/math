# PreservesBinaryBiproduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0fc6b0871a789ded81c5a7c1bae88942742b70a2b3f5ccca06798908cf2f6d6d",
  "kind": "class",
  "lexical_name": "PreservesBinaryBiproduct",
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
  "slug": "preservesbinarybiproduct--2ef3f0dfb4ad31f8b3c4e72a",
  "source": {
    "blob": "430a9773af597d5257b4ab40f5274adb579c01c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 146,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variante93e16e23bd44810cba135fac12b577036885cdfdcadbd5269ccd6ab4bfa9707.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ef3f0dfb4ad31f8b3c4e72a3519d80614e08979b087770f8d7e9d5177898afa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variante93e16e23bd44810cba135fac12b577036885cdfdcadbd5269ccd6ab4bfa9707.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0fc6b0871a789ded81c5a7c1bae88942742b70a2b3f5ccca06798908cf2f6d6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class PreservesBinaryBiproduct (X Y : C) (F : C ⥤ D) [PreservesZeroMorphisms F] : Prop where
  preserves : ∀ {b : BinaryBicone X Y}, b.IsBilimit → Nonempty ((F.mapBinaryBicone b).IsBilimit)

attribute [inherit_doc PreservesBinaryBiproduct] PreservesBinaryBiproduct.preserves

/-- A functor `F` preserves binary biproducts of `X` and `Y` if `F` maps every bilimit bicone over
    `X` and `Y` to a bilimit bicone over `F.obj X` and `F.obj Y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variante93e16e23bd44810cba135fac12b577036885cdfdcadbd5269ccd6ab4bfa9707.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variante93e16e23bd44810cba135fac12b577036885cdfdcadbd5269ccd6ab4bfa9707.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `430a9773af597d5257b4ab40f5274adb579c01c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
