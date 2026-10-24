# correlation_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e34dfb74ec0d1e00e44f6bb7bc8929b5563a65c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e468a1694d5160c3005bc6226eb88190f979f607f1682e0058ee54c4cf139bb9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:66787eb4-fd9c-dc2e-f084-97b0d58c5dc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a1f072a-065d-4831-0312-0f56d28bab40",
  "kind": "theorem",
  "lexical_name": "correlation_tendsto",
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
  "slug": "correlation-tendsto--c48c5bbd08b192c4730c6d18",
  "source": {
    "blob": "7e34dfb74ec0d1e00e44f6bb7bc8929b5563a65c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 115,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variante468a1694d5160c3005bc6226eb88190f979f607f1682e0058ee54c4cf139bb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c48c5bbd08b192c4730c6d18edcae13e440811b8b2366034e99b80fe362fba70",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variante468a1694d5160c3005bc6226eb88190f979f607f1682e0058ee54c4cf139bb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a1f072a-065d-4831-0312-0f56d28bab40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correlation_tendsto {ι : Type*} {l : Filter ι} [l.IsCountablyGenerated]
    (A t : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ ∫ x, smoothedTest A (ε i) (hε i) x *
      smoothedTest A (ε i) (hε i) (x - t)) l
      (𝓝 (∫ x, actualTest A x * actualTest A (x - t))) := by
  obtain ⟨M, hM, _, hsm⟩ := exists_common_bound A hA
  let bound : ℝ → ℝ := (Icc (-A - 1) (A + 1)).indicator (fun _ ↦ M * M)
  have hb : Integrable bound volume :=
    (continuous_const.integrableOn_Icc).integrable_indicator measurableSet_Icc
  have hsmall : ∀ᶠ i in l, ε i ≤ 1 :=
    ((tendsto_order.1 hlim).2 1 (by norm_num)).mono fun _ h ↦ h.le
  have hmeas : ∀ᶠ i in l, AEStronglyMeasurable (fun x ↦
      smoothedTest A (ε i) (hε i) x * smoothedTest A (ε i) (hε i) (x - t)) volume :=
    Eventually.of_forall fun i ↦ (smoothed_correlation_integrable A (ε i) t hA (hε i)).1
  have hdom : ∀ᶠ i in l, ∀ᵐ x ∂volume,
      ‖smoothedTest A (ε i) (hε i) x * smoothedTest A (ε i) (hε i) (x - t)‖ ≤ bound x := by
    filter_upwards [hsmall] with i hi
    exact Eventually.of_forall fun x ↦ by
      by_cases hx : x ∈ Icc (-A - 1) (A + 1)
      · simp only [bound, indicator_of_mem hx, norm_mul]
        exact mul_le_mul (hsm (ε i) (hε i) x) (hsm (ε i) (hε i) (x - t))
          (norm_nonneg _) hM
      · rw [smoothedTest_zero_outside_common A (ε i) hA (hε i) hi x hx,
          zero_mul, norm_zero]
        simp only [bound, indicator_of_notMem hx, le_refl]
  have hpoint : ∀ᵐ x ∂volume,
      Tendsto (fun i ↦ smoothedTest A (ε i) (hε i) x *
        smoothedTest A (ε i) (hε i) (x - t)) l
        (𝓝 (actualTest A x * actualTest A (x - t))) :=
    Eventually.of_forall fun x ↦
      (smoothedTest_tendsto A hA ε hε hlim x).mul
        (smoothedTest_tendsto A hA ε hε hlim (x - t))
  exact tendsto_integral_filter_of_dominated_convergence bound hmeas hdom hb hpoint

/-- The source pole term keeps both signed exponential moments and its exact factor two. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variante468a1694d5160c3005bc6226eb88190f979f607f1682e0058ee54c4cf139bb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variante468a1694d5160c3005bc6226eb88190f979f607f1682e0058ee54c4cf139bb9.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e34dfb74ec0d1e00e44f6bb7bc8929b5563a65c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
