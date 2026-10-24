# mul_associator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df250bd1-8c58-82a7-9ba3-efe57b258a7b",
  "kind": "theorem",
  "lexical_name": "mul_associator",
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
  "slug": "mul-associator--6d7d48a9319f0a58e7b9fa5c",
  "source": {
    "blob": "ba776c5803c63ab7854ac0fd02e62a8d00c3f0f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 453,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d7d48a9319f0a58e7b9fa5c2d1b552ac21e8c8fb22f67d9c32df899cab41ca7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df250bd1-8c58-82a7-9ba3-efe57b258a7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_associator {M N P : Mon_ C} :
    (tensor_μ C (M.X ⊗ N.X, P.X) (M.X ⊗ N.X, P.X) ≫
          (tensor_μ C (M.X, N.X) (M.X, N.X) ≫ (M.mul ⊗ N.mul) ⊗ P.mul)) ≫
        (α_ M.X N.X P.X).hom =
      ((α_ M.X N.X P.X).hom ⊗ (α_ M.X N.X P.X).hom) ≫
        tensor_μ C (M.X, N.X ⊗ P.X) (M.X, N.X ⊗ P.X) ≫
          (M.mul ⊗ tensor_μ C (N.X, P.X) (N.X, P.X) ≫ (N.mul ⊗ P.mul)) := by
  simp
  slice_lhs 2 3 => rw [← Category.id_comp P.mul, tensor_comp]
  slice_lhs 3 4 => rw [associator_naturality]
  slice_rhs 3 4 => rw [← Category.id_comp M.mul, tensor_comp]
  slice_lhs 1 3 => rw [associator_monoidal]
  simp only [Category.assoc]
#align Mon_.mul_associator Mon_.mul_associator

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba776c5803c63ab7854ac0fd02e62a8d00c3f0f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
