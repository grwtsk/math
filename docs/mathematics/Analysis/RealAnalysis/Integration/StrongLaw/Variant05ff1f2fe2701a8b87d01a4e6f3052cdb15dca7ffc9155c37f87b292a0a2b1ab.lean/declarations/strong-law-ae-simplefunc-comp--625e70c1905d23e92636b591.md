# strong_law_ae_simpleFunc_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22cdf2de-f9c7-cd86-a9e5-1aa6a412a745",
  "kind": "lemma",
  "lexical_name": "strong_law_ae_simpleFunc_comp",
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
  "slug": "strong-law-ae-simplefunc-comp--625e70c1905d23e92636b591",
  "source": {
    "blob": "75edee7b051894fc44e7af8c065abb43350e2c2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 706,
    "line": 657,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:625e70c1905d23e92636b59119b400d3644512b266b3bfd7dba41907b6e5bc6b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22cdf2de-f9c7-cd86-a9e5-1aa6a412a745`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 657–706.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma strong_law_ae_simpleFunc_comp (X : ℕ → Ω → E) (h' : Measurable (X 0))
    (hindep : Pairwise ((IndepFun · · μ) on X))
    (hident : ∀ i, IdentDistrib (X i) (X 0) μ μ) (φ : SimpleFunc E E) :
    ∀ᵐ ω ∂μ,
      Tendsto (fun n : ℕ ↦ (n : ℝ) ⁻¹ • (∑ i ∈ range n, φ (X i ω))) atTop (𝓝 μ[φ ∘ (X 0)]) := by
  -- this follows from the one-dimensional version when `φ` takes a single value, and is then
  -- extended to the general case by linearity.
  classical
  refine SimpleFunc.induction (motive := fun ψ ↦ ∀ᵐ ω ∂μ,
    Tendsto (fun n : ℕ ↦ (n : ℝ) ⁻¹ • (∑ i ∈ range n, ψ (X i ω))) atTop (𝓝 μ[ψ ∘ (X 0)])) ?_ ?_ φ
  · intro c s hs
    simp only [SimpleFunc.const_zero, SimpleFunc.coe_piecewise, SimpleFunc.coe_const,
      SimpleFunc.coe_zero, piecewise_eq_indicator, Function.comp_apply]
    let F : E → ℝ := indicator s 1
    have F_meas : Measurable F := (measurable_indicator_const_iff 1).2 hs
    let Y : ℕ → Ω → ℝ := fun n ↦ F ∘ (X n)
    have : ∀ᵐ (ω : Ω) ∂μ, Tendsto (fun (n : ℕ) ↦ (n : ℝ)⁻¹ • ∑ i ∈ Finset.range n, Y i ω)
        atTop (𝓝 μ[Y 0]) := by
      simp only [Function.const_one, smul_eq_mul, ← div_eq_inv_mul]
      apply strong_law_ae_real
      · exact SimpleFunc.integrable_of_isFiniteMeasure
          ((SimpleFunc.piecewise s hs (SimpleFunc.const _ (1 : ℝ))
            (SimpleFunc.const _ (0 : ℝ))).comp (X 0) h')
      · exact fun i j hij ↦ IndepFun.comp (hindep hij) F_meas F_meas
      · exact fun i ↦ (hident i).comp F_meas
    filter_upwards [this] with ω hω
    have I : indicator s (Function.const E c) = (fun x ↦ (indicator s (1 : E → ℝ) x) • c) := by
      ext
      rw [← indicator_smul_const_apply]
      congr! 1
      ext
      simp
    simp only [I, integral_smul_const]
    convert Tendsto.smul_const hω c using 1
    simp [F, Y, ← sum_smul, smul_smul]
  · rintro φ ψ - hφ hψ
    filter_upwards [hφ, hψ] with ω hωφ hωψ
    convert hωφ.add hωψ using 1
    · simp [sum_add_distrib]
    · congr 1
      rw [← integral_add]
      · rfl
      · exact (φ.comp (X 0) h').integrable_of_isFiniteMeasure
      · exact (ψ.comp (X 0) h').integrable_of_isFiniteMeasure

variable [BorelSpace E]

/-- Preliminary lemma for the strong law of large numbers for vector-valued random variables,
assuming measurability in addition to integrability. This is weakened to ae measurability in
the full version `ProbabilityTheory.strong_law_ae`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean#L657).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75edee7b051894fc44e7af8c065abb43350e2c2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
