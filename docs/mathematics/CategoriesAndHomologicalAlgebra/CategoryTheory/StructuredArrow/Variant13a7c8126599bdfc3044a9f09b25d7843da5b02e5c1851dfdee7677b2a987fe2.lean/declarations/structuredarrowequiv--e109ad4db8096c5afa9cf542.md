# structuredArrowEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:feeca53056c2e318d08e6afde9bab0d0b3f92a63dc9eaa8ecc4a1936985d084c",
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
  "slug": "structuredarrowequiv--e109ad4db8096c5afa9cf542",
  "source": {
    "blob": "96c0af25daccbe0bc1968400b64d20d81041306c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 41,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant13a7c8126599bdfc3044a9f09b25d7843da5b02e5c1851dfdee7677b2a987fe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e109ad4db8096c5afa9cf542f245ad415ff3eee67c2b368ae8f1477373012e57",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant13a7c8126599bdfc3044a9f09b25d7843da5b02e5c1851dfdee7677b2a987fe2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:feeca53056c2e318d08e6afde9bab0d0b3f92a63dc9eaa8ecc4a1936985d084c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–61.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant13a7c8126599bdfc3044a9f09b25d7843da5b02e5c1851dfdee7677b2a987fe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variant13a7c8126599bdfc3044a9f09b25d7843da5b02e5c1851dfdee7677b2a987fe2.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96c0af25daccbe0bc1968400b64d20d81041306c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
