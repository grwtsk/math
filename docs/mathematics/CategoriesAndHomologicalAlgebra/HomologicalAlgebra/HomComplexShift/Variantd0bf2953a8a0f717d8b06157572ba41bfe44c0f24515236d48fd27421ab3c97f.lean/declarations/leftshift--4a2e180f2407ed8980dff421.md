# δ_leftShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8e212634b5f53e0741408ea2c3ee9cdd7d94893",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 416,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d0bf2953a8a0f717d8b06157572ba41bfe44c0f24515236d48fd27421ab3c97f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b8613a7-525c-eb8b-ede3-c608a829ade2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01b41541-060f-57d4-e578-b645c5432964",
  "kind": "lemma",
  "lexical_name": "δ_leftShift",
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
  "slug": "leftshift--4a2e180f2407ed8980dff421",
  "source": {
    "blob": "b8e212634b5f53e0741408ea2c3ee9cdd7d94893",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 416,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantd0bf2953a8a0f717d8b06157572ba41bfe44c0f24515236d48fd27421ab3c97f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a2e180f2407ed8980dff421283f36a35e5e957113a062a40e32aa579b3ae41c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantd0bf2953a8a0f717d8b06157572ba41bfe44c0f24515236d48fd27421ab3c97f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01b41541-060f-57d4-e578-b645c5432964`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma δ_leftShift (a n' m' : ℤ) (hn' : n + a = n') (m : ℤ) (hm' : m + a = m') :
    δ n' m' (γ.leftShift a n' hn') = a.negOnePow • (δ n m γ).leftShift a m' hm' := by
  by_cases hnm : n + 1 = m
  · have hnm' : n' + 1 = m' := by lia
    ext p q hpq
    dsimp
    rw [(δ n m γ).leftShift_v a m' hm' p q hpq (p + a) (by lia),
      δ_v n m hnm _ (p + a) q (by lia) (p + n') (p + 1 + a) (by lia) (by lia),
      δ_v n' m' hnm' _ p q hpq (p + n') (p + 1) (by lia) rfl,
      γ.leftShift_v a n' hn' p (p + n') rfl (p + a) (by lia),
      γ.leftShift_v a n' hn' (p + 1) q (by lia) (p + 1 + a) (by lia)]
    simp only [shiftFunctor_obj_X', shiftFunctor_obj_X, shiftFunctorObjXIso,
      HomologicalComplex.XIsoOfEq_rfl, Iso.refl_hom, id_comp, Linear.units_smul_comp,
      shiftFunctor_obj_d', Linear.comp_units_smul, smul_smul, comp_add, smul_add]
    congr 2
    · rw [← hnm', add_comm n', mul_add, mul_one]
      simp only [Int.negOnePow_add, ← mul_assoc, Int.units_mul_self, one_mul]
    · simp only [← Int.negOnePow_add, ← hn', ← hm', ← hnm]
      congr 1
      linarith
  · have hnm' : ¬ n' + 1 = m' := fun _ => hnm (by lia)
    rw [δ_shape _ _ hnm', δ_shape _ _ hnm, leftShift_zero, smul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantd0bf2953a8a0f717d8b06157572ba41bfe44c0f24515236d48fd27421ab3c97f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantd0bf2953a8a0f717d8b06157572ba41bfe44c0f24515236d48fd27421ab3c97f.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8e212634b5f53e0741408ea2c3ee9cdd7d94893` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
