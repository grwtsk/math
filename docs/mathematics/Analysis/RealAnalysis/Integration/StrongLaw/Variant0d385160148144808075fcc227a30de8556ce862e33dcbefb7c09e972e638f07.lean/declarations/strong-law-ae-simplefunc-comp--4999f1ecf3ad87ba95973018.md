# strong_law_ae_simpleFunc_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "57d18a3037e4850b299b887db4db5f1c3c278cea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 645,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d385160148144808075fcc227a30de8556ce862e33dcbefb7c09e972e638f07.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d49264d1-21c8-260d-6f09-1dce58c2f040",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f09f157-e147-dc82-1321-c8c3d98d765a",
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
  "slug": "strong-law-ae-simplefunc-comp--4999f1ecf3ad87ba95973018",
  "source": {
    "blob": "57d18a3037e4850b299b887db4db5f1c3c278cea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 693,
    "line": 645,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant0d385160148144808075fcc227a30de8556ce862e33dcbefb7c09e972e638f07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4999f1ecf3ad87ba95973018aded67aad55e5f6fa551b5252b206513c063cdc2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant0d385160148144808075fcc227a30de8556ce862e33dcbefb7c09e972e638f07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f09f157-e147-dc82-1321-c8c3d98d765a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 645–693.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma strong_law_ae_simpleFunc_comp (X : ℕ → Ω → E) (h' : Measurable (X 0))
    (hindep : Pairwise ((· ⟂ᵢ[μ] ·) on X))
    (hident : ∀ i, IdentDistrib (X i) (X 0) μ μ) (φ : SimpleFunc E E) :
    ∀ᵐ ω ∂μ,
      Tendsto (fun n : ℕ ↦ (n : ℝ)⁻¹ • (∑ i ∈ range n, φ (X i ω))) atTop (𝓝 μ[φ ∘ (X 0)]) := by
  -- this follows from the one-dimensional version when `φ` takes a single value, and is then
  -- extended to the general case by linearity.
  refine SimpleFunc.induction (motive := fun ψ ↦ ∀ᵐ ω ∂μ,
    Tendsto (fun n : ℕ ↦ (n : ℝ)⁻¹ • (∑ i ∈ range n, ψ (X i ω))) atTop (𝓝 μ[ψ ∘ (X 0)])) ?_ ?_ φ
  · intro c s hs
    simp only [SimpleFunc.const_zero, SimpleFunc.coe_piecewise, SimpleFunc.coe_const,
      SimpleFunc.coe_zero, piecewise_eq_indicator, Function.comp_apply]
    let F : E → ℝ := indicator s 1
    have F_meas : Measurable F := (measurable_indicator_const_iff 1).2 hs
    let Y : ℕ → Ω → ℝ := fun n ↦ F ∘ (X n)
    have : ∀ᵐ (ω : Ω) ∂μ, Tendsto (fun (n : ℕ) ↦ (n : ℝ)⁻¹ • ∑ i ∈ Finset.range n, Y i ω)
        atTop (𝓝 μ[Y 0]) := by
      simp only [smul_eq_mul, ← div_eq_inv_mul]
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
    convert! Tendsto.smul_const hω c using 1
    simp [F, Y, ← sum_smul, smul_smul]
  · rintro φ ψ - hφ hψ
    filter_upwards [hφ, hψ] with ω hωφ hωψ
    convert! hωφ.add hωψ using 1
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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant0d385160148144808075fcc227a30de8556ce862e33dcbefb7c09e972e638f07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant0d385160148144808075fcc227a30de8556ce862e33dcbefb7c09e972e638f07.lean#L645).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57d18a3037e4850b299b887db4db5f1c3c278cea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
