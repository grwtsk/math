# main_pair_coreflexive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4db7fa938c4a192a1dc64a4604005a1d9d54271019c133197cb68b1ef87d6a9",
  "kind": "instance",
  "lexical_name": "main_pair_coreflexive",
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
  "slug": "main-pair-coreflexive--86195146bece9bbeb8001189",
  "source": {
    "blob": "4ae38ebe86ae9635b1ad7f1108128b3d40ed2ba5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 61,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86195146bece9bbeb8001189cfb0c67ee33fd3b2af2598182135f696465cd37d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4db7fa938c4a192a1dc64a4604005a1d9d54271019c133197cb68b1ef87d6a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance main_pair_coreflexive (A : adj.toComonad.Coalgebra) :
    IsCoreflexivePair (G.map A.a) (adj.unit.app (G.obj A.A)) := by
  apply IsCoreflexivePair.mk' (G.map (adj.counit.app _)) _ _
  · rw [← G.map_comp, ← G.map_id]
    exact congr_arg G.map A.counit
  · rw [adj.right_triangle_components]
    rfl

/-- The "main pair" for a coalgebra `(A, α)` is the pair of morphisms `(G α, η_GA)`. It is always a
`G`-cosplit pair, and will be used to construct the right adjoint to the comparison functor and show
it is an equivalence.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ae38ebe86ae9635b1ad7f1108128b3d40ed2ba5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
