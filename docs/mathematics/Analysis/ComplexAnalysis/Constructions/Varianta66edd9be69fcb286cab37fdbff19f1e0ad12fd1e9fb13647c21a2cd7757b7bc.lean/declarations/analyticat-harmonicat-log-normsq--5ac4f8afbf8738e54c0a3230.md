# analyticAt_harmonicAt_log_normSq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfe9dcfd-0668-6a01-6049-12df48d1c20e",
  "kind": "lemma",
  "lexical_name": "analyticAt_harmonicAt_log_normSq",
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
  "slug": "analyticat-harmonicat-log-normsq--5ac4f8afbf8738e54c0a3230",
  "source": {
    "blob": "97c7faedfe431a64e3ae34f0fad58d60ffc9141a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 83,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Constructions/Varianta66edd9be69fcb286cab37fdbff19f1e0ad12fd1e9fb13647c21a2cd7757b7bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ac4f8afbf8738e54c0a3230777e6be1c91cd8b3e20c51926365d93f340224ac",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Constructions/Varianta66edd9be69fcb286cab37fdbff19f1e0ad12fd1e9fb13647c21a2cd7757b7bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfe9dcfd-0668-6a01-6049-12df48d1c20e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma analyticAt_harmonicAt_log_normSq {z : ℂ} {g : ℂ → ℂ} (h₁g : AnalyticAt ℂ g z)
    (h₂g : g z ≠ 0) (h₃g : g z ∈ slitPlane) :
    HarmonicAt (Real.log ∘ normSq ∘ g) z := by
  rw [harmonicAt_congr_nhds (f₂ := reCLM ∘ (conjCLE ∘ log ∘ g + log ∘ g))]
  · exact (((harmonicAt_comp_CLE_iff conjCLE).2 ((analyticAt_clog h₃g).comp h₁g).harmonicAt).add
      ((analyticAt_clog h₃g).comp h₁g).harmonicAt).comp_CLM reCLM
  · have t₀ := h₁g.differentiableAt.continuousAt.preimage_mem_nhds
      ((isOpen_slitPlane.inter isOpen_ne).mem_nhds ⟨h₃g, h₂g⟩)
    calc Real.log ∘ normSq ∘ g
    _ =ᶠ[𝓝 z] reCLM ∘ ofRealCLM ∘ Real.log ∘ normSq ∘ g := by aesop
    _ =ᶠ[𝓝 z] reCLM ∘ log ∘ ((conjCLE ∘ g) * g) := by
      filter_upwards with x
      simp only [Function.comp_apply, ofRealCLM_apply, Pi.mul_apply, conjCLE_apply]
      rw [ofReal_log, normSq_eq_conj_mul_self]
      exact normSq_nonneg (g x)
    _ =ᶠ[𝓝 z] reCLM ∘ (log ∘ conjCLE ∘ g + log ∘ g) := by
      filter_upwards [t₀] with x hx
      simp only [Function.comp_apply, Pi.mul_apply, conjCLE_apply, Pi.add_apply]
      congr
      rw [Complex.log_mul_eq_add_log_iff _ hx.2, Complex.arg_conj]
      · simp [Complex.slitPlane_arg_ne_pi hx.1, Real.pi_pos, Real.pi_nonneg]
      · simpa [ne_eq, map_eq_zero] using hx.2
    _ =ᶠ[𝓝 z] ⇑reCLM ∘ (⇑conjCLE ∘ log ∘ g + log ∘ g) := by
      apply Filter.eventuallyEq_iff_exists_mem.2
      use g ⁻¹' (Complex.slitPlane ∩ {0}ᶜ), t₀
      intro x hx
      simp only [Function.comp_apply, Pi.add_apply, conjCLE_apply]
      congr 1
      rw [← Complex.log_conj]
      simp [Complex.slitPlane_arg_ne_pi hx.1]

/--
If `f : ℂ → ℂ` is complex-analytic without zero, then `log ‖f‖` is harmonic.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Constructions/Varianta66edd9be69fcb286cab37fdbff19f1e0ad12fd1e9fb13647c21a2cd7757b7bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Constructions/Varianta66edd9be69fcb286cab37fdbff19f1e0ad12fd1e9fb13647c21a2cd7757b7bc.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97c7faedfe431a64e3ae34f0fad58d60ffc9141a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
