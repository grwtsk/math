# constructRightAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40a5bbf9946fcfd78e6e5249d0133991672de413e8ae2500dd44344c8d2202c9",
  "kind": "def",
  "lexical_name": "constructRightAdjoint",
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
  "slug": "constructrightadjoint--7a3860a7b2ea3a41f64e2521",
  "source": {
    "blob": "7cf13826c25f294053ef4b9276f1a8400fe42251",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 158,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant3808c6634009cd66b4218343180fc76cf84394ce505a0b80df56ba1fad8557dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a3860a7b2ea3a41f64e252136eec857eca3169abf0f193f653e17476aeaa065",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant3808c6634009cd66b4218343180fc76cf84394ce505a0b80df56ba1fad8557dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40a5bbf9946fcfd78e6e5249d0133991672de413e8ae2500dd44344c8d2202c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def constructRightAdjoint (h : ∀ X : B, RegularMono (adj₁.unit.app X)) : B ⥤ C := by
  refine Adjunction.rightAdjointOfEquiv
    (fun X Y => (constructRightAdjointEquiv L _ adj₁ adj₂ h X Y).symm) ?_
  intro X Y Y' g h
  rw [constructRightAdjointEquiv_symm_apply, constructRightAdjointEquiv_symm_apply,
    Equiv.symm_apply_eq, Subtype.ext_iff]
  dsimp
  simp only [Adjunction.homEquiv_counit]
  erw [Fork.IsLimit.homIso_natural, Fork.IsLimit.homIso_natural]
  simp only [Fork.ofι_pt, Functor.map_comp, assoc, limit.cone_x]
  erw [adj₂.homEquiv_naturality_left, Equiv.rightInverse_symm]
  simp

end LiftRightAdjoint

/-- The adjoint triangle theorem: Suppose `U : A ⥤ B` has a left adjoint `F` such that each unit
`η_X : X ⟶ UFX` is a regular monomorphism. Then if a category `C` has equalizers of coreflexive
pairs, then a functor `L : C ⥤ B` has a right adjoint if the composite `L ⋙ F` does.

Note the converse is true (with weaker assumptions), by `Adjunction.comp`.
See https://ncatlab.org/nlab/show/adjoint+triangle+theorem
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant3808c6634009cd66b4218343180fc76cf84394ce505a0b80df56ba1fad8557dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant3808c6634009cd66b4218343180fc76cf84394ce505a0b80df56ba1fad8557dd.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cf13826c25f294053ef4b9276f1a8400fe42251` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
