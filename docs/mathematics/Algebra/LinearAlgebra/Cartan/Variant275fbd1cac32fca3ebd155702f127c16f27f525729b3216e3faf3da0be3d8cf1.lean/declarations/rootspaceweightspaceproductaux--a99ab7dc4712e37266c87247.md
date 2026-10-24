# rootSpaceWeightSpaceProductAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e73b2a3b43d275c6acfeccc204b386005e9ae026a7cb15fb8d874a58e68fe38f",
  "kind": "def",
  "lexical_name": "rootSpaceWeightSpaceProductAux",
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
  "slug": "rootspaceweightspaceproductaux--a99ab7dc4712e37266c87247",
  "source": {
    "blob": "7940f3124b5bfdedaee336a9b50c1fef8819505f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 85,
    "path": "GRWTSK/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a99ab7dc4712e37266c872474de3abc6a1b95fe74148cf9b8fa22a2280c71385",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e73b2a3b43d275c6acfeccc204b386005e9ae026a7cb15fb8d874a58e68fe38f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rootSpaceWeightSpaceProductAux {χ₁ χ₂ χ₃ : H → R} (hχ : χ₁ + χ₂ = χ₃) :
    rootSpace H χ₁ →ₗ[R] genWeightSpace M χ₂ →ₗ[R] genWeightSpace M χ₃ where
  toFun x :=
    { toFun := fun m =>
        ⟨⁅(x : L), (m : M)⁆,
          hχ ▸ lie_mem_genWeightSpace_of_mem_genWeightSpace x.property m.property⟩
      map_add' := fun m n => by simp only [LieSubmodule.coe_add, lie_add, AddMemClass.mk_add_mk]
      map_smul' := fun t m => by
        conv_lhs =>
          congr
          rw [LieSubmodule.coe_smul, lie_smul]
        rfl }
  map_add' x y := by
    ext m
    simp only [LieSubmodule.coe_add, add_lie, LinearMap.coe_mk, AddHom.coe_mk, LinearMap.add_apply,
      AddMemClass.mk_add_mk]
  map_smul' t x := by
    simp only [RingHom.id_apply]
    ext m
    simp only [SetLike.val_smul, smul_lie, LinearMap.coe_mk, AddHom.coe_mk, LinearMap.smul_apply,
      SetLike.mk_smul_mk]

/-- Given a nilpotent Lie subalgebra `H ⊆ L` together with `χ₁ χ₂ : H → R`, there is a natural
`R`-bilinear product of root vectors and weight vectors, compatible with the actions of `H`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7940f3124b5bfdedaee336a9b50c1fef8819505f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
