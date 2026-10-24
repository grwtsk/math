# strong_law_Lp

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
      "line": 835,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1da5b5b3-dc88-92af-ab15-9973ffb72db2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:699bcef0-d1e4-0063-19e9-3364b29c9eb5",
  "kind": "theorem",
  "lexical_name": "strong_law_Lp",
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
  "slug": "strong-law-lp--ecaea8b722e5ec238681505b",
  "source": {
    "blob": "e256183b589a60cc10d3cf314b7ccaeafcbef9dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 873,
    "line": 835,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecaea8b722e5ec238681505b19809c3512fe56a91088aa1e64db8a2be4d04bc8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:699bcef0-d1e4-0063-19e9-3364b29c9eb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 835–873.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strong_law_Lp {p : ℝ≥0∞} (hp : 1 ≤ p) (hp' : p ≠ ∞) (X : ℕ → Ω → E)
    (hℒp : MemLp (X 0) p μ) (hindep : Pairwise ((IndepFun · · μ) on X))
    (hident : ∀ i, IdentDistrib (X i) (X 0) μ μ) :
    Tendsto (fun (n : ℕ) => eLpNorm (fun ω => (n : ℝ) ⁻¹ • (∑ i ∈ range n, X i ω) - μ[X 0]) p μ)
      atTop (𝓝 0) := by
  -- First exclude the trivial case where the space is not a probability space
  by_cases h : ∀ᵐ ω ∂μ, X 0 ω = 0
  · have I : ∀ᵐ ω ∂μ, ∀ i, X i ω = 0 := by
      rw [ae_all_iff]
      intro i
      exact (hident i).symm.ae_snd (p := fun x ↦ x = 0) measurableSet_eq h
    have A (n : ℕ) : eLpNorm (fun ω => (n : ℝ) ⁻¹ • (∑ i ∈ range n, X i ω) - μ[X 0]) p μ = 0 := by
      simp only [integral_eq_zero_of_ae h, sub_zero]
      apply eLpNorm_eq_zero_of_ae_zero
      filter_upwards [I] with ω hω
      simp [hω]
    simp [A]
  -- Then use ae convergence and uniform integrability
  have : IsProbabilityMeasure μ := MemLp.isProbabilityMeasure_of_indepFun
    (X 0) (X 1) (zero_lt_one.trans_le hp).ne' hp' hℒp h (hindep zero_ne_one)
  have hmeas : ∀ i, AEStronglyMeasurable (X i) μ := fun i =>
    (hident i).aestronglyMeasurable_iff.2 hℒp.1
  have hint : Integrable (X 0) μ := hℒp.integrable hp
  have havg (n : ℕ) :
      AEStronglyMeasurable (fun ω => (n : ℝ) ⁻¹ • (∑ i ∈ range n, X i ω)) μ :=
    AEStronglyMeasurable.const_smul (aestronglyMeasurable_sum _ fun i _ => hmeas i) _
  refine tendsto_Lp_finite_of_tendstoInMeasure hp hp' havg (memLp_const _) ?_
    (tendstoInMeasure_of_tendsto_ae havg (strong_law_ae _ hint hindep hident))
  rw [(_ : (fun (n : ℕ) ω => (n : ℝ)⁻¹ • (∑ i ∈ range n, X i ω))
            = fun (n : ℕ) => (n : ℝ)⁻¹ • (∑ i ∈ range n, X i))]
  · apply UniformIntegrable.unifIntegrable
    apply uniformIntegrable_average hp
    exact MemLp.uniformIntegrable_of_identDistrib hp hp' hℒp hident
  · ext n ω
    simp only [Pi.smul_apply, sum_apply]

end StrongLawLp

end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean#L835).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e256183b589a60cc10d3cf314b7ccaeafcbef9dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
