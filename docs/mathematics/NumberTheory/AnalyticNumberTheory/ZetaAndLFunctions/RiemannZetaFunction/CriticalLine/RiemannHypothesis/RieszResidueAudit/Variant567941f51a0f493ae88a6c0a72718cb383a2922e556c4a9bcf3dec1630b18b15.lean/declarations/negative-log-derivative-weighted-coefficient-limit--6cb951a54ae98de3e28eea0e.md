# negative_log_derivative_weighted_coefficient_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6568a10-5c97-e812-11b3-1cb72f1a0261",
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
  "slug": "negative-log-derivative-weighted-coefficient-limit--6cb951a54ae98de3e28eea0e",
  "source": {
    "blob": "ff9a7415a01d712979568726c105559022eb44ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 318,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant567941f51a0f493ae88a6c0a72718cb383a2922e556c4a9bcf3dec1630b18b15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cb951a54ae98de3e28eea0ecdae77b9a4d26519c6e3dd59dbc60e05c2e54ccc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant567941f51a0f493ae88a6c0a72718cb383a2922e556c4a9bcf3dec1630b18b15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6568a10-5c97-e812-11b3-1cb72f1a0261`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–358.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant567941f51a0f493ae88a6c0a72718cb383a2922e556c4a9bcf3dec1630b18b15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant567941f51a0f493ae88a6c0a72718cb383a2922e556c4a9bcf3dec1630b18b15.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff9a7415a01d712979568726c105559022eb44ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
