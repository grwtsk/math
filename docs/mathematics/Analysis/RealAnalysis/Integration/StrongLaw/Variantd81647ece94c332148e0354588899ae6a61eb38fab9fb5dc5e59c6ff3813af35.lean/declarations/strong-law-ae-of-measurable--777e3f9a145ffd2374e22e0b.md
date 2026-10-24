# strong_law_ae_of_measurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e256183b589a60cc10d3cf314b7ccaeafcbef9dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 699,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d44b8f2-7958-7d2d-9f9a-ddaf559dfd81",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2337761f-1ea4-c28c-0511-fa1c6976ccc8",
  "kind": "lemma",
  "lexical_name": "strong_law_ae_of_measurable",
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
  "slug": "strong-law-ae-of-measurable--777e3f9a145ffd2374e22e0b",
  "source": {
    "blob": "e256183b589a60cc10d3cf314b7ccaeafcbef9dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 790,
    "line": 699,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:777e3f9a145ffd2374e22e0b9a0d7c58d189056935e6e4736c695a57b518f912",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2337761f-1ea4-c28c-0511-fa1c6976ccc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 699–790.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma strong_law_ae_of_measurable
    (X : ℕ → Ω → E) (hint : Integrable (X 0) μ) (h' : StronglyMeasurable (X 0))
    (hindep : Pairwise ((IndepFun · · μ) on X))
    (hident : ∀ i, IdentDistrib (X i) (X 0) μ μ) :
    ∀ᵐ ω ∂μ, Tendsto (fun n : ℕ ↦ (n : ℝ) ⁻¹ • (∑ i ∈ range n, X i ω)) atTop (𝓝 μ[X 0]) := by
  /- Choose a simple function `φ` such that `φ (X 0)` approximates well enough `X 0` -- this is
  possible as `X 0` is strongly measurable. Then `φ (X n)` approximates well `X n`.
  Then the strong law for `φ (X n)` implies the strong law for `X n`, up to a small
  error controlled by `n⁻¹ ∑_{i=0}^{n-1} ‖X i - φ (X i)‖`. This one is also controlled thanks
  to the one-dimensional law of large numbers: it converges ae to `𝔼[‖X 0 - φ (X 0)‖]`, which
  is arbitrarily small for well chosen `φ`. -/
  let s : Set E := Set.range (X 0) ∪ {0}
  have zero_s : 0 ∈ s := by simp [s]
  have : SeparableSpace s := h'.separableSpace_range_union_singleton
  have : Nonempty s := ⟨0, zero_s⟩
  -- sequence of approximating simple functions.
  let φ : ℕ → SimpleFunc E E :=
    SimpleFunc.nearestPt (fun k => Nat.casesOn k 0 ((↑) ∘ denseSeq s) : ℕ → E)
  let Y : ℕ → ℕ → Ω → E := fun k i ↦ (φ k) ∘ (X i)
  -- strong law for `φ (X n)`
  have A : ∀ᵐ ω ∂μ, ∀ k,
      Tendsto (fun n : ℕ ↦ (n : ℝ) ⁻¹ • (∑ i ∈ range n, Y k i ω)) atTop (𝓝 μ[Y k 0]) :=
    ae_all_iff.2 (fun k ↦ strong_law_ae_simpleFunc_comp X h'.measurable hindep hident (φ k))
  -- strong law for the error `‖X i - φ (X i)‖`
  have B : ∀ᵐ ω ∂μ, ∀ k, Tendsto (fun n : ℕ ↦ (∑ i ∈ range n, ‖(X i - Y k i) ω‖) / n)
        atTop (𝓝 μ[(fun ω ↦ ‖(X 0 - Y k 0) ω‖)]) := by
    apply ae_all_iff.2 (fun k ↦ ?_)
    let G : ℕ → E → ℝ := fun k x ↦ ‖x - φ k x‖
    have G_meas : ∀ k, Measurable (G k) :=
      fun k ↦ (measurable_id.sub_stronglyMeasurable (φ k).stronglyMeasurable).norm
    have I : ∀ k i, (fun ω ↦ ‖(X i - Y k i) ω‖) = (G k) ∘ (X i) := fun k i ↦ rfl
    apply strong_law_ae_real (fun i ω ↦ ‖(X i - Y k i) ω‖)
    · exact (hint.sub ((φ k).comp (X 0) h'.measurable).integrable_of_isFiniteMeasure).norm
    · unfold Function.onFun
      simp_rw [I]
      intro i j hij
      exact (hindep hij).comp (G_meas k) (G_meas k)
    · intro i
      simp_rw [I]
      apply (hident i).comp (G_meas k)
  -- check that, when both convergences above hold, then the strong law is satisfied
  filter_upwards [A, B] with ω hω h'ω
  rw [tendsto_iff_norm_sub_tendsto_zero, tendsto_order]
  refine ⟨fun c hc ↦ Eventually.of_forall (fun n ↦ hc.trans_le (norm_nonneg _)), ?_⟩
  -- start with some positive `ε` (the desired precision), and fix `δ` with `3 δ < ε`.
  intro ε (εpos : 0 < ε)
  obtain ⟨δ, δpos, hδ⟩ : ∃ δ, 0 < δ ∧ δ + δ + δ < ε := ⟨ε/4, by positivity, by linarith⟩
  -- choose `k` large enough so that `φₖ (X 0)` approximates well enough `X 0`, up to the
  -- precision `δ`.
  obtain ⟨k, hk⟩ : ∃ k, ∫ ω, ‖(X 0 - Y k 0) ω‖ ∂μ < δ := by
    simp_rw [Pi.sub_apply, norm_sub_rev (X 0 _)]
    exact ((tendsto_order.1 (tendsto_integral_norm_approxOn_sub h'.measurable hint)).2 δ
      δpos).exists
  have : ‖μ[Y k 0] - μ[X 0]‖ < δ := by
    rw [norm_sub_rev, ← integral_sub hint]
    · exact (norm_integral_le_integral_norm _).trans_lt hk
    · exact ((φ k).comp (X 0) h'.measurable).integrable_of_isFiniteMeasure
  -- consider `n` large enough for which the above convergences have taken place within `δ`.
  have I : ∀ᶠ n in atTop, (∑ i ∈ range n, ‖(X i - Y k i) ω‖) / n < δ :=
    (tendsto_order.1 (h'ω k)).2 δ hk
  have J : ∀ᶠ (n : ℕ) in atTop, ‖(n : ℝ) ⁻¹ • (∑ i ∈ range n, Y k i ω) - μ[Y k 0]‖ < δ := by
    specialize hω k
    rw [tendsto_iff_norm_sub_tendsto_zero] at hω
    exact (tendsto_order.1 hω).2 δ δpos
  filter_upwards [I, J] with n hn h'n
  -- at such an `n`, the strong law is realized up to `ε`.
  calc
  ‖(n : ℝ)⁻¹ • ∑ i ∈ Finset.range n, X i ω - μ[X 0]‖
    = ‖(n : ℝ)⁻¹ • ∑ i ∈ Finset.range n, (X i ω - Y k i ω) +
        ((n : ℝ)⁻¹ • ∑ i ∈ Finset.range n, Y k i ω - μ[Y k 0]) + (μ[Y k 0] - μ[X 0])‖ := by
      congr
      simp only [Function.comp_apply, sum_sub_distrib, smul_sub]
      abel
  _ ≤ ‖(n : ℝ)⁻¹ • ∑ i ∈ Finset.range n, (X i ω - Y k i ω)‖ +
        ‖(n : ℝ)⁻¹ • ∑ i ∈ Finset.range n, Y k i ω - μ[Y k 0]‖ + ‖μ[Y k 0] - μ[X 0]‖ :=
      norm_add₃_le
  _ ≤ (∑ i ∈ Finset.range n, ‖X i ω - Y k i ω‖) / n + δ + δ := by
      gcongr
      simp only [Function.comp_apply, norm_smul, norm_inv, RCLike.norm_natCast,
        div_eq_inv_mul, inv_pos, Nat.cast_pos, inv_lt_zero]
      gcongr
      exact norm_sum_le _ _
  _ ≤ δ + δ + δ := by
      gcongr
      exact hn.le
  _ < ε := hδ

omit [IsProbabilityMeasure μ] in
/-- **Strong law of large numbers**, almost sure version: if `X n` is a sequence of independent
identically distributed integrable random variables taking values in a Banach space,
then `n⁻¹ • ∑ i ∈ range n, X i` converges almost surely to `𝔼[X 0]`. We give here the strong
version, due to Etemadi, that only requires pairwise independence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean#L699).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e256183b589a60cc10d3cf314b7ccaeafcbef9dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
