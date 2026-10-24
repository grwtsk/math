# iCondIndepSets_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d8ee3b9-2d04-9d2d-a1e5-d3624291c5d0",
  "kind": "lemma",
  "lexical_name": "iCondIndepSets_iff",
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
  "slug": "icondindepsets-iff--7a181e1ef3cb21eee6370423",
  "source": {
    "blob": "bba1f952f5c27b2c95bc2c9689fae0e7ad2ff3fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 159,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variantb947ad24b08f51698986c4ec9787127d943d3deca28a7c238ddb102428d98cce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a181e1ef3cb21eee63704238a43a43f9abcc409516940161d1ee90768a61172",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variantb947ad24b08f51698986c4ec9787127d943d3deca28a7c238ddb102428d98cce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d8ee3b9-2d04-9d2d-a1e5-d3624291c5d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iCondIndepSets_iff (π : ι → Set (Set Ω)) (hπ : ∀ i s (_hs : s ∈ π i), MeasurableSet s)
    (μ : Measure Ω) [IsFiniteMeasure μ] :
    iCondIndepSets m' hm' π μ ↔ ∀ (s : Finset ι) {f : ι → Set Ω} (_H : ∀ i, i ∈ s → f i ∈ π i),
      μ⟦⋂ i ∈ s, f i | m'⟧ =ᵐ[μ] ∏ i ∈ s, (μ⟦f i | m'⟧) := by
  simp only [iCondIndepSets, Kernel.iIndepSets]
  have h_eq' : ∀ (s : Finset ι) (f : ι → Set Ω) (_H : ∀ i, i ∈ s → f i ∈ π i) i (_hi : i ∈ s),
      (fun ω ↦ ENNReal.toReal (condExpKernel μ m' ω (f i))) =ᵐ[μ] μ⟦f i | m'⟧ :=
    fun s f H i hi ↦ condExpKernel_ae_eq_condExp hm' (hπ i (f i) (H i hi))
  have h_eq : ∀ (s : Finset ι) (f : ι → Set Ω) (_H : ∀ i, i ∈ s → f i ∈ π i), ∀ᵐ ω ∂μ,
      ∀ i ∈ s, ENNReal.toReal (condExpKernel μ m' ω (f i)) = (μ⟦f i | m'⟧) ω := by
    intros s f H
    simp_rw [← Finset.mem_coe]
    rw [ae_ball_iff (Finset.countable_toSet s)]
    exact h_eq' s f H
  have h_inter_eq : ∀ (s : Finset ι) (f : ι → Set Ω) (_H : ∀ i, i ∈ s → f i ∈ π i),
      (fun ω ↦ ENNReal.toReal (condExpKernel μ m' ω (⋂ i ∈ s, f i)))
        =ᵐ[μ] μ⟦⋂ i ∈ s, f i | m'⟧ := by
    refine fun s f H ↦ condExpKernel_ae_eq_condExp hm' ?_
    exact MeasurableSet.biInter (Finset.countable_toSet _) (fun i hi ↦ hπ i _ (H i hi))
  refine ⟨fun h s f hf ↦ ?_, fun h s f hf ↦ ?_⟩ <;> specialize h s hf
  · have h' := ae_eq_of_ae_eq_trim h
    filter_upwards [h_eq s f hf, h_inter_eq s f hf, h'] with ω h_eq h_inter_eq h'
    rw [← h_inter_eq, h', ENNReal.toReal_prod, Finset.prod_apply]
    exact Finset.prod_congr rfl h_eq
  · refine ((stronglyMeasurable_condExpKernel ?_).ae_eq_trim_iff hm' ?_).mpr ?_
    · exact .biInter (Finset.countable_toSet _) (fun i hi ↦ hπ i _ (hf i hi))
    · refine Measurable.stronglyMeasurable ?_
      exact Finset.measurable_prod s (fun i hi ↦ measurable_condExpKernel (hπ i _ (hf i hi)))
    filter_upwards [h_eq s f hf, h_inter_eq s f hf, h] with ω h_eq h_inter_eq h
    have h_ne_top : condExpKernel μ m' ω (⋂ i ∈ s, f i) ≠ ∞ :=
      (measure_ne_top (condExpKernel μ m' ω) _)
    have : (∏ i ∈ s, condExpKernel μ m' ω (f i)) ≠ ∞ :=
      ENNReal.prod_ne_top fun _ _ ↦ measure_ne_top (condExpKernel μ m' ω) _
    rw [← ENNReal.ofReal_toReal h_ne_top, h_inter_eq, h, Finset.prod_apply,
      ← ENNReal.ofReal_toReal this, ENNReal.toReal_prod]
    congr 1
    exact Finset.prod_congr rfl (fun i hi ↦ (h_eq i hi).symm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variantb947ad24b08f51698986c4ec9787127d943d3deca28a7c238ddb102428d98cce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variantb947ad24b08f51698986c4ec9787127d943d3deca28a7c238ddb102428d98cce.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bba1f952f5c27b2c95bc2c9689fae0e7ad2ff3fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
