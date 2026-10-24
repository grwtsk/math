# opEquiv'_add_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:882b591a-c2b2-ec6c-b252-407f7d9c8a67",
  "kind": "lemma",
  "lexical_name": "opEquiv'_add_symm",
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
  "slug": "opequiv-add-symm--57483ee8f0701ee6a49073d5",
  "source": {
    "blob": "47584a13053a0f35f55e03d2d25c47955a365b5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 125,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Varianta91121580a3480137054de53b08e79ab106a79a4c96c57d9c2e113cc23c58ddd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57483ee8f0701ee6a49073d53136c519f8f5d5b89338cf313c000fe6f72e54af",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Varianta91121580a3480137054de53b08e79ab106a79a4c96c57d9c2e113cc23c58ddd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:882b591a-c2b2-ec6c-b252-407f7d9c8a67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma opEquiv'_add_symm (n m a a' a'' : ℤ) (ha' : n + a = a') (ha'' : m + a' = a'')
    (x : (Opposite.op (Y⟦a⟧) ⟶ (Opposite.op X)⟦m + n⟧)) :
    (opEquiv' (m + n) a a'' (by omega)).symm x =
      (opEquiv' m a' a'' ha'').symm ((opEquiv' n a a' ha').symm
        (x ≫ (shiftFunctorAdd Cᵒᵖ m n).hom.app _)).op := by
  simp only [opEquiv'_symm_apply, opEquiv_symm_apply,
    opShiftFunctorEquivalence_unitIso_inv_app_eq _ _ _ _ (add_comm n m)]
  dsimp
  simp only [assoc, Functor.map_comp, ← shiftFunctorAdd'_eq_shiftFunctorAdd,
    ← NatTrans.naturality_assoc,
    shiftFunctorAdd'_assoc_inv_app a n m a' (m + n) a'' (by omega) (by omega) (by omega)]
  rfl

section Preadditive

variable [Preadditive C] [∀ (n : ℤ), (shiftFunctor C n).Additive]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Varianta91121580a3480137054de53b08e79ab106a79a4c96c57d9c2e113cc23c58ddd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Varianta91121580a3480137054de53b08e79ab106a79a4c96c57d9c2e113cc23c58ddd.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47584a13053a0f35f55e03d2d25c47955a365b5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
