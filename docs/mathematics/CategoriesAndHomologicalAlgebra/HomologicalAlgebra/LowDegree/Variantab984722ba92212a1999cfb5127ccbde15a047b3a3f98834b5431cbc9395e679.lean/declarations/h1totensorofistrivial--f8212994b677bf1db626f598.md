# H1ToTensorOfIsTrivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c480a5d6e92dd65ac7f1f3ff897aa7b9f2263c898b97b05b7beb960e13427a00",
  "kind": "def",
  "lexical_name": "H1ToTensorOfIsTrivial",
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
  "slug": "h1totensorofistrivial--f8212994b677bf1db626f598",
  "source": {
    "blob": "6c7ff337eb8bd6257d3aada1ec1b9cccacbed085",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1009,
    "line": 998,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variantab984722ba92212a1999cfb5127ccbde15a047b3a3f98834b5431cbc9395e679.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8212994b677bf1db626f5986ff9db6a6f72a5e113418d577393c7d95614f219",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variantab984722ba92212a1999cfb5127ccbde15a047b3a3f98834b5431cbc9395e679.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c480a5d6e92dd65ac7f1f3ff897aa7b9f2263c898b97b05b7beb960e13427a00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 998–1009.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def H1ToTensorOfIsTrivial : H1 A →ₗ[ℤ] (Additive <| Abelianization G) ⊗[ℤ] A :=
  ((QuotientAddGroup.lift _ ((Finsupp.liftAddHom fun g => AddMonoidHomClass.toAddMonoidHom
    (TensorProduct.mk ℤ _ _ (Additive.ofMul (Abelianization.of g)))).comp
      (cycles₁ A).toAddSubgroup.subtype) fun ⟨y, hy⟩ ⟨z, hz⟩ => AddMonoidHom.mem_ker.2 <| by
      simp [← hz, d₂₁, sum_sum_index, sum_add_index', tmul_add, sum_sub_index, tmul_sub,
        shortComplexH1, isTrivial_apply]).comp <|
          AddMonoidHomClass.toAddMonoidHom (H1Iso A).hom.hom).toIntLinearMap

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
variable {A} in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variantab984722ba92212a1999cfb5127ccbde15a047b3a3f98834b5431cbc9395e679.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variantab984722ba92212a1999cfb5127ccbde15a047b3a3f98834b5431cbc9395e679.lean#L998).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c7ff337eb8bd6257d3aada1ec1b9cccacbed085` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
