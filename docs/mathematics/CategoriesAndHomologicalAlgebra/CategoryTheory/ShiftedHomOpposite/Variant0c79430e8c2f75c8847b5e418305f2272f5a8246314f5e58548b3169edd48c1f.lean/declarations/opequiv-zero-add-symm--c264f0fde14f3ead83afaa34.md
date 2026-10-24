# opEquiv'_zero_add_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eecb961a-af66-3024-4fe4-cb8620fede61",
  "kind": "lemma",
  "lexical_name": "opEquiv'_zero_add_symm",
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
  "slug": "opequiv-zero-add-symm--c264f0fde14f3ead83afaa34",
  "source": {
    "blob": "633bcb4bf13f46aa70ea5b9c685937a9cebd5293",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 125,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variant0c79430e8c2f75c8847b5e418305f2272f5a8246314f5e58548b3169edd48c1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c264f0fde14f3ead83afaa34a45f90d6fde8f9b0e6d4f884349cbdaa05d64ca2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variant0c79430e8c2f75c8847b5e418305f2272f5a8246314f5e58548b3169edd48c1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eecb961a-af66-3024-4fe4-cb8620fede61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma opEquiv'_zero_add_symm (a : ℤ) (f : Opposite.op (Y⟦a⟧) ⟶ (Opposite.op X)⟦(0 : ℤ)⟧) :
    (opEquiv' 0 a a (zero_add a)).symm f =
      ((shiftFunctorZero Cᵒᵖ ℤ).hom.app _).unop ≫ f.unop := by
  simp [opEquiv'_symm_apply, opEquiv_symm_apply, shiftFunctorAdd'_add_zero,
    opShiftFunctorEquivalence_zero_unitIso_inv_app]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variant0c79430e8c2f75c8847b5e418305f2272f5a8246314f5e58548b3169edd48c1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variant0c79430e8c2f75c8847b5e418305f2272f5a8246314f5e58548b3169edd48c1f.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `633bcb4bf13f46aa70ea5b9c685937a9cebd5293` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
