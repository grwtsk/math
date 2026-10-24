# strong_law_ae_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e3b46f7-293e-779b-c349-251f2528a564",
  "kind": "theorem",
  "lexical_name": "strong_law_ae_real",
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
  "slug": "strong-law-ae-real--22a742c3357830829c7ae15c",
  "source": {
    "blob": "75edee7b051894fc44e7af8c065abb43350e2c2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 656,
    "line": 609,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22a742c3357830829c7ae15c8db020cad06b777b7151d0ea937e1dc1d42257d4",
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

Occurrence: `result:1e3b46f7-293e-779b-c349-251f2528a564`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 609–656.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strong_law_ae_real {Ω : Type*} {m : MeasurableSpace Ω} {μ : Measure Ω}
    (X : ℕ → Ω → ℝ) (hint : Integrable (X 0) μ)
    (hindep : Pairwise ((IndepFun · · μ) on X))
    (hident : ∀ i, IdentDistrib (X i) (X 0) μ μ) :
    ∀ᵐ ω ∂μ, Tendsto (fun n : ℕ => (∑ i ∈ range n, X i ω) / n) atTop (𝓝 μ[X 0]) := by
  let mΩ : MeasureSpace Ω := ⟨μ⟩
  -- first get rid of the trivial case where the space is not a probability space
  by_cases h : ∀ᵐ ω, X 0 ω = 0
  · have I : ∀ᵐ ω, ∀ i, X i ω = 0 := by
      rw [ae_all_iff]
      intro i
      exact (hident i).symm.ae_snd (p := fun x ↦ x = 0) measurableSet_eq h
    filter_upwards [I] with ω hω
    simpa [hω] using (integral_eq_zero_of_ae h).symm
  have : IsProbabilityMeasure μ :=
    hint.isProbabilityMeasure_of_indepFun (X 0) (X 1) h (hindep zero_ne_one)
  -- then consider separately the positive and the negative part, and apply the result
  -- for nonnegative functions to them.
  let pos : ℝ → ℝ := fun x => max x 0
  let neg : ℝ → ℝ := fun x => max (-x) 0
  have posm : Measurable pos := measurable_id'.max measurable_const
  have negm : Measurable neg := measurable_id'.neg.max measurable_const
  have A : ∀ᵐ ω, Tendsto (fun n : ℕ => (∑ i ∈ range n, (pos ∘ X i) ω) / n) atTop (𝓝 𝔼[pos ∘ X 0]) :=
    strong_law_aux7 _ hint.pos_part (fun i j hij => (hindep hij).comp posm posm)
      (fun i => (hident i).comp posm) fun i ω => le_max_right _ _
  have B : ∀ᵐ ω, Tendsto (fun n : ℕ => (∑ i ∈ range n, (neg ∘ X i) ω) / n) atTop (𝓝 𝔼[neg ∘ X 0]) :=
    strong_law_aux7 _ hint.neg_part (fun i j hij => (hindep hij).comp negm negm)
      (fun i => (hident i).comp negm) fun i ω => le_max_right _ _
  filter_upwards [A, B] with ω hωpos hωneg
  convert hωpos.sub hωneg using 2
  · simp only [pos, neg, ← sub_div, ← sum_sub_distrib, max_zero_sub_max_neg_zero_eq_self,
      Function.comp_apply]
  · simp only [pos, neg, ← integral_sub hint.pos_part hint.neg_part,
      max_zero_sub_max_neg_zero_eq_self, Function.comp_apply, mΩ]

end StrongLawAeReal

section StrongLawVectorSpace

variable {Ω : Type*} {mΩ : MeasurableSpace Ω} {μ : Measure Ω} [IsProbabilityMeasure μ]
  {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
  [MeasurableSpace E]

open Set TopologicalSpace

/-- Preliminary lemma for the strong law of large numbers for vector-valued random variables:
the composition of the random variables with a simple function satisfies the strong law of large
numbers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean#L609).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75edee7b051894fc44e7af8c065abb43350e2c2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
