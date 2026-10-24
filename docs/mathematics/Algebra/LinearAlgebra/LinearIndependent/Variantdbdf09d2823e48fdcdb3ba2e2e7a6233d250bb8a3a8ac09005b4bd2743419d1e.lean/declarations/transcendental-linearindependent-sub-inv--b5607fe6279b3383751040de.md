# Transcendental.linearIndependent_sub_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a9232769a62b5ac483755ac503153521bc9dba8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbdf09d2823e48fdcdb3ba2e2e7a6233d250bb8a3a8ac09005b4bd2743419d1e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b494be28-4e0e-9c2c-0ca8-ba06a6d41fd7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:927b4348-74e4-a112-c89e-7ec148ec0035",
  "kind": "theorem",
  "lexical_name": "Transcendental.linearIndependent_sub_inv",
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
  "slug": "transcendental-linearindependent-sub-inv--b5607fe6279b3383751040de",
  "source": {
    "blob": "6a9232769a62b5ac483755ac503153521bc9dba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 24,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearIndependent/Variantdbdf09d2823e48fdcdb3ba2e2e7a6233d250bb8a3a8ac09005b4bd2743419d1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5607fe6279b3383751040de02e64a49d3e6a59c4dc84334e448ed5b038913bb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearIndependent/Variantdbdf09d2823e48fdcdb3ba2e2e7a6233d250bb8a3a8ac09005b4bd2743419d1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:927b4348-74e4-a112-c89e-7ec148ec0035`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Transcendental.linearIndependent_sub_inv
    {F E : Type*} [Field F] [Field E] [Algebra F E] {x : E} (H : Transcendental F x) :
    LinearIndependent F fun a ↦ (x - algebraMap F E a)⁻¹ := by
  classical
  rw [transcendental_iff] at H
  refine linearIndependent_iff'.2 fun s m hm i hi ↦ ?_
  have hnz (a : F) : x - algebraMap F E a ≠ 0 := fun h ↦
    X_sub_C_ne_zero a <| H (.X - .C a) (by simp [h])
  let b := s.prod fun j ↦ x - algebraMap F E j
  have h1 : ∀ i ∈ s, m i • (b * (x - algebraMap F E i)⁻¹) =
      m i • (s.erase i).prod fun j ↦ x - algebraMap F E j := fun i hi ↦ by
    simp_rw [b, ← s.prod_erase_mul _ hi, mul_inv_cancel_right₀ (hnz i)]
  replace hm := congr(b * $(hm))
  simp_rw [mul_zero, Finset.mul_sum, mul_smul_comm, Finset.sum_congr rfl h1] at hm
  let p : Polynomial F := s.sum fun i ↦ .C (m i) * (s.erase i).prod fun j ↦ .X - .C j
  replace hm := congr(Polynomial.aeval i $(H p (by simp_rw [← hm, p, map_sum, map_mul, map_prod,
    map_sub, aeval_X, aeval_C, Algebra.smul_def])))
  have h2 : ∀ j ∈ s.erase i, m j * ((s.erase j).prod fun x ↦ i - x) = 0 := fun j hj ↦ by
    have := Finset.mem_erase_of_ne_of_mem (Finset.ne_of_mem_erase hj).symm hi
    simp_rw [← (s.erase j).prod_erase_mul _ this, sub_self, mul_zero]
  simp_rw [map_zero, p, map_sum, map_mul, map_prod, map_sub, aeval_X,
    aeval_C, Algebra.id.map_eq_self, ← s.sum_erase_add _ hi,
    Finset.sum_eq_zero h2, zero_add] at hm
  exact eq_zero_of_ne_zero_of_mul_right_eq_zero (Finset.prod_ne_zero_iff.2 fun j hj ↦
    sub_ne_zero.2 (Finset.ne_of_mem_erase hj).symm) hm

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearIndependent/Variantdbdf09d2823e48fdcdb3ba2e2e7a6233d250bb8a3a8ac09005b4bd2743419d1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearIndependent/Variantdbdf09d2823e48fdcdb3ba2e2e7a6233d250bb8a3a8ac09005b4bd2743419d1e.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a9232769a62b5ac483755ac503153521bc9dba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
