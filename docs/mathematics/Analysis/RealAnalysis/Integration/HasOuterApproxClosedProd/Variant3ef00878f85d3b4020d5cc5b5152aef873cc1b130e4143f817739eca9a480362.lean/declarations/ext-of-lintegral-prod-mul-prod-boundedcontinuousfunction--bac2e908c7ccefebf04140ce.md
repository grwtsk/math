# ext_of_lintegral_prod_mul_prod_boundedContinuousFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb8f558a-2842-e983-dccf-18b88bf81ed3",
  "kind": "lemma",
  "lexical_name": "ext_of_lintegral_prod_mul_prod_boundedContinuousFunction",
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
  "slug": "ext-of-lintegral-prod-mul-prod-boundedcontinuousfunction--bac2e908c7ccefebf04140ce",
  "source": {
    "blob": "3c3c1aa30acb951e34c19d1bcf8000ad38599457",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bac2e908c7ccefebf04140ce6248ea2adb09baea2b8bd1d87aa9630ab16525c4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb8f558a-2842-e983-dccf-18b88bf81ed3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ext_of_lintegral_prod_mul_prod_boundedContinuousFunction
    {μ ν : Measure ((Π i, X i) × (Π j, Y j))} [IsFiniteMeasure μ]
    (h : ∀ (f : (i : ι) → X i →ᵇ ℝ≥0) (g : (j : κ) → Y j →ᵇ ℝ≥0),
      ∫⁻ p, (∏ i, f i (p.1 i)) * ∏ j, g j (p.2 j) ∂μ =
      ∫⁻ p, (∏ i, f i (p.1 i)) * ∏ j, g j (p.2 j) ∂ν) :
    μ = ν := by
  have hμν : μ univ = ν univ := by convert! h 1 1 <;> simp
  have : IsFiniteMeasure ν := ⟨by simp [← hμν]⟩
  let π : Set (Set ((Π i, X i) × (Π j, Y j))) :=
    Set.image2 (fun s t ↦ s ×ˢ t) (Set.univ.pi '' (Set.univ.pi fun _ ↦ {s | IsClosed s}))
      (Set.univ.pi '' (Set.univ.pi fun _ ↦ {t | IsClosed t}))
  have hπ1 : IsPiSystem π := by
    rintro - ⟨-, ⟨s₁, hs₁, rfl⟩, -, ⟨t₁, ht₁, rfl⟩, rfl⟩ -
      ⟨-, ⟨s₂, hs₂, rfl⟩, -, ⟨t₂, ht₂, rfl⟩, rfl⟩ -
    refine ⟨_, ⟨fun i ↦ s₁ i ∩ s₂ i, ?_, rfl⟩, _, ⟨fun j ↦ t₁ j ∩ t₂ j, ?_, rfl⟩, ?_⟩
    · simp only [Set.mem_pi, mem_univ, mem_ofPred_eq, forall_const] at hs₁ hs₂ ⊢
      exact fun i ↦ (hs₁ i).inter (hs₂ i)
    · simp only [Set.mem_pi, mem_univ, mem_ofPred_eq, forall_const] at ht₁ ht₂ ⊢
      exact fun j ↦ (ht₁ j).inter (ht₂ j)
    simp [Set.pi_inter_distrib, Set.prod_inter_prod]
  have hπ2 : Prod.instMeasurableSpace = generateFrom π := by
    rw [← generateFrom_eq_prod (C := Set.univ.pi '' (Set.univ.pi fun _ ↦ {s | IsClosed s}))
      (D := Set.univ.pi '' (Set.univ.pi fun _ ↦ {t | IsClosed t}))]
    · rw [← generateFrom_eq_pi (C := fun _ ↦ {s | IsClosed s})]
      · simp [BorelSpace.measurable_eq, borel_eq_generateFrom_isClosed]
      · exact fun _ ↦ ⟨fun _ ↦ Set.univ, fun _ ↦ isClosed_univ, iUnion_const _⟩
    · rw [← generateFrom_eq_pi (C := fun _ ↦ {t | IsClosed t})]
      · simp [BorelSpace.measurable_eq, borel_eq_generateFrom_isClosed]
      · exact fun _ ↦ ⟨fun _ ↦ Set.univ, fun _ ↦ isClosed_univ, iUnion_const _⟩
    · exact ⟨fun _ ↦ Set.univ, fun _ ↦ ⟨fun _ ↦ Set.univ, by simp, by simp⟩, iUnion_const _⟩
    · exact ⟨fun _ ↦ Set.univ, fun _ ↦ ⟨fun _ ↦ Set.univ, by simp, by simp⟩, iUnion_const _⟩
  refine ext_of_generate_finite π hπ2 hπ1 ?_ hμν
  rintro - ⟨-, ⟨s, hs, rfl⟩, -, ⟨t, ht, rfl⟩, rfl⟩
  simp only [Set.mem_pi, mem_univ, mem_ofPred_eq, forall_const] at hs ht
  have (p : (Π i, X i) × (Π j, Y j)) := ENNReal.continuous_coe.tendsto _ |>.comp <|
    (tendsto_finsetProd Finset.univ (fun i _ ↦ tendsto_pi_nhds.1
      (HasOuterApproxClosed.tendsto_apprSeq (hs i)) (p.1 i))).mul
    (tendsto_finsetProd Finset.univ (fun j _ ↦ tendsto_pi_nhds.1
      (HasOuterApproxClosed.tendsto_apprSeq (ht j)) (p.2 j)))
  have hp1 (x : Π i, X i) : ∏ i, (s i).indicator (fun _ ↦ (1 : ℝ≥0)) (x i) =
      (Set.univ.pi s).indicator 1 x := by
    simp only [Set.indicator, Set.mem_pi, mem_univ, forall_const, Pi.ofNat_apply]
    split_ifs with hy
    · simp only [Set.mem_pi, mem_univ, forall_const] at hy
      exact Finset.prod_eq_one (by simpa)
    · simpa [Finset.prod_eq_zero_iff] using hy
  have hp2 (y : Π j, Y j) : ∏ j, (t j).indicator (fun _ ↦ (1 : ℝ≥0)) (y j) =
      (Set.univ.pi t).indicator 1 y := by
    simp only [Set.indicator, Set.mem_pi, mem_univ, forall_const, Pi.ofNat_apply]
    split_ifs with hy
    · simp only [Set.mem_pi, mem_univ, forall_const] at hy
      exact Finset.prod_eq_one (by simpa)
    · simpa [Finset.prod_eq_zero_iff] using hy
  simp_rw [hp1, hp2, ← Set.indicator_prod_one, Prod.eta] at this
  have h1 : Tendsto (fun n ↦ ∫⁻ p, ((∏ i, (hs i).apprSeq n (p.1 i)) *
        ∏ j, (ht j).apprSeq n (p.2 j) : ℝ≥0) ∂μ)
      atTop (𝓝 (∫⁻ p, (((Set.univ.pi s) ×ˢ (Set.univ.pi t)).indicator 1 p : ℝ≥0) ∂μ)) := by
    refine tendsto_lintegral_filter_of_dominated_convergence 1
      (Eventually.of_forall <| by fun_prop) (Eventually.of_forall fun n ↦ ae_of_all _ fun ω ↦ ?_)
      (by simp) (ae_of_all _ this)
    grw [Finset.prod_le_one₀ (by simp), Finset.prod_le_one₀ (by simp)]
    · simp
    · exact fun j _ ↦ HasOuterApproxClosed.apprSeq_apply_le_one (ht j) _ _
    · exact fun i _ ↦ HasOuterApproxClosed.apprSeq_apply_le_one (hs i) _ _
  have h2 : Tendsto (fun n ↦ ∫⁻ p, ((∏ i, (hs i).apprSeq n (p.1 i)) *
        ∏ j, (ht j).apprSeq n (p.2 j) : ℝ≥0) ∂μ)
      atTop (𝓝 (∫⁻ p, (((Set.univ.pi s) ×ˢ (Set.univ.pi t)).indicator 1 p : ℝ≥0) ∂ν)) := by
    simp_rw [coe_mul, h]
    refine tendsto_lintegral_filter_of_dominated_convergence 1
      (Eventually.of_forall <| by fun_prop) (Eventually.of_forall fun _ ↦ ae_of_all _ fun _ ↦ ?_)
      (by simp) (ae_of_all _ this)
    grw [Finset.prod_le_one₀ (by simp), Finset.prod_le_one₀ (by simp)]
    · simp
    · exact fun j _ ↦ HasOuterApproxClosed.apprSeq_apply_le_one (ht j) _ _
    · exact fun i _ ↦ HasOuterApproxClosed.apprSeq_apply_le_one (hs i) _ _
  convert! tendsto_nhds_unique h1 h2 <;>
    simp [(MeasurableSet.univ_pi (fun i ↦ (hs i).measurableSet)).prod
      (.univ_pi (fun j ↦ (ht j).measurableSet))]

/-- A finite measure `μ` over `(Π i, X i) × (Π j, Y j)` is determined by the values
`∫ p, (Π i, f i (p.1 i)) * (Π j, g j (p.2 j)) ∂μ`, for `f : (i : ι) → X i → ℝ`
and `g : (j : κ) → Y j → ℝ` any families of bounded continuous functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c3c1aa30acb951e34c19d1bcf8000ad38599457` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
