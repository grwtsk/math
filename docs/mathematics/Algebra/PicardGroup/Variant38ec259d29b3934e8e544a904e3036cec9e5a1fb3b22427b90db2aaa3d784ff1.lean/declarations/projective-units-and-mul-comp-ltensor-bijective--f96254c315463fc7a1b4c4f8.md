# projective_units_and_mul'_comp_lTensor_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb1fde9f0a17d9f5a18ceb0cb3b0f2cae433357d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 663,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:302c098e-f8e1-6c22-055e-62ef56f91a98",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a17c2ac-a03c-30e6-b6b3-2bc4c33a044d",
  "kind": "theorem",
  "lexical_name": "projective_units_and_mul'_comp_lTensor_bijective",
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
  "slug": "projective-units-and-mul-comp-ltensor-bijective--f96254c315463fc7a1b4c4f8",
  "source": {
    "blob": "cb1fde9f0a17d9f5a18ceb0cb3b0f2cae433357d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 694,
    "line": 663,
    "path": "GRWTSK/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f96254c315463fc7a1b4c4f8c0a47d577bc529f0af57271e1bcfe4167adf741d",
  "verification": {
    "reference": "docs/verification/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a17c2ac-a03c-30e6-b6b3-2bc4c33a044d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 663–694.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem projective_units_and_mul'_comp_lTensor_bijective (I : (Submodule R A)ˣ) :
    Projective R I ∧ Function.Bijective (mul' R A ∘ₗ I.1.subtype.lTensor A) := by
  obtain ⟨T, T', hT, hT', one_mem⟩ := mem_span_mul_finite_of_mem_mul (I.inv_mul ▸ one_le.mp le_rfl)
  classical
  rw [← Set.image2_mul, ← Finset.coe_image₂, mem_span_finset] at one_mem
  set S := T.image₂ (· * ·) T'
  obtain ⟨r, hr⟩ := one_mem
  choose a ha b hb eq using fun i : S ↦ Finset.mem_image₂.mp i.2
  let f : I →ₗ[R] S → R := .pi fun i ↦ (LinearEquiv.ofInjective
      (Algebra.linearMap R A) (FaithfulSMul.algebraMap_injective R A)).symm.comp <|
    restrict (mulRight R (r i • a i)) fun x hx ↦ by
      rw [← one_eq_range, ← I.mul_inv]; exact mul_mem_mul hx (I⁻¹.1.smul_mem _ <| hT <| ha i)
  have hf (x : I.1) (i : S) : algebraMap R A (f x i) = x * r i • a i := by
    dsimp [f, ← Algebra.linearMap_apply]
    exact LinearEquiv.ofInjective_symm_apply ..
  let g : (S → R) →ₗ[R] I := .lsum _ _ ℕ fun i ↦ .toSpanSingleton _ _ ⟨b i, hT' <| hb i⟩
  have hgf : g ∘ₗ f = .id := LinearMap.ext fun x ↦ Subtype.ext <| by
    simp only [g, lsum_apply, comp_apply, LinearMap.sum_apply, toSpanSingleton_apply, proj_apply]
    simp_rw [coe_sum, coe_smul, Algebra.smul_def, hf, mul_assoc, ← Finset.mul_sum,
      Algebra.smul_mul_assoc, eq, (Finset.sum_coe_sort ..).trans hr.2, mul_one, id_apply]
  set m := mul' R A ∘ₗ I.1.subtype.lTensor A
  have eq : (piScalarRight R R A S).toLinearMap ∘ₗ f.lTensor A =
      (.pi fun i : S ↦ mulRight R (r i • a i)) ∘ₗ m := by
    ext; simp [(Algebra.smul_def ..).trans (Algebra.commutes ..), hf, m, mul_assoc]
  have := (piScalarRight R R A S).injective.comp <| injective_of_comp_eq_id
    (f.lTensor A) (g.lTensor A) <| by rw [← lTensor_comp, hgf, lTensor_id]
  rw [← LinearEquiv.coe_toLinearMap, ← coe_comp, eq, coe_comp] at this
  refine ⟨.of_split f g hgf, .of_comp this, range_eq_top.mp ?_⟩
  rw [show m = mulMap ⊤ I ∘ₗ (topEquiv.symm.rTensor I.1).toLinearMap by ext; rfl, range_comp,
    LinearEquiv.range, map_top, mulMap_range, top_mul_eq_top_of_mul_eq_one I.inv_mul]

open LinearMap in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean#L663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb1fde9f0a17d9f5a18ceb0cb3b0f2cae433357d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
