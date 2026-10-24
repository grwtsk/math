# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75248cd8df6a65c9497f92e1b0973f72810c08cfb0ceee5c75fd6471539b0be1",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--dd38f3b2b69ccf13086d4f5a",
  "source": {
    "blob": "b3f9147a48c5467773f9e4a07c43b18cf1d634f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 44,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant8a1e8e039d578908d5e3d8c0d9c0ac10c095e721fb285805c30fe4e04f927fc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd38f3b2b69ccf13086d4f5aafdf4e84ddb9e011ee169a0f6b7132226a1b7a42",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant8a1e8e039d578908d5e3d8c0d9c0ac10c095e721fb285805c30fe4e04f927fc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75248cd8df6a65c9497f92e1b0973f72810c08cfb0ceee5c75fd6471539b0be1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
scoped instance [IsTriangulated C] : IsTriangulated Cᵒᵖ where
  octahedron_axiom := by
    intro X₁ X₂ X₃ Z₁₂ Z₂₃ Z₁₃ u₁₂ u₂₃ u₁₃ comm v₁₂ w₁₂ h₁₂ v₂₃ w₂₃ h₂₃ v₁₃ w₁₃ h₁₃
    let o := Triangulated.someOctahedron' (by aesop) ((mem_distTriang_op_iff _).mp h₂₃)
      ((mem_distTriang_op_iff _).mp h₁₂) ((mem_distTriang_op_iff _).mp h₁₃)
    refine ⟨o.m₃.op, o.m₁.op, congr($(o.comm₄).op), ?_, congr($(o.comm₁).op), ?_, ?_⟩
    · have eq₃ := congr($(o.comm₃).op)
      dsimp at eq₃
      rw [← Category.assoc, ← op_comp, ← Functor.map_comp,
        NatIso.cancel_natIso_inv_right (opShiftFunctorEquivalence C _).unitIso] at eq₃
      exact congr($(Functor.map_injective _ congr($(eq₃).unop)).op)
    · have eq₂ := congr($(o.comm₂).op)
      dsimp at eq₂
      rw [← Category.assoc, ← op_comp, ← Functor.map_comp, Category.assoc,
        ← opShiftFunctorEquivalence_unitIso_inv_naturality, ← Category.assoc,
        NatIso.cancel_natIso_inv_right (opShiftFunctorEquivalence C _).unitIso, ← op_comp,
        ← Functor.map_comp] at eq₂
      exact congr($(Functor.map_injective _ congr($(eq₂).unop)).op).symm
    · have := op_distinguished _ o.mem
      dsimp at this
      convert! this using 2
      rw [Category.assoc, Functor.map_comp, Functor.map_comp,
        ← opShiftFunctorEquivalence_counitIso_hom_app_shift,
        ← opShiftFunctorEquivalence_counitIso_inv_naturality_assoc, Iso.inv_hom_id_app_assoc]

end Opposite

end Pretriangulated

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant8a1e8e039d578908d5e3d8c0d9c0ac10c095e721fb285805c30fe4e04f927fc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant8a1e8e039d578908d5e3d8c0d9c0ac10c095e721fb285805c30fe4e04f927fc5.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3f9147a48c5467773f9e4a07c43b18cf1d634f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
