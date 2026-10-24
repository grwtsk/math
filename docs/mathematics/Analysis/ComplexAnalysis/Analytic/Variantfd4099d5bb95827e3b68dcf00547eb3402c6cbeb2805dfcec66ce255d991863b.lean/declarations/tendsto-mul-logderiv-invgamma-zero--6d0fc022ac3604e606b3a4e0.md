# tendsto_mul_logDeriv_invGammaℝ_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48bc182a-0d83-7f02-03f1-547015bd008b",
  "kind": "theorem",
  "lexical_name": "tendsto_mul_logDeriv_invGammaℝ_zero",
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
  "slug": "tendsto-mul-logderiv-invgamma-zero--6d0fc022ac3604e606b3a4e0",
  "source": {
    "blob": "cd7e7663cb813ea13eff8dc9ba4aacf777775a93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 166,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d0fc022ac3604e606b3a4e019c67b3bf29097e47571bbfb3be6304deae00a31",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48bc182a-0d83-7f02-03f1-547015bd008b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_mul_logDeriv_invGammaℝ_zero :
    Tendsto (fun s : ℂ => s * logDeriv invGammaℝ s) (𝓝[≠] 0) (𝓝 1) := by
  -- near 0, s ≠ 0: logDeriv G s = 1/s + logDeriv h s  (h = invGammaℝCof, h 0 = 1/2 ≠ 0)
  have hh0 : invGammaℝCof 0 ≠ 0 := by rw [invGammaℝCof_zero]; norm_num
  have hcont : ContinuousAt (logDeriv invGammaℝCof) 0 := by
    have ha := differentiable_invGammaℝCof.analyticAt 0
    exact ha.deriv.continuousAt.div ha.continuousAt hh0
  -- h ≠ 0 near 0
  have hne : ∀ᶠ s in 𝓝 (0:ℂ), invGammaℝCof s ≠ 0 :=
    differentiable_invGammaℝCof.continuous.continuousAt.eventually_ne hh0
  have hev : ∀ᶠ s in 𝓝[≠] (0:ℂ), s * logDeriv invGammaℝ s = 1 + s * logDeriv invGammaℝCof s := by
    have h1 : ∀ᶠ s in 𝓝[≠] (0:ℂ), s ≠ 0 := self_mem_nhdsWithin
    filter_upwards [h1, mem_nhdsWithin_of_mem_nhds hne] with s hs hhs
    rw [invGammaℝ_eq_id_mul, logDeriv_mul s (by simpa using hs) hhs differentiableAt_id (differentiable_invGammaℝCof s)]
    rw [logDeriv_id]
    field_simp
  have hlim : Tendsto (fun s : ℂ => 1 + s * logDeriv invGammaℝCof s) (𝓝[≠] 0) (𝓝 1) := by
    have h2 : Tendsto (fun s : ℂ => s * logDeriv invGammaℝCof s) (𝓝 0) (𝓝 0) := by
      have := (continuous_id.continuousAt (x := (0:ℂ))).tendsto.mul hcont.tendsto
      simpa using this
    have h3 : Tendsto (fun s : ℂ => s * logDeriv invGammaℝCof s) (𝓝[≠] 0) (𝓝 0) :=
      h2.mono_left nhdsWithin_le_nhds
    have := h3.const_add 1
    simpa using this
  exact hlim.congr' (hev.mono fun _ h => h.symm)

/-! ### §3. χ, L₂ and W on the strip off {0, 1} -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd7e7663cb813ea13eff8dc9ba4aacf777775a93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
