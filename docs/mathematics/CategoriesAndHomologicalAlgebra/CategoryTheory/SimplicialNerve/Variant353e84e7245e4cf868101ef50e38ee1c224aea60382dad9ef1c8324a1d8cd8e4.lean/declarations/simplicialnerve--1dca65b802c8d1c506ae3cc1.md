# SimplicialNerve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0efcce0fe077b9d57772a903e8d9d69cf7a97c914b3ea75d1308b6e1219bbe36",
  "kind": "def",
  "lexical_name": "SimplicialNerve",
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
  "slug": "simplicialnerve--1dca65b802c8d1c506ae3cc1",
  "source": {
    "blob": "113646285816349df055a4e7b9c38757c3381445",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 212,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1dca65b802c8d1c506ae3cc1362cdabd7bb6ce4bb065d85364c660f765b40c95",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0efcce0fe077b9d57772a903e8d9d69cf7a97c914b3ea75d1308b6e1219bbe36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def SimplicialNerve (C : Type u) [Category.{v} C] [SimplicialCategory C] :
    SSet.{max u v} where
  obj n := EnrichedFunctor SSet (SimplicialThickening (ULift (Fin (n.unop.len + 1)))) C
  map f := (SimplicialThickening.functor f.unop.toOrderHom.uliftMap).comp (E := C) SSet
  map_id i := by
    change EnrichedFunctor.comp SSet (SimplicialThickening.functor (OrderHom.id)) = _
    rw [SimplicialThickening.functor_id]
    rfl
  map_comp f g := by
    change EnrichedFunctor.comp SSet (SimplicialThickening.functor
      (f.unop.toOrderHom.uliftMap.comp g.unop.toOrderHom.uliftMap)) = _
    rw [SimplicialThickening.functor_comp]
    rfl

end SimplicialNerve

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `113646285816349df055a4e7b9c38757c3381445` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
