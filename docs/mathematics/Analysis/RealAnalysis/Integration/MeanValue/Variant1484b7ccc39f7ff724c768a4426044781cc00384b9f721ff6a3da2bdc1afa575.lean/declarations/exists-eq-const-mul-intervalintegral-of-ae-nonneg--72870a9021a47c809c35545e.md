# exists_eq_const_mul_intervalIntegral_of_ae_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83f76854f395101a58b1e7548f09b17ebf3b6928",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/1484b7ccc39f7ff724c768a4426044781cc00384b9f721ff6a3da2bdc1afa575.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2e1f251-9e31-fa39-1beb-0445a55967ee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a53cf8ab-a82b-535a-ca6b-bd3d3d2692b6",
  "kind": "theorem",
  "lexical_name": "exists_eq_const_mul_intervalIntegral_of_ae_nonneg",
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
  "slug": "exists-eq-const-mul-intervalintegral-of-ae-nonneg--72870a9021a47c809c35545e",
  "source": {
    "blob": "83f76854f395101a58b1e7548f09b17ebf3b6928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 72,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanValue/Variant1484b7ccc39f7ff724c768a4426044781cc00384b9f721ff6a3da2bdc1afa575.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72870a9021a47c809c35545ea9d81c41144700b74b85b9ea382ba18b29881733",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MeanValue/Variant1484b7ccc39f7ff724c768a4426044781cc00384b9f721ff6a3da2bdc1afa575.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a53cf8ab-a82b-535a-ca6b-bd3d3d2692b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_const_mul_intervalIntegral_of_ae_nonneg
    (hf : ContinuousOn f (uIcc a b)) (hg : IntervalIntegrable g μ a b)
    (hg0 : ∀ᵐ x ∂(μ.restrict (Ι a b)), 0 ≤ g x) :
    ∃ c ∈ uIcc a b, (∫ x in a..b, f x * g x ∂μ) = f c * (∫ x in a..b, g x ∂μ) := by
  by_cases h : a = b
  · subst h
    exact ⟨a, by simp, by simp⟩
  wlog hab : a < b generalizing a b
  · simp only [not_lt] at hab
    obtain ⟨c, c_in_uIcc, that⟩ :=
      this (by rwa [uIcc_comm]) hg.symm (by rwa [uIoc_comm]) (by lia) (lt_of_le_of_ne' hab h)
    exact ⟨c, by rwa [uIcc_comm], by simpa [integral_symm b a]⟩
  let s := Ι a b
  have hs : s = Ioc a b := uIoc_of_le hab.le
  have hs' : s ⊆ [[a, b]] := uIoc_subset_uIcc
  have hs_conn : IsConnected s := by simpa [hs] using isConnected_Ioc hab
  have hfg : IntegrableOn (fun x ↦ f x * g x) s μ := by
    rw [← intervalIntegrable_iff]
    exact hg.continuousOn_smul hf
  obtain ⟨c, hc, h⟩ := exists_eq_const_mul_setIntegral_of_ae_nonneg
    hs_conn measurableSet_uIoc (hf.mono hs') (by rwa [← intervalIntegrable_iff]) hfg hg0
  have h' : ∫ (x : ℝ) in a..b, f x * g x ∂μ = f c * ∫ (x : ℝ) in a..b, g x ∂μ := by
    simpa [intervalIntegral.integral_of_le hab.le, hs] using h
  exact ⟨c, mem_of_subset_of_mem hs' hc, h'⟩

/-- **First mean value theorem for interval integrals (arbitrary measure, nonnegativity).**
Let `f g : ℝ → ℝ` and let `μ` be a measure on `ℝ`. Assume that `f` is continuous on `uIcc a b`,
that `g` is interval integrable on `a..b` w.r.t. `μ`, and that `g ≥ 0` on `Ι a b`. Then
`∃ c ∈ uIcc a b, (∫ x in a..b, f x * g x ∂μ) = f c * (∫ x in a..b, g x ∂μ)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeanValue/Variant1484b7ccc39f7ff724c768a4426044781cc00384b9f721ff6a3da2bdc1afa575.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeanValue/Variant1484b7ccc39f7ff724c768a4426044781cc00384b9f721ff6a3da2bdc1afa575.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83f76854f395101a58b1e7548f09b17ebf3b6928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
