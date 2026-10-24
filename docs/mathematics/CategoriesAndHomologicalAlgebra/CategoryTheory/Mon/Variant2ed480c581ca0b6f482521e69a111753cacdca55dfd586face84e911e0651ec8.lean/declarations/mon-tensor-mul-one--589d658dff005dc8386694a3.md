# Mon_tensor_mul_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9536cd69-e04f-cd39-1948-5be11ddaad96",
  "kind": "theorem",
  "lexical_name": "Mon_tensor_mul_one",
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
  "slug": "mon-tensor-mul-one--589d658dff005dc8386694a3",
  "source": {
    "blob": "ba776c5803c63ab7854ac0fd02e62a8d00c3f0f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 426,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:589d658dff005dc8386694a3acdb811ee6428e746fd93c8b5d25de2c1f5d32b8",
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

Occurrence: `result:9536cd69-e04f-cd39-1948-5be11ddaad96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Mon_tensor_mul_one (M N : Mon_ C) :
    (𝟙 (M.X ⊗ N.X) ⊗ (λ_ (𝟙_ C)).inv ≫ (M.one ⊗ N.one)) ≫
        tensor_μ C (M.X, N.X) (M.X, N.X) ≫ (M.mul ⊗ N.mul) =
      (ρ_ (M.X ⊗ N.X)).hom := by
  rw [← Category.id_comp (𝟙 (M.X ⊗ N.X)), tensor_comp]
  slice_lhs 2 3 => rw [← tensor_id, tensor_μ_natural]
  slice_lhs 3 4 => rw [← tensor_comp, mul_one M, mul_one N]
  symm
  exact tensor_right_unitality C M.X N.X
#align Mon_.Mon_tensor_mul_one Mon_.Mon_tensor_mul_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba776c5803c63ab7854ac0fd02e62a8d00c3f0f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
