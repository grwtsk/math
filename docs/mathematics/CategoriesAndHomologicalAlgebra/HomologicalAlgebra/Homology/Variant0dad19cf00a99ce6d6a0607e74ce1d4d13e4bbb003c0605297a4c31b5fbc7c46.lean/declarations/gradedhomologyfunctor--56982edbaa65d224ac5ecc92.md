# gradedHomologyFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91281dd700e5f5934e5e871d46a5e0a8cd80c9fea99f45c197181a774dce8196",
  "kind": "def",
  "lexical_name": "gradedHomologyFunctor",
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
  "slug": "gradedhomologyfunctor--56982edbaa65d224ac5ecc92",
  "source": {
    "blob": "49b89d1159d2b34f0f051d28abfb6a9e0024c5a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 318,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56982edbaa65d224ac5ecc9232eba062ce1ea917a15bb477b0fcd2fcba3de2c6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91281dd700e5f5934e5e871d46a5e0a8cd80c9fea99f45c197181a774dce8196`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def gradedHomologyFunctor [HasCokernels V] : HomologicalComplex V c ⥤ GradedObject ι V where
  obj C i := C.homology i
  map {C C'} f i := (homologyFunctor V c i).map f
  map_id _ := by
    ext
    simp only [GradedObject.categoryOfGradedObjects_id]
    ext
    simp only [homology.π_map, homologyFunctor_map, kernelSubobjectMap_id, Hom.sqFrom_id,
      Category.id_comp, Category.comp_id]
  map_comp _ _ := by
    ext
    simp only [GradedObject.categoryOfGradedObjects_comp]
    ext
    simp only [Hom.sqFrom_comp, kernelSubobjectMap_comp, homology.π_map_assoc, homology.π_map,
      homologyFunctor_map, Category.assoc]
#align graded_homology_functor gradedHomologyFunctor

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49b89d1159d2b34f0f051d28abfb6a9e0024c5a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
