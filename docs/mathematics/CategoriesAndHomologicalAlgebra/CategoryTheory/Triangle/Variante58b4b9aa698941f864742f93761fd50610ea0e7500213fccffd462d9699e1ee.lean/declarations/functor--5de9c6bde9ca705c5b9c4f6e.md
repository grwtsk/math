# functor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bfd029b955a9f10b5043b5eaa32bd38c5384e2883f0a2e178179df2595e1ffd5",
  "kind": "def",
  "lexical_name": "functor",
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
  "slug": "functor--5de9c6bde9ca705c5b9c4f6e",
  "source": {
    "blob": "66d781bc7577a28fdf0aeda61a5d9ced14938ca0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 45,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangle/Variante58b4b9aa698941f864742f93761fd50610ea0e7500213fccffd462d9699e1ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5de9c6bde9ca705c5b9c4f6e85114dfae3d704f7d670b9c8883028449fd2ca41",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangle/Variante58b4b9aa698941f864742f93761fd50610ea0e7500213fccffd462d9699e1ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bfd029b955a9f10b5043b5eaa32bd38c5384e2883f0a2e178179df2595e1ffd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def functor : (Triangle C)ᵒᵖ ⥤ Triangle Cᵒᵖ where
  obj T := Triangle.mk T.unop.mor₂.op T.unop.mor₁.op
      ((opShiftFunctorEquivalence C 1).counitIso.inv.app (Opposite.op T.unop.obj₁) ≫
        T.unop.mor₃.op⟦(1 : ℤ)⟧')
  map {T₁ T₂} φ :=
    { hom₁ := φ.unop.hom₃.op
      hom₂ := φ.unop.hom₂.op
      hom₃ := φ.unop.hom₁.op
      comm₁ := Quiver.Hom.unop_inj φ.unop.comm₂.symm
      comm₂ := Quiver.Hom.unop_inj φ.unop.comm₁.symm
      comm₃ := by
        dsimp
        rw [assoc, ← Functor.map_comp, ← op_comp, ← φ.unop.comm₃, op_comp, Functor.map_comp,
          opShiftFunctorEquivalence_counitIso_inv_naturality_assoc]
        rfl }

/-- The functor which sends a triangle `X ⟶ Y ⟶ Z ⟶ X⟦1⟧` in `Cᵒᵖ` to the triangle
`Z.unop ⟶ Y.unop ⟶ X.unop ⟶ Z.unop⟦1⟧` in `C` (without introducing signs). -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangle/Variante58b4b9aa698941f864742f93761fd50610ea0e7500213fccffd462d9699e1ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangle/Variante58b4b9aa698941f864742f93761fd50610ea0e7500213fccffd462d9699e1ee.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66d781bc7577a28fdf0aeda61a5d9ced14938ca0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
