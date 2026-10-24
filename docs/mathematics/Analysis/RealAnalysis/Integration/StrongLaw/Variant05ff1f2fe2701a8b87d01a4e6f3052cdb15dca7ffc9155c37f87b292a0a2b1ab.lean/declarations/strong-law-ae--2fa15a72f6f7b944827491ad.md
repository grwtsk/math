# strong_law_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d858b05-3c5b-f597-24d5-f92d05caacd7",
  "kind": "theorem",
  "lexical_name": "strong_law_ae",
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
  "slug": "strong-law-ae--2fa15a72f6f7b944827491ad",
  "source": {
    "blob": "75edee7b051894fc44e7af8c065abb43350e2c2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 842,
    "line": 799,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fa15a72f6f7b944827491ad77e41d98a1619a01120b55008b0d29d994996488",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d858b05-3c5b-f597-24d5-f92d05caacd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 799–842.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strong_law_ae (X : ℕ → Ω → E) (hint : Integrable (X 0) μ)
    (hindep : Pairwise ((IndepFun · · μ) on X))
    (hident : ∀ i, IdentDistrib (X i) (X 0) μ μ) :
    ∀ᵐ ω ∂μ, Tendsto (fun n : ℕ ↦ (n : ℝ) ⁻¹ • (∑ i ∈ range n, X i ω)) atTop (𝓝 μ[X 0]) := by
  -- First exclude the trivial case where the space is not a probability space
  by_cases h : ∀ᵐ ω ∂μ, X 0 ω = 0
  · have I : ∀ᵐ ω ∂μ, ∀ i, X i ω = 0 := by
      rw [ae_all_iff]
      intro i
      exact (hident i).symm.ae_snd (p := fun x ↦ x = 0) measurableSet_eq h
    filter_upwards [I] with ω hω
    simpa [hω] using (integral_eq_zero_of_ae h).symm
  have : IsProbabilityMeasure μ :=
    hint.isProbabilityMeasure_of_indepFun (X 0) (X 1) h (hindep zero_ne_one)
  -- we reduce to the case of strongly measurable random variables, by using `Y i` which is strongly
  -- measurable and ae equal to `X i`.
  have A : ∀ i, Integrable (X i) μ := fun i ↦ (hident i).integrable_iff.2 hint
  let Y : ℕ → Ω → E := fun i ↦ (A i).1.mk (X i)
  have B : ∀ᵐ ω ∂μ, ∀ n, X n ω = Y n ω :=
    ae_all_iff.2 (fun i ↦ AEStronglyMeasurable.ae_eq_mk (A i).1)
  have Yint : Integrable (Y 0) μ := Integrable.congr hint (AEStronglyMeasurable.ae_eq_mk (A 0).1)
  have C : ∀ᵐ ω ∂μ,
      Tendsto (fun n : ℕ ↦ (n : ℝ) ⁻¹ • (∑ i ∈ range n, Y i ω)) atTop (𝓝 μ[Y 0]) := by
    apply strong_law_ae_of_measurable Y Yint ((A 0).1.stronglyMeasurable_mk)
      (fun i j hij ↦ IndepFun.congr (hindep hij) (A i).1.ae_eq_mk (A j).1.ae_eq_mk)
      (fun i ↦ ((A i).1.identDistrib_mk.symm.trans (hident i)).trans (A 0).1.identDistrib_mk)
  filter_upwards [B, C] with ω h₁ h₂
  have : μ[X 0] = μ[Y 0] := integral_congr_ae (AEStronglyMeasurable.ae_eq_mk (A 0).1)
  rw [this]
  apply Tendsto.congr (fun n ↦ ?_) h₂
  congr with i
  exact (h₁ i).symm

end StrongLawVectorSpace

section StrongLawLp

variable {Ω : Type*} {mΩ : MeasurableSpace Ω} {μ : Measure Ω}
  {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
  [MeasurableSpace E] [BorelSpace E]

/-- **Strong law of large numbers**, Lᵖ version: if `X n` is a sequence of independent
identically distributed random variables in Lᵖ, then `n⁻¹ • ∑ i ∈ range n, X i`
converges in `Lᵖ` to `𝔼[X 0]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean#L799).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75edee7b051894fc44e7af8c065abb43350e2c2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
