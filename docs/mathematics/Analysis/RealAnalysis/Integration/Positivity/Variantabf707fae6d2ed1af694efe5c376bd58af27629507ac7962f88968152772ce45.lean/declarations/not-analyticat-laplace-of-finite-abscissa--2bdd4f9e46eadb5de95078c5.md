# not_analyticAt_laplace_of_finite_abscissa

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f6c668791c9dc7364259d5f960a42ccc58f9571",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/abf707fae6d2ed1af694efe5c376bd58af27629507ac7962f88968152772ce45.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5d7ab5d-38bf-892b-cc80-32f299364d34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc45f45a-7e14-b353-6f39-0aabd238ce7c",
  "kind": "theorem",
  "lexical_name": "not_analyticAt_laplace_of_finite_abscissa",
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
  "slug": "not-analyticat-laplace-of-finite-abscissa--2bdd4f9e46eadb5de95078c5",
  "source": {
    "blob": "4f6c668791c9dc7364259d5f960a42ccc58f9571",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 188,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Positivity/Variantabf707fae6d2ed1af694efe5c376bd58af27629507ac7962f88968152772ce45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bdd4f9e46eadb5de95078c5392a501d0e1fb0695424a9c12730f56a07c497a3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Positivity/Variantabf707fae6d2ed1af694efe5c376bd58af27629507ac7962f88968152772ce45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc45f45a-7e14-b353-6f39-0aabd238ce7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_analyticAt_laplace_of_finite_abscissa (σ : ℝ)
    (hX : ∀ᵐ ω ∂μ, 0 ≤ X ω)
    (hconv : ∀ t : ℝ, σ < t → Integrable (fun ω ↦ Real.exp (-t * X ω)) μ)
    (hdiv : ∀ t : ℝ, t < σ → ¬ Integrable (fun ω ↦ Real.exp (-t * X ω)) μ)
    (F : ℂ → ℂ)
    (heq : F =ᶠ[𝓝[{z : ℂ | σ < z.re}] (σ : ℂ)]
      (fun z ↦ ProbabilityTheory.complexMGF X μ (-z))) :
    ¬ AnalyticAt ℂ F (σ : ℂ) := by
  intro han
  have hleft (t : ℝ) (ht : t < -σ) :
      Integrable (fun ω ↦ Real.exp (t * X ω)) μ := by
    simpa using hconv (-t) (by linarith)
  have hright (t : ℝ) (ht : -σ < t) :
      ¬ Integrable (fun ω ↦ Real.exp (t * X ω)) μ := by
    simpa using hdiv (-t) (by linarith)
  have hneg : Tendsto (fun z : ℂ ↦ -z)
      (𝓝[{z : ℂ | z.re < -σ}] ((-σ : ℝ) : ℂ))
      (𝓝[{z : ℂ | σ < z.re}] (σ : ℂ)) := by
    apply tendsto_nhdsWithin_iff.mpr
    constructor
    · convert! (continuous_neg.tendsto ((-σ : ℝ) : ℂ)).mono_left
        (nhdsWithin_le_nhds (s := {z : ℂ | z.re < -σ})) using 1
      simp
    · filter_upwards [self_mem_nhdsWithin] with z hz
      simpa using (show σ < -z.re by linarith [hz])
  have hmatch : (fun z : ℂ ↦ F (-z)) =ᶠ[𝓝[{z : ℂ | z.re < -σ}] ((-σ : ℝ) : ℂ)]
      ProbabilityTheory.complexMGF X μ := by
    simpa only [Function.comp_def, neg_neg] using heq.comp_tendsto hneg
  apply not_analyticAt_of_finite_convergence_boundary (-σ) hX hleft hright
    (fun z ↦ F (-z)) hmatch
  have ha : AnalyticAt ℂ F (-((-σ : ℝ) : ℂ)) := by simpa using han
  exact ha.comp (by fun_prop)

end

end FormalResearch.MathematicalTooling.Laplace.Positivity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Positivity/Variantabf707fae6d2ed1af694efe5c376bd58af27629507ac7962f88968152772ce45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Positivity/Variantabf707fae6d2ed1af694efe5c376bd58af27629507ac7962f88968152772ce45.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f6c668791c9dc7364259d5f960a42ccc58f9571` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
