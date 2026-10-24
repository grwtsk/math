# modularCharacterFun_eq_haarScalarFactor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5a12cb26d4ccb936948aec569b00db1f24f9dc3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b8b2b130fd2fdd9997cafda827db5c6666104365666b8bca9746e42bbafc7c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d93382f3-351f-0880-9969-0c11267dc81f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be39d470-0c2c-9931-e69a-d926db97757d",
  "kind": "lemma",
  "lexical_name": "modularCharacterFun_eq_haarScalarFactor",
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
  "slug": "modularcharacterfun-eq-haarscalarfactor--d14bf9fb5c1623f3fc7d8332",
  "source": {
    "blob": "e5a12cb26d4ccb936948aec569b00db1f24f9dc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 53,
    "path": "GRWTSK/Analysis/MeasureTheory/ModularCharacter/Variant1b8b2b130fd2fdd9997cafda827db5c6666104365666b8bca9746e42bbafc7c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d14bf9fb5c1623f3fc7d83325d8f54013e1c71638e2a1904539fc173318d68c5",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ModularCharacter/Variant1b8b2b130fd2fdd9997cafda827db5c6666104365666b8bca9746e42bbafc7c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be39d470-0c2c-9931-e69a-d926db97757d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma modularCharacterFun_eq_haarScalarFactor [MeasurableSpace G] [BorelSpace G] (μ : Measure G)
    [IsHaarMeasure μ] (g : G) : modularCharacterFun g = haarScalarFactor (map (· * g) μ) μ := by
  let ν := MeasureTheory.Measure.haar (G := G)
  obtain ⟨⟨f, f_cont⟩, f_comp, f_nonneg, f_one⟩ :
    ∃ f : C(G, ℝ), HasCompactSupport f ∧ 0 ≤ f ∧ f 1 ≠ 0 := exists_continuous_nonneg_pos 1
  have int_f_ne_zero (μ₀ : Measure G) [IsHaarMeasure μ₀] : ∫ x, f x ∂μ₀ ≠ 0 :=
    ne_of_gt (f_cont.integral_pos_of_hasCompactSupport_nonneg_nonzero f_comp f_nonneg f_one)
  apply NNReal.coe_injective
  have t : (∫ x, f (x * g) ∂ν) = (∫ x, f (x * g) ∂(haarScalarFactor ν μ • μ)) := by
    refine integral_isMulLeftInvariant_eq_smul_of_hasCompactSupport ν μ ?_ ?_
    · exact Continuous.comp' f_cont (continuous_mul_right g)
    · have j : (fun x ↦ f (x * g)) = (f ∘ (Homeomorph.mulRight g)) := rfl
      rw [j]
      exact HasCompactSupport.comp_homeomorph f_comp _
  have r : (haarScalarFactor ν μ : ℝ) / (haarScalarFactor ν μ) = 1 := by
    refine div_self ?_
    rw [NNReal.coe_ne_zero]
    apply (ne_of_lt (haarScalarFactor_pos_of_isHaarMeasure _ _)).symm
  calc
  ↑(modularCharacterFun g) = ↑(haarScalarFactor (map (· * g) ν) ν) := by borelize G; rfl
  _ = (∫ x, f x ∂(map (· * g) ν)) / ∫ x, f x ∂ν :=
    haarScalarFactor_eq_integral_div _ _ f_cont f_comp (int_f_ne_zero ν)
  _ = (∫ x, f (x * g) ∂ν) / ∫ x, f x ∂ν := by
    rw [integral_map (AEMeasurable.mul_const aemeasurable_id' _)
    (Continuous.aestronglyMeasurable f_cont)]
  _ = (∫ x, f (x * g) ∂(haarScalarFactor ν μ • μ)) / ∫ x, f x ∂ν := by rw [t]
  _ = (∫ x, f (x * g) ∂(haarScalarFactor ν μ • μ)) / ∫ x, f x ∂(haarScalarFactor ν μ • μ) := by
    rw [integral_isMulLeftInvariant_eq_smul_of_hasCompactSupport ν μ f_cont f_comp]
  _ = (haarScalarFactor ν μ • ∫ x, f (x * g) ∂μ) / (haarScalarFactor ν μ • ∫ x, f x ∂μ) := by
    rw [integral_smul_nnreal_measure, integral_smul_nnreal_measure]
  _ = (haarScalarFactor ν μ / haarScalarFactor ν μ) * ((∫ x, f (x * g) ∂μ) / ∫ x, f x ∂μ) :=
    mul_div_mul_comm _ _ _ _
  _ = 1 * ((∫ x, f (x * g) ∂μ) / ∫ x, f x ∂μ) := by rw [r]
  _ = (∫ x, f (x * g) ∂μ) / ∫ x, f x ∂μ := by rw [one_mul]
  _ = (∫ x, f x ∂(map (· * g) μ)) / ∫ x, f x ∂μ := by
    rw [integral_map (AEMeasurable.mul_const aemeasurable_id' _)
    (Continuous.aestronglyMeasurable f_cont)]
  _ = haarScalarFactor (map (· * g) μ) μ :=
    (haarScalarFactor_eq_integral_div _ _ f_cont f_comp (int_f_ne_zero μ)).symm

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ModularCharacter/Variant1b8b2b130fd2fdd9997cafda827db5c6666104365666b8bca9746e42bbafc7c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ModularCharacter/Variant1b8b2b130fd2fdd9997cafda827db5c6666104365666b8bca9746e42bbafc7c7.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5a12cb26d4ccb936948aec569b00db1f24f9dc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
