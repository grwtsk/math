# HasSubgaussianMGF_add_of_HasCondSubgaussianMGF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b5b520e-f87c-7468-0903-3fa58c9225c1",
  "kind": "lemma",
  "lexical_name": "HasSubgaussianMGF_add_of_HasCondSubgaussianMGF",
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
  "slug": "hassubgaussianmgf-add-of-hascondsubgaussianmgf--7a844fd7a9fbd5803352bf74",
  "source": {
    "blob": "f30fb70372fb70e2c30f4919426178cc4ee9c7ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 636,
    "line": 613,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a844fd7a9fbd5803352bf74865027aac7db0d331e426abf0d6481d63a6c5e06",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b5b520e-f87c-7468-0903-3fa58c9225c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–636.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasSubgaussianMGF_add_of_HasCondSubgaussianMGF [IsFiniteMeasure μ]
    {Y : Ω → ℝ} {cX cY : ℝ≥0} (hm : m ≤ mΩ)
    (hX : HasSubgaussianMGF X cX (μ.trim hm)) (hY : HasCondSubgaussianMGF m hm Y cY μ) :
    HasSubgaussianMGF (X + Y) (cX + cY) μ := by
  suffices HasSubgaussianMGF (fun p ↦ X p.1 + Y p.2) (cX + cY)
      (@Measure.map Ω (Ω × Ω) mΩ (m.prod mΩ) (fun ω ↦ (id ω, id ω)) μ) by
    have h_eq : X + Y = (fun p ↦ X p.1 + Y p.2) ∘ (fun ω ↦ (id ω, id ω)) := rfl
    rw [h_eq]
    refine HasSubgaussianMGF.of_map ?_ this
    exact @Measurable.aemeasurable _ _ _ (m.prod mΩ) _ _
      ((measurable_id'' hm).prodMk measurable_id)
  rw [HasSubgaussianMGF_iff_kernel] at hX ⊢
  have hY' : Kernel.HasSubgaussianMGF Y cY (condExpKernel μ m)
      (Kernel.const Unit (μ.trim hm) ∘ₘ Measure.dirac ()) := by simpa
  convert hX.add_comp hY'
  ext
  rw [Kernel.const_apply, ← Measure.compProd, compProd_trim_condExpKernel]

variable {Y : ℕ → Ω → ℝ} {cY : ℕ → ℝ≥0} {ℱ : Filtration ℕ mΩ}

/-- Let `Y` be a random process adapted to a filtration `ℱ`, such that for all `i : ℕ`, `Y i` is
conditionally sub-Gaussian with parameter `cY i` with respect to `ℱ (i - 1)`.
In particular, `n ↦ ∑ i ∈ range n, Y i` is a martingale.
Then the sum `∑ i ∈ range n, Y i` is sub-Gaussian with parameter `∑ i ∈ range n, cY i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f30fb70372fb70e2c30f4919426178cc4ee9c7ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
