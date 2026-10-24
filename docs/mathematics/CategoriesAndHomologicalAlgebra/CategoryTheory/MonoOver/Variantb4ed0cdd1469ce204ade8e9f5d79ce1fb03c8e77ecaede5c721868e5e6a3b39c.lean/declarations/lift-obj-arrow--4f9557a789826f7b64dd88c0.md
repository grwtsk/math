# lift_obj_arrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:acd75110-a349-5155-01d4-8e90e60b348d",
  "kind": "theorem",
  "lexical_name": "lift_obj_arrow",
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
  "slug": "lift-obj-arrow--4f9557a789826f7b64dd88c0",
  "source": {
    "blob": "5b0c9b0e2ca6b55bbbb88761755b8b2286c89f75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 188,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f9557a789826f7b64dd88c07af25794bbb6c1276bee86ce538939f1dbf2dcdc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acd75110-a349-5155-01d4-8e90e60b348d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_obj_arrow {Y : D} (F : Over Y ⥤ Over X)
    (h : ∀ f : MonoOver Y, Mono (F.obj ((MonoOver.forget Y).obj f)).hom) (f : MonoOver Y) :
    ((lift F h).obj f).arrow = (F.obj ((forget Y).obj f)).hom :=
  rfl

/-- Monomorphisms over an object `f : Over A` in an over category
are equivalent to monomorphisms over the source of `f`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b0c9b0e2ca6b55bbbb88761755b8b2286c89f75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
