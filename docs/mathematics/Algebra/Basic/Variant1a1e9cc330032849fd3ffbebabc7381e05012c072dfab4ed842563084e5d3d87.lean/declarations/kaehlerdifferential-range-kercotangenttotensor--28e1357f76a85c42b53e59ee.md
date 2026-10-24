# KaehlerDifferential.range_kerCotangentToTensor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8cef68402fb7b80b00ca0436233549a4e9ceee37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 789,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a1e9cc330032849fd3ffbebabc7381e05012c072dfab4ed842563084e5d3d87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc4b1a35-491e-0067-c92f-6c80a9c8fe5b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6803a0f5-72d9-93a2-3461-5ae87a44ccb8",
  "kind": "theorem",
  "lexical_name": "KaehlerDifferential.range_kerCotangentToTensor",
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
  "slug": "kaehlerdifferential-range-kercotangenttotensor--28e1357f76a85c42b53e59ee",
  "source": {
    "blob": "8cef68402fb7b80b00ca0436233549a4e9ceee37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 834,
    "line": 789,
    "path": "GRWTSK/Algebra/Basic/Variant1a1e9cc330032849fd3ffbebabc7381e05012c072dfab4ed842563084e5d3d87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28e1357f76a85c42b53e59ee5982a84cb8a7b2685530172900542c2dda48eca7",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant1a1e9cc330032849fd3ffbebabc7381e05012c072dfab4ed842563084e5d3d87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6803a0f5-72d9-93a2-3461-5ae87a44ccb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 789–834.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem KaehlerDifferential.range_kerCotangentToTensor
    (h : Function.Surjective (algebraMap A B)) :
    LinearMap.range (kerCotangentToTensor R A B) =
      (LinearMap.ker (KaehlerDifferential.mapBaseChange R A B)).restrictScalars A := by
  classical
  ext x
  constructor
  · rintro ⟨x, rfl⟩
    obtain ⟨x, rfl⟩ := Ideal.toCotangent_surjective _ x
    simp only [kerCotangentToTensor_toCotangent, Submodule.restrictScalars_mem, LinearMap.mem_ker,
      mapBaseChange_tmul, map_D, RingHom.mem_ker.mp x.2, map_zero, smul_zero]
  · intro hx
    obtain ⟨x, rfl⟩ := LinearMap.rTensor_surjective Ω[A⁄R] (g := Algebra.linearMap A B) h x
    obtain ⟨x, rfl⟩ := (TensorProduct.lid _ _).symm.surjective x
    replace hx : x ∈ LinearMap.ker (KaehlerDifferential.map R R A B) := by simpa using hx
    rw [KaehlerDifferential.ker_map_of_surjective R A B h] at hx
    obtain ⟨x, hx, rfl⟩ := hx
    simp only [TensorProduct.lid_symm_apply, LinearMap.rTensor_tmul,
      Algebra.linearMap_apply, map_one]
    rw [← Finsupp.sum_single x, Finsupp.sum, ← Finset.sum_fiberwise_of_maps_to
      (fun _ ↦ Finset.mem_image_of_mem (algebraMap A B))]
    simp only [map_sum (s := x.support.image (algebraMap A B)),
      TensorProduct.tmul_sum]
    apply sum_mem
    intro c _
    simp only [LinearMap.mem_range]
    simp only [map_sum, Finsupp.linearCombination_single]
    have : ∑ i ∈ x.support with algebraMap A B i = c, x i ∈ RingHom.ker (algebraMap A B) := by
      simpa [Finsupp.mapDomain, Finsupp.sum, Finsupp.finsetSum_apply, RingHom.mem_ker,
        Finsupp.single_apply, ← Finset.sum_filter] using DFunLike.congr_fun hx c
    obtain ⟨a, ha⟩ := h c
    use ∑ i ∈ {i ∈ x.support | algebraMap A B i = c}.attach, x i • Ideal.toCotangent _ ⟨i - a, ?_⟩
    · simp only [map_sum, LinearMapClass.map_smul, kerCotangentToTensor_toCotangent, map_sub]
      simp_rw [← TensorProduct.tmul_smul]
      -- TODO: was `simp [kerCotangentToTensor_toCotangent, RingHom.mem_ker.mp x.2]` and very slow
      -- (https://github.com/leanprover-community/mathlib4/issues/19751)
      simp only [smul_sub, TensorProduct.tmul_sub, Finset.sum_sub_distrib, ← TensorProduct.tmul_sum,
        ← Finset.sum_smul, Finset.sum_attach, sub_eq_self,
        Finset.sum_attach (f := fun i ↦ x i • KaehlerDifferential.D R A i)]
      rw [← TensorProduct.smul_tmul, ← Algebra.algebraMap_eq_smul_one, RingHom.mem_ker.mp this,
        TensorProduct.zero_tmul]
    · have : x i ≠ 0 ∧ algebraMap A B i = c := by
        convert! i.prop
        simp_rw [Finset.mem_filter, Finsupp.mem_support_iff]
      simp [RingHom.mem_ker, ha, this.2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant1a1e9cc330032849fd3ffbebabc7381e05012c072dfab4ed842563084e5d3d87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant1a1e9cc330032849fd3ffbebabc7381e05012c072dfab4ed842563084e5d3d87.lean#L789).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cef68402fb7b80b00ca0436233549a4e9ceee37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
