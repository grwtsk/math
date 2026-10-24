# biproductIsoPi_inv_comp_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2365b58-2fc5-f17c-8cfa-9d4ef4c1db4e",
  "kind": "theorem",
  "lexical_name": "biproductIsoPi_inv_comp_π",
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
  "slug": "biproductisopi-inv-comp--8d5519d519648ca3a243f1e1",
  "source": {
    "blob": "5fbfed547511bc767fc88ae03ed1e743c96cb433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 150,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d5519d519648ca3a243f1e1b2d1f5d40f65f9da0ce818f4ed121f0c753bc102",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2365b58-2fc5-f17c-8cfa-9d4ef4c1db4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem biproductIsoPi_inv_comp_π [Fintype J] (f : J → ModuleCat.{v} R) (j : J) :
    (biproductIsoPi f).inv ≫ biproduct.π f j = (LinearMap.proj j : (∀ j, f j) →ₗ[R] f j) :=
  IsLimit.conePointUniqueUpToIso_inv_comp _ _ (Discrete.mk j)
#align Module.biproduct_iso_pi_inv_comp_π ModuleCat.biproductIsoPi_inv_comp_π

end ModuleCat

section SplitExact

variable {R : Type u} {A M B : Type v} [Ring R] [AddCommGroup A] [Module R A] [AddCommGroup B]
  [Module R B] [AddCommGroup M] [Module R M]

variable {j : A →ₗ[R] M} {g : M →ₗ[R] B}

open ModuleCat

/-- The isomorphism `A × B ≃ₗ[R] M` coming from a right split exact sequence `0 ⟶ A ⟶ M ⟶ B ⟶ 0`
of modules.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fbfed547511bc767fc88ae03ed1e743c96cb433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
