# _root_.MeasureTheory.Measure.variation_withDensityᵥ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae2e6dabd5ce78df77d591ac5935e114023762df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 366,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f71a76f-200b-d61f-50ce-5bd320747802",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19ab1956-e5b1-ae1d-17b7-59b5bc2b602e",
  "kind": "lemma",
  "lexical_name": "_root_.MeasureTheory.Measure.variation_withDensityᵥ",
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
  "slug": "root-measuretheory-measure-variation-withdensity--0fc9eb9c644260acf1c1fc72",
  "source": {
    "blob": "ae2e6dabd5ce78df77d591ac5935e114023762df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 366,
    "path": "GRWTSK/Analysis/MeasureTheory/WithDensityVec/Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fc9eb9c644260acf1c1fc7286f35488ca67c4fe1f555e669a817b7f9747da92",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/WithDensityVec/Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19ab1956-e5b1-ae1d-17b7-59b5bc2b602e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.MeasureTheory.Measure.variation_withDensityᵥ [CompleteSpace E]
    {μ : Measure X} {f : X → E} (hf : Integrable f μ) :
    (μ.withDensityᵥ f).variation = μ.withDensity (fun x ↦ ‖f x‖ₑ) := by
  /- We deduce this statement from the statement `variation_withDensity` for vector measures
  with density. For this, we write `μ.withDensityᵥ f` as the vector measure with density `f / ‖f‖`
  with respect to the measure `μ.withDensity ‖f‖` interpreted as a signed measure. -/
  rcases subsingleton_or_nontrivial E with hE | hE
  · simp [show f = 0 from Subsingleton.elim _ _]
  have : IsFiniteMeasure (μ.withDensity fun x ↦ ‖f x‖ₑ) := ⟨by simpa using! hf.2⟩
  have I : (μ.withDensity fun x ↦ ‖f x‖ₑ).toSignedMeasure.Integrable (fun x ↦ ‖f x‖⁻¹ • f x) := by
    simp only [VectorMeasure.Integrable, Measure.variation_toSignedMeasure]
    apply Integrable.of_bound (C := 1)
    · apply AEStronglyMeasurable.mono_ac (withDensity_absolutelyContinuous _ _)
      exact hf.aestronglyMeasurable.norm.inv₀.smul hf.aestronglyMeasurable
    · filter_upwards with x using by simp [norm_smul, inv_mul_le_one]
  have : μ.withDensityᵥ f = (μ.withDensity (‖f ·‖ₑ)).toSignedMeasure.withDensity
      (fun x ↦ ‖f x‖⁻¹ • f x) (ContinuousLinearMap.lsmul ℝ ℝ).flip := by
    ext s hs
    rw [withDensityᵥ_apply hf hs, withDensity_apply I, setIntegral_toSignedMeasure hs,
        setIntegral_withDensity_eq_setIntegral_toReal_smul₀ _ _ _ hs]; rotate_left
    · exact hf.aestronglyMeasurable.restrict.enorm
    · filter_upwards with x using by simp
    congr with x
    rcases eq_or_ne (f x) 0 with hx | hx
    · simp [hx]
    simp only [toReal_enorm, smul_smul]
    rw [mul_inv_cancel₀, one_smul]
    simpa using hx
  rw [this, variation_withDensity I (by simp [nnnorm_smul, mul_comm]),
    variation_transpose_eq _ _ (by simp [nnnorm_smul, mul_comm]), Measure.variation_toSignedMeasure,
    ← withDensity_mul₀ hf.aestronglyMeasurable.enorm]; swap
  · exact (hf.aestronglyMeasurable.norm.inv₀.smul hf.aestronglyMeasurable).enorm
  congr with x
  rcases eq_or_ne (f x) 0 with hx | hx
  · simp [hx]
  have h'x : ‖f x‖ ≠ 0 := by simp [hx]
  simp only [enorm_smul, Pi.mul_apply, ne_eq, h'x, not_false_eq_true, enorm_inv, enorm_norm]
  rw [ENNReal.inv_mul_cancel (by simpa using hx) (by simp), mul_one]

end MeasureTheory.VectorMeasure
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/WithDensityVec/Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/WithDensityVec/Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae2e6dabd5ce78df77d591ac5935e114023762df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
