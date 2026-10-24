# structuredArrowEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06ad0dd23bf3b5aa39dde4aeb4e361608bff3f1b50f27e3209c3d848166f2b17",
  "kind": "def",
  "lexical_name": "structuredArrowEquiv",
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
  "slug": "structuredarrowequiv--2852b9503718fd4b2ae304f5",
  "source": {
    "blob": "368856404d2b13b7a622684dbbed0538cb0416bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 53,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variantba4e39dc6e28e2548b33f5ff97dc1a4952c975463d552445a6af0f3c942170b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2852b9503718fd4b2ae304f52b7867c6bf9f138ac5453aa7173ebbe146c485f2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variantba4e39dc6e28e2548b33f5ff97dc1a4952c975463d552445a6af0f3c942170b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06ad0dd23bf3b5aa39dde4aeb4e361608bff3f1b50f27e3209c3d848166f2b17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def structuredArrowEquiv :
    StructuredArrow (L.obj X) L ≃ StructuredArrow (L'.obj X) L' where
  toFun f := StructuredArrow.mk (homEquiv W L L' f.hom)
  invFun f := StructuredArrow.mk (homEquiv W L' L f.hom)
  left_inv f := by
    obtain ⟨Y, f, rfl⟩ := f.mk_surjective
    dsimp
    rw [← homEquiv_symm_apply, Equiv.symm_apply_apply]
  right_inv f := by
    obtain ⟨Y, f, rfl⟩ := f.mk_surjective
    dsimp
    rw [← homEquiv_symm_apply, Equiv.symm_apply_apply]

end

section

variable (W : MorphismProperty C) {X : C}
  (P : StructuredArrow (W.Q.obj X) W.Q → Prop)

open Construction in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variantba4e39dc6e28e2548b33f5ff97dc1a4952c975463d552445a6af0f3c942170b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variantba4e39dc6e28e2548b33f5ff97dc1a4952c975463d552445a6af0f3c942170b9.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `368856404d2b13b7a622684dbbed0538cb0416bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
