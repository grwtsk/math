# hasZeroObject_of_hasInitial_object

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a508669-ad83-ed1d-4ab2-ba401ba4fb8b",
  "kind": "theorem",
  "lexical_name": "hasZeroObject_of_hasInitial_object",
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
  "slug": "haszeroobject-of-hasinitial-object--271bcb96c195569fe6164151",
  "source": {
    "blob": "c2539fbd7ad61c6ce766a31e2ca6b7fce6aa0bfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 441,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant62f4a840372d8a6085c31f915ed3be8fb125514de4c1972f8d1ae0501df149c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:271bcb96c195569fe6164151c90516fa41f58db602e099987923029d63ba46be",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant62f4a840372d8a6085c31f915ed3be8fb125514de4c1972f8d1ae0501df149c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a508669-ad83-ed1d-4ab2-ba401ba4fb8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasZeroObject_of_hasInitial_object [HasZeroMorphisms C] [HasInitial C] :
    HasZeroObject C := by
  refine ⟨⟨⊥_ C, fun X => ⟨⟨⟨0⟩, by cat_disch⟩⟩, fun X => ⟨⟨⟨0⟩, fun f => ?_⟩⟩⟩⟩
  calc
    f = f ≫ 𝟙 _ := (Category.comp_id _).symm
    _ = f ≫ 0 := by congr!; subsingleton
    _ = 0 := comp_zero

section Image

variable [HasZeroMorphisms C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant62f4a840372d8a6085c31f915ed3be8fb125514de4c1972f8d1ae0501df149c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant62f4a840372d8a6085c31f915ed3be8fb125514de4c1972f8d1ae0501df149c9.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2539fbd7ad61c6ce766a31e2ca6b7fce6aa0bfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
