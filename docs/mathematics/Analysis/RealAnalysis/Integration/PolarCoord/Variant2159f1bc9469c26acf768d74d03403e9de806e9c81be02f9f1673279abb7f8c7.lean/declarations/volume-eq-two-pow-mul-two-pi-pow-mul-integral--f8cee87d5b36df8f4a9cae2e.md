# volume_eq_two_pow_mul_two_pi_pow_mul_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d9d01d640d4a633bf14ca44638078910a382d48b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 435,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:312e3bf5-6bfe-e636-f402-ef22c43cb711",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be7ef7af-ec49-49a6-9cb7-6b11157b3dc5",
  "kind": "theorem",
  "lexical_name": "volume_eq_two_pow_mul_two_pi_pow_mul_integral",
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
  "slug": "volume-eq-two-pow-mul-two-pi-pow-mul-integral--f8cee87d5b36df8f4a9cae2e",
  "source": {
    "blob": "d9d01d640d4a633bf14ca44638078910a382d48b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 435,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8cee87d5b36df8f4a9cae2e1b3864722e68bcb6be5e1c4fba823be8f0dadabc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be7ef7af-ec49-49a6-9cb7-6b11157b3dc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem volume_eq_two_pow_mul_two_pi_pow_mul_integral [NumberField K]
    (hA : normAtAllPlaces ⁻¹' (normAtAllPlaces '' A) = A) (hm : MeasurableSet A) :
    volume A = 2 ^ nrRealPlaces K * .ofReal (2 * π) ^ nrComplexPlaces K *
      ∫⁻ x in normAtAllPlaces '' A, ∏ w : {w // IsComplex w}, ENNReal.ofReal (x w.1) := by
  have hA₁ (x : mixedSpace K) : x ∈ A ↔ (fun w ↦ ‖x.1 w‖, x.2) ∈ A := by
    rw [← hA]
    simp_rw [Set.mem_preimage, Set.mem_image, normAtAllPlaces_norm_at_real_places]
  have hA₃ : normAtComplexPlaces ⁻¹' (normAtComplexPlaces '' (plusPart A)) = plusPart A := by
    refine subset_antisymm (fun x ⟨a, ha₁, ha₂⟩ ↦ ⟨?_, fun w ↦ ?_⟩) (Set.subset_preimage_image _ _)
    · rw [← hA, Set.mem_preimage, ← normAtAllPlaces_eq_of_normAtComplexPlaces_eq ha₂]
      exact Set.mem_image_of_mem normAtAllPlaces (Set.inter_subset_left ha₁)
    · have := funext_iff.mp ha₂ w
      rw [normAtComplexPlaces_apply_isReal, normAtComplexPlaces_apply_isReal] at this
      rw [← this]
      exact ha₁.2 w
  rw [volume_eq_two_pow_mul_volume_plusPart hA₁ hm, volume_eq_two_pi_pow_mul_integral hA₃
    (measurableSet_plusPart hm), ← mul_assoc]
  refine congr_arg (_ * _ * ·) <| setLIntegral_congr ?_
  rw [← volume_eq_two_pow_mul_two_pi_pow_mul_integral_aux hA]
  refine inter_ae_eq_left_of_ae_eq_univ <| ae_eq_univ.mpr
    <| Set.compl_iInter _ ▸ measure_iUnion_null_iff.mpr fun w ↦ ?_
  rw [show {x : realSpace K | x w.1 ≠ 0}ᶜ = {x | x w.1 = 0} by ext; simp]
  exact realSpace.volume_eq_zero w.1

end polarSpace

end NumberField.mixedEmbedding
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9d01d640d4a633bf14ca44638078910a382d48b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
