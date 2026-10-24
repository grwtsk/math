# δ_rightShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb3efea5-e6c5-b90c-0a61-f545907fa67c",
  "kind": "lemma",
  "lexical_name": "δ_rightShift",
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
  "slug": "rightshift--f2fa653596df4e892d07e32c",
  "source": {
    "blob": "fbd66e9f1a3e8f0746d9db9ad9e19eab1761afdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 397,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variant8f8698aa8c43178325c414a985d7874fc28acdbc1fa433bf0d2f5c1df6033f9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2fa653596df4e892d07e32c664c046db9e877319eecae885c87c8552d49c937",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variant8f8698aa8c43178325c414a985d7874fc28acdbc1fa433bf0d2f5c1df6033f9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb3efea5-e6c5-b90c-0a61-f545907fa67c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma δ_rightShift (a n' m' : ℤ) (hn' : n' + a = n) (m : ℤ) (hm' : m' + a = m) :
    δ n' m' (γ.rightShift a n' hn') = a.negOnePow • (δ n m γ).rightShift a m' hm' := by
  by_cases hnm : n + 1 = m
  · have hnm' : n' + 1 = m' := by lia
    ext p q hpq
    dsimp
    rw [(δ n m γ).rightShift_v a m' hm' p q hpq _ rfl,
      δ_v n m hnm _ p (p + m) rfl (p + n) (p + 1) (by lia) rfl,
      δ_v n' m' hnm' _ p q hpq (p + n') (p + 1) (by lia) rfl,
      γ.rightShift_v a n' hn' p (p + n') rfl (p + n) rfl,
      γ.rightShift_v a n' hn' (p + 1) q _ (p + m) (by lia)]
    simp only [shiftFunctor_obj_X', shiftFunctor_obj_X, shiftFunctorObjXIso, shiftFunctor_obj_d',
      Linear.comp_units_smul, assoc, HomologicalComplex.XIsoOfEq_inv_comp_d, add_comp,
      HomologicalComplex.d_comp_XIsoOfEq_inv, Linear.units_smul_comp, smul_add, smul_smul,
      add_right_inj]
    simp only [← hm', add_comm m', Int.negOnePow_add, ← mul_assoc,
      Int.units_mul_self, one_mul]
  · have hnm' : ¬ n' + 1 = m' := fun _ => hnm (by lia)
    rw [δ_shape _ _ hnm', δ_shape _ _ hnm, rightShift_zero, smul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variant8f8698aa8c43178325c414a985d7874fc28acdbc1fa433bf0d2f5c1df6033f9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variant8f8698aa8c43178325c414a985d7874fc28acdbc1fa433bf0d2f5c1df6033f9e.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbd66e9f1a3e8f0746d9db9ad9e19eab1761afdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
