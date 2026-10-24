# negative_log_derivative_weighted_coefficient_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e5f7471b18200ce3d767d863a55c7c42c492210",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 310,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/786b7cf8699ca1afa2132285a4a3dd145ea56db365cc86d34b6dd4da681316ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5fd23f3c-d84c-dcef-2d2c-74874cf3715d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:67d6b88a-0e9d-09e7-e403-3201ff12263d",
  "kind": "theorem",
  "lexical_name": "negative_log_derivative_weighted_coefficient_limit",
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
  "slug": "negative-log-derivative-weighted-coefficient-limit--13fe7df187fc1db35d3fdc1d",
  "source": {
    "blob": "5e5f7471b18200ce3d767d863a55c7c42c492210",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 310,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant786b7cf8699ca1afa2132285a4a3dd145ea56db365cc86d34b6dd4da681316ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13fe7df187fc1db35d3fdc1d532bb92306e1e3ab9503a76c430caef2001cd011",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant786b7cf8699ca1afa2132285a4a3dd145ea56db365cc86d34b6dd4da681316ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67d6b88a-0e9d-09e7-e403-3201ff12263d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negative_log_derivative_weighted_coefficient_limit (f g : ℂ → ℂ) (p : ℂ)
    (hf : AnalyticAt ℂ f p) (hfinite : analyticOrderAt f p ≠ ⊤)
    (hg : ContinuousAt g p) :
    Tendsto (fun s : ℂ ↦ (s - p) * (-logDeriv f s) * g s)
      (nhdsWithin p ({p}ᶜ))
      (nhds (-(analyticOrderNatAt f p : ℂ) * g p)) := by
  obtain ⟨h, hh, hh0, hfh⟩ := hf.analyticOrderAt_ne_top.mp hfinite
  have hlocal : ∀ᶠ s : ℂ in nhdsWithin p ({p}ᶜ),
      logDeriv f s = (analyticOrderNatAt f p : ℂ) / (s - p) + logDeriv h s := by
    filter_upwards [logDeriv_congr_nhds hfh |>.filter_mono nhdsWithin_le_nhds,
      hh.eventually_analyticAt.filter_mono nhdsWithin_le_nhds,
      hh.continuousAt.eventually_ne hh0 |>.filter_mono nhdsWithin_le_nhds,
      self_mem_nhdsWithin] with s hlog hsA hsH hs
    have hsp : s - p ≠ 0 := sub_ne_zero.mpr (by simpa using hs)
    simp only [smul_eq_mul] at hlog
    rw [hlog, logDeriv_mul (f := fun w : ℂ ↦ (w - p) ^ analyticOrderNatAt f p)
      (g := h) s (pow_ne_zero _ hsp) hsH (by fun_prop) hsA.differentiableAt]
    have hp : logDeriv (fun w : ℂ ↦ (w - p) ^ analyticOrderNatAt f p) s =
        (analyticOrderNatAt f p : ℂ) / (s - p) := by
      rw [show (fun w : ℂ ↦ (w - p) ^ analyticOrderNatAt f p) =
        (fun x : ℂ ↦ x ^ analyticOrderNatAt f p) ∘ (fun w : ℂ ↦ w - p) from rfl,
        logDeriv_comp (by fun_prop) (by fun_prop), logDeriv_pow]
      simp
    rw [hp]
  have hL : ContinuousAt (logDeriv h) p :=
    hh.deriv.continuousAt.div hh.continuousAt hh0
  have ht : Tendsto (fun s : ℂ ↦
      (-(analyticOrderNatAt f p : ℂ) - (s - p) * logDeriv h s) * g s)
      (nhdsWithin p ({p}ᶜ))
      (nhds (-(analyticOrderNatAt f p : ℂ) * g p)) := by
    simpa only [id_eq, sub_self, zero_mul, sub_zero] using
      ((tendsto_const_nhds.sub ((tendsto_id.sub_const p).mul hL.tendsto)).mul
        hg.tendsto).mono_left nhdsWithin_le_nhds
  apply ht.congr'
  filter_upwards [hlocal, self_mem_nhdsWithin] with s hs hsp
  have hn : s - p ≠ 0 := sub_ne_zero.mpr (by simpa using hsp)
  rw [hs]
  field_simp
  ring

/-- The actual zeta Riesz coefficient has sign minus multiplicity and the exact finite weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant786b7cf8699ca1afa2132285a4a3dd145ea56db365cc86d34b6dd4da681316ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant786b7cf8699ca1afa2132285a4a3dd145ea56db365cc86d34b6dd4da681316ea.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e5f7471b18200ce3d767d863a55c7c42c492210` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
