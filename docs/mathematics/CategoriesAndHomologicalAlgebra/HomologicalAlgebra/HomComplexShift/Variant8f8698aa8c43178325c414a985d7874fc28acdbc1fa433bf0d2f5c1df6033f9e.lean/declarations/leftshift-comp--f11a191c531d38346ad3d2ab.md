# leftShift_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba0cc184-5543-2879-447c-343d5c7ca7bb",
  "kind": "lemma",
  "lexical_name": "leftShift_comp",
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
  "slug": "leftshift-comp--f11a191c531d38346ad3d2ab",
  "source": {
    "blob": "fbd66e9f1a3e8f0746d9db9ad9e19eab1761afdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 375,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variant8f8698aa8c43178325c414a985d7874fc28acdbc1fa433bf0d2f5c1df6033f9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f11a191c531d38346ad3d2ab4d502987e9a195fd838296f8562ba199246bd9d9",
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

Occurrence: `result:ba0cc184-5543-2879-447c-343d5c7ca7bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leftShift_comp (a n' : ℤ) (hn' : n + a = n') {m t t' : ℤ} (γ' : Cochain L M m)
    (h : n + m = t) (ht' : t + a = t') :
    (γ.comp γ' h).leftShift a t' ht' = (a * m).negOnePow • (γ.leftShift a n' hn').comp γ'
      (by rw [← ht', ← h, ← hn', add_assoc, add_comm a, add_assoc]) := by
  ext p q hpq
  have h' : n' + m = t' := by lia
  simp only [shiftFunctor_obj_X', (γ.comp γ' h).leftShift_v a t' (by lia) p q hpq (p + a) (by lia),
    shiftFunctor_obj_X, ← h', Int.negOnePow_add, shiftFunctorObjXIso,
    HomologicalComplex.XIsoOfEq_rfl, Iso.refl_hom,
    comp_v _ _ h (p + a) (p + n') q (by lia) (by lia), id_comp, units_smul_v,
    Cochain.comp_v _ _ h' p (p + n') q rfl (by lia),
    γ.leftShift_v a n' hn' p (p + n') rfl (p + a) (by lia), Linear.units_smul_comp, smul_smul,
    ← mul_assoc]
  congr 2
  rw [add_comm n', mul_add, Int.negOnePow_add]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variant8f8698aa8c43178325c414a985d7874fc28acdbc1fa433bf0d2f5c1df6033f9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variant8f8698aa8c43178325c414a985d7874fc28acdbc1fa433bf0d2f5c1df6033f9e.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbd66e9f1a3e8f0746d9db9ad9e19eab1761afdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
