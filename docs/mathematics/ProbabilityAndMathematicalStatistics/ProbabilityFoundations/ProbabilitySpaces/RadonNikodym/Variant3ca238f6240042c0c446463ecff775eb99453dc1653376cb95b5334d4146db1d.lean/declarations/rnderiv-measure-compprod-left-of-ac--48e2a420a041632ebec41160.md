# rnDeriv_measure_compProd_left_of_ac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2c1a3db-3048-b0dc-cb90-e33a7a38bf8b",
  "kind": "lemma",
  "lexical_name": "rnDeriv_measure_compProd_left_of_ac",
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
  "slug": "rnderiv-measure-compprod-left-of-ac--48e2a420a041632ebec41160",
  "source": {
    "blob": "cc3f7e000f3f37b6a49cf35971591c7cb796a7fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 57,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48e2a420a041632ebec411608c483613ae3b71528228c527dd6fc36b5d9dbb8a",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2c1a3db-3048-b0dc-cb90-e33a7a38bf8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma rnDeriv_measure_compProd_left_of_ac (hμν : μ ≪ ν) (κ : Kernel α β)
    [IsFiniteMeasure μ] [IsFiniteMeasure ν] [IsFiniteKernel κ] :
    (μ ⊗ₘ κ).rnDeriv (ν ⊗ₘ κ) =ᵐ[ν ⊗ₘ κ] fun p ↦ μ.rnDeriv ν p.1 := by
  refine ae_eq_of_forall_setLIntegral_eq_of_sigmaFinite (by fun_prop) (by fun_prop) fun s hs _ ↦ ?_
  have h_key t₁ t₂ : MeasurableSet t₁ → MeasurableSet t₂ →
      ∫⁻ x in t₁ ×ˢ t₂, (μ ⊗ₘ κ).rnDeriv (ν ⊗ₘ κ) x ∂ν ⊗ₘ κ =
        ∫⁻ x in t₁ ×ˢ t₂, μ.rnDeriv ν x.1 ∂ν ⊗ₘ κ := by
    intro ht₁ ht₂
    rw [Measure.setLIntegral_rnDeriv (hμν.compProd_left _),
      Measure.setLIntegral_compProd (by fun_prop) ht₁ ht₂]
    simp only [MeasureTheory.lintegral_const, MeasurableSet.univ, Measure.restrict_apply,
      univ_inter]
    rw [setLIntegral_rnDeriv_mul hμν (κ.measurable_coe ht₂).aemeasurable ht₁,
      Measure.compProd_apply_prod ht₁ ht₂]
  refine MeasurableSpace.induction_on_inter generateFrom_prod.symm isPiSystem_prod ?_ ?_ ?_ ?_ s hs
  · simp
  · rintro _ ⟨t₁, ht₁, t₂, ht₂, rfl⟩
    exact h_key t₁ t₂ ht₁ ht₂
  · intro t ht ht_eq
    rw [setLIntegral_compl ht, ht_eq, setLIntegral_compl ht]
    · congr 1
      specialize h_key .univ .univ .univ .univ
      simpa only [univ_prod_univ, Measure.restrict_univ] using h_key
    · rw [← ht_eq]
      exact ((Measure.setLIntegral_rnDeriv_le _).trans_lt (measure_lt_top _ _)).ne
    · exact ((Measure.setLIntegral_rnDeriv_le _).trans_lt (measure_lt_top _ _)).ne
  · intro f' hf_disj hf_meas hf_eq
    rw [lintegral_iUnion hf_meas hf_disj, lintegral_iUnion hf_meas hf_disj]
    congr with i
    exact hf_eq i

/-- Auxiliary lemma for `rnDeriv_measure_compProd_left`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc3f7e000f3f37b6a49cf35971591c7cb796a7fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
