# tendsto_setIntegral_peak_smul_of_integrableOn_of_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab8982e7216adf6847d69ac4237916b9c28b1efb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f87f15e9-522d-98ed-e2ea-17311a54f0bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b24376c0-79e4-94bd-85f4-94f94bcdcc8b",
  "kind": "theorem",
  "lexical_name": "tendsto_setIntegral_peak_smul_of_integrableOn_of_tendsto",
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
  "slug": "tendsto-setintegral-peak-smul-of-integrableon-of-tendsto--1fb3515ca7710d7d04b8bc21",
  "source": {
    "blob": "ab8982e7216adf6847d69ac4237916b9c28b1efb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 180,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fb3515ca7710d7d04b8bc21e9a74f68c55400b5b0baa86670c6b5e6372183a3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b24376c0-79e4-94bd-85f4-94f94bcdcc8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_setIntegral_peak_smul_of_integrableOn_of_tendsto
    (hs : MeasurableSet s) {t : Set α} (ht : MeasurableSet t) (hts : t ⊆ s) (h'ts : t ∈ 𝓝[s] x₀)
    (h't : μ t ≠ ∞) (hnφ : ∀ᶠ i in l, ∀ x ∈ s, 0 ≤ φ i x)
    (hlφ : ∀ u : Set α, IsOpen u → x₀ ∈ u → TendstoUniformlyOn φ 0 l (s \ u))
    (hiφ : Tendsto (fun i ↦ ∫ x in t, φ i x ∂μ) l (𝓝 1))
    (h'iφ : ∀ᶠ i in l, AEStronglyMeasurable (φ i) (μ.restrict s))
    (hmg : IntegrableOn g s μ) (hcg : Tendsto g (𝓝[s] x₀) (𝓝 a)) :
    Tendsto (fun i : ι ↦ ∫ x in s, φ i x • g x ∂μ) l (𝓝 a) := by
  let h := g - t.indicator (fun _ ↦ a)
  have A : Tendsto (fun i : ι => (∫ x in s, φ i x • h x ∂μ) + (∫ x in t, φ i x ∂μ) • a) l
      (𝓝 (0 + (1 : ℝ) • a)) := by
    refine Tendsto.add ?_ (Tendsto.smul hiφ tendsto_const_nhds)
    apply tendsto_setIntegral_peak_smul_of_integrableOn_of_tendsto_aux hs ht hts h'ts
        hnφ hlφ hiφ h'iφ
    · apply hmg.sub
      simp only [integrable_indicator_iff ht, integrableOn_const_iff (C := a), ht,
        Measure.restrict_apply]
      right
      exact lt_of_le_of_lt (measure_mono inter_subset_left) (h't.lt_top)
    · rw [← sub_self a]
      apply Tendsto.sub hcg
      apply tendsto_const_nhds.congr'
      filter_upwards [h'ts] with x hx using by simp [hx]
  simp only [one_smul, zero_add] at A
  refine Tendsto.congr' ?_ A
  filter_upwards [integrableOn_peak_smul_of_integrableOn_of_tendsto hs h'ts
    hlφ hiφ h'iφ hmg hcg,
    (tendsto_order.1 (tendsto_iff_norm_sub_tendsto_zero.1 hiφ)).2 1 zero_lt_one] with i hi h'i
  simp only [h, Pi.sub_apply, smul_sub, ← indicator_smul_apply]
  rw [integral_sub hi, setIntegral_indicator ht, inter_eq_right.mpr hts,
    integral_smul_const, sub_add_cancel]
  rw [integrable_indicator_iff ht]
  apply Integrable.smul_const
  rw [restrict_restrict ht, inter_eq_left.mpr hts]
  exact .of_integral_ne_zero (fun h ↦ by simp [h] at h'i)

/-- If a sequence of peak functions `φᵢ` converges uniformly to zero away from a point `x₀` and its
integral on some finite-measure neighborhood of `x₀` converges to `1`, and `g` is integrable and
has a limit `a` at `x₀`, then `∫ φᵢ • g` converges to `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab8982e7216adf6847d69ac4237916b9c28b1efb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
