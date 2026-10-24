# functor_isTriangulated_op

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:873aabc2758a97c816b848d500b2d2e320bf003169a063942cb751ae5dfd29a7",
  "kind": "instance",
  "lexical_name": "functor_isTriangulated_op",
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
  "slug": "functor-istriangulated-op--d3cc24c620f5448b96c43e58",
  "source": {
    "blob": "83454ecd64c197f147f1760a7d3f5cd2d23afb4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 227,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3cc24c620f5448b96c43e585fec5bc2fcfdc4bc811dff70cd10a7b00e8e8ce1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:873aabc2758a97c816b848d500b2d2e320bf003169a063942cb751ae5dfd29a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
scoped instance functor_isTriangulated_op [F.IsTriangulated] : F.op.IsTriangulated where
  map_distinguished T dT := by
    rw [mem_distTriang_op_iff]
    exact Pretriangulated.isomorphic_distinguished _
      ((F.map_distinguished _ (unop_distinguished _ dT))) _
      (((opMapTriangleCompTriangleOpEquivalenceInverse F).symm.app T).unop)

end Pretriangulated.Opposite

namespace Functor

/-- If `F.op` is triangulated, so is `F`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83454ecd64c197f147f1760a7d3f5cd2d23afb4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
