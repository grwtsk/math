# isBigO_mul_logDeriv_near_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd0bdeb4-f113-8708-11e0-ed566e4aab9c",
  "kind": "theorem",
  "lexical_name": "isBigO_mul_logDeriv_near_zero",
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
  "slug": "isbigo-mul-logderiv-near-zero--a10634fa7cca8b617a42b944",
  "source": {
    "blob": "0ae0a2fe106d4d5a5bcb06102dc2f0a602bda9e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 66,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a10634fa7cca8b617a42b944fb0d50575a3c6dc2087475f6f439298d4bd5bb96",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd0bdeb4-f113-8708-11e0-ed566e4aab9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBigO_mul_logDeriv_near_zero {f g : ℂ → ℂ} {ρ : ℂ} (hf : AnalyticAt ℂ f ρ)
    (hord : analyticOrderAt f ρ ≠ ⊤) (hg : AnalyticAt ℂ g ρ) :
    ((fun s => g s * logDeriv f s) - fun s => (analyticOrderNatAt f ρ : ℂ) * g ρ / (s - ρ))
      =O[𝓝[≠] ρ] (1 : ℂ → ℂ) := by
  obtain ⟨h, hh, hh0, hfh⟩ := hf.analyticOrderAt_ne_top.mp hord
  have hh_ne : ∀ᶠ s in 𝓝 ρ, h s ≠ 0 := hh.continuousAt.eventually_ne hh0
  have h2 : ∀ᶠ s in 𝓝 ρ, f =ᶠ[𝓝 s] (fun s => (s - ρ) ^ analyticOrderNatAt f ρ • h s) :=
    hfh.eventually_nhds
  have h3 : ∀ᶠ s in 𝓝 ρ, AnalyticAt ℂ h s := hh.eventually_analyticAt
  have hexp : ∀ᶠ s in 𝓝[≠] ρ,
      (analyticOrderNatAt f ρ : ℂ) * ((g s - g ρ) / (s - ρ)) + g s * logDeriv h s
        = ((fun s => g s * logDeriv f s) - fun s =>
            (analyticOrderNatAt f ρ : ℂ) * g ρ / (s - ρ)) s := by
    filter_upwards [self_mem_nhdsWithin, mem_nhdsWithin_of_mem_nhds h2,
      mem_nhdsWithin_of_mem_nhds hh_ne, mem_nhdsWithin_of_mem_nhds h3]
      with s hs hfs hhs hhas
    have hsρ : s - ρ ≠ 0 := sub_ne_zero.mpr (by simpa using hs)
    have hld : logDeriv f s = (analyticOrderNatAt f ρ : ℂ) / (s - ρ) + logDeriv h s := by
      have e1 : logDeriv f s = logDeriv (fun s => (s - ρ) ^ analyticOrderNatAt f ρ * h s) s := by
        simp only [logDeriv_apply, hfs.deriv_eq, hfs.self_of_nhds, smul_eq_mul]
      rw [e1, logDeriv_mul (f := fun s : ℂ => (s - ρ) ^ analyticOrderNatAt f ρ) (g := h) s
        (pow_ne_zero _ hsρ) hhs (by fun_prop) hhas.differentiableAt]
      have e2 : logDeriv (fun s : ℂ => (s - ρ) ^ analyticOrderNatAt f ρ) s
          = (analyticOrderNatAt f ρ : ℂ) / (s - ρ) := by
        rw [show (fun s : ℂ => (s - ρ) ^ analyticOrderNatAt f ρ)
            = (fun x : ℂ => x ^ analyticOrderNatAt f ρ) ∘ (fun s => s - ρ) from rfl,
          logDeriv_comp (by fun_prop) (by fun_prop), logDeriv_pow]
        simp
      rw [e2]
    simp only [Pi.sub_apply, hld]
    ring
  have hslope : Tendsto (fun s => (g s - g ρ) / (s - ρ)) (𝓝[≠] ρ) (𝓝 (deriv g ρ)) := by
    have := hasDerivAt_iff_tendsto_slope.mp hg.differentiableAt.hasDerivAt
    simpa only [slope_fun_def_field] using this
  have hcont : Tendsto (fun s => g s * logDeriv h s) (𝓝[≠] ρ) (𝓝 (g ρ * logDeriv h ρ)) := by
    have : ContinuousAt (fun s => g s * logDeriv h s) ρ := by
      show ContinuousAt (fun s => g s * (deriv h s / h s)) ρ
      exact hg.continuousAt.mul (hh.deriv.continuousAt.div hh.continuousAt hh0)
    exact this.tendsto.mono_left nhdsWithin_le_nhds
  have hO : (fun s => (analyticOrderNatAt f ρ : ℂ) * ((g s - g ρ) / (s - ρ))
      + g s * logDeriv h s) =O[𝓝[≠] ρ] (1 : ℂ → ℂ) :=
    ((hslope.const_mul (analyticOrderNatAt f ρ : ℂ)).add hcont).isBigO_one ℂ
  exact hO.congr' hexp EventuallyEq.rfl

/-- Near a simple pole q of the weight g (principal part r/(· − q)), with F differentiable at q:
g·F − r·F(q)/(· − q) is bounded on a punctured neighbourhood of q. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ae0a2fe106d4d5a5bcb06102dc2f0a602bda9e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
