# hasSimplePoleResidueAt_logDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05dbd7c8-9e7e-ce66-b2d7-2d486ba88425",
  "kind": "theorem",
  "lexical_name": "hasSimplePoleResidueAt_logDeriv",
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
  "slug": "hassimplepoleresidueat-logderiv--312d861460e86c0136682515",
  "source": {
    "blob": "9cee4422e117eec346e23eb0281c65008beac9af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 51,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant9288d3e0a61244b169bc476c09ea193ff313d80b07cc3693e1d3167e83f5f7d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:312d861460e86c013668251509854e26d28be32a485bcf711ed21ddfa26a1533",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant9288d3e0a61244b169bc476c09ea193ff313d80b07cc3693e1d3167e83f5f7d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05dbd7c8-9e7e-ce66-b2d7-2d486ba88425`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSimplePoleResidueAt_logDeriv
    {f : ℂ → ℂ} {z : ℂ} (hf : AnalyticAt ℂ f z)
    {n : ℕ} (hn : analyticOrderAt f z = n) :
    HasSimplePoleResidueAt (logDeriv f) z (n : ℂ) := by
  obtain ⟨g, hg, hg0, hfg⟩ :=
    hf.analyticOrderAt_eq_natCast.mp hn

  have hfgMul : f =ᶠ[𝓝 z] fun w ↦ (w - z) ^ n * g w :=
    hfg.mono fun w hw ↦ by
      simpa only [smul_eq_mul] using hw

  have hg_ne : ∀ᶠ w in 𝓝 z, g w ≠ 0 :=
    (hg.continuousAt.ne_iff_eventually_ne continuousAt_const).mp hg0

  have hfg' :=
    eventually_nhdsWithin_of_eventually_nhds
      (s := {z}ᶜ) hfgMul

  have hder' :=
    eventually_nhdsWithin_of_eventually_nhds
      (s := {z}ᶜ) hfgMul.deriv

  have hg_ne' :=
    eventually_nhdsWithin_of_eventually_nhds
      (s := {z}ᶜ) hg_ne

  have hga' :=
    eventually_nhdsWithin_of_eventually_nhds
      (s := {z}ᶜ) hg.eventually_analyticAt

  have hld : ContinuousAt (logDeriv g) z := by
    exact hg.deriv.continuousAt.div hg.continuousAt hg0

  have hlog : logDeriv f =ᶠ[𝓝[≠] z]
      fun w ↦ (n : ℂ) / (w - z) + logDeriv g w := by
    filter_upwards [hfg', hder', hg_ne', hga',
      self_mem_nhdsWithin] with w hwval hwder hgw hgaw hwz

    have hwz' : w - z ≠ 0 := sub_ne_zero.mpr hwz

    calc
      logDeriv f w =
          logDeriv (fun u : ℂ ↦ (u - z) ^ n * g u) w := by
            simp only [logDeriv_apply, hwder, hwval]
      _ = logDeriv (fun u : ℂ ↦ (u - z) ^ n) w +
          logDeriv g w := by
            exact logDeriv_mul w (pow_ne_zero n hwz') hgw
              (by fun_prop) hgaw.differentiableAt
      _ = (n : ℂ) / (w - z) + logDeriv g w := by
            rw [logDeriv_fun_pow
              (f := fun u : ℂ ↦ u - z) (by fun_prop) n]
            simp [logDeriv_apply, div_eq_mul_inv]

  have hsub : Tendsto (fun w : ℂ ↦ w - z)
      (𝓝[≠] z) (𝓝 0) := by
    have hc : ContinuousAt (fun w : ℂ ↦ w - z) z := by
      fun_prop
    simpa only [sub_self] using hc.tendsto.mono_left
      (show 𝓝[≠] z ≤ 𝓝 z from nhdsWithin_le_nhds)

  have hmul :
      Tendsto (fun w ↦ (w - z) * logDeriv g w)
        (𝓝[≠] z) (𝓝 0) := by
    simpa only [zero_mul] using
      hsub.mul (hld.tendsto.mono_left nhdsWithin_le_nhds)

  have hmain :
      Tendsto
        (fun w ↦ (n : ℂ) + (w - z) * logDeriv g w)
        (𝓝[≠] z) (𝓝 (n : ℂ)) := by
    simpa only [add_zero] using tendsto_const_nhds.add hmul

  apply hmain.congr'
  filter_upwards [hlog, self_mem_nhdsWithin] with w hw hwz
  rw [hw]
  have hwz' : w - z ≠ 0 := sub_ne_zero.mpr hwz
  field_simp

end AnalyticAt

end

end Surface.Core.ComplexAnalysis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant9288d3e0a61244b169bc476c09ea193ff313d80b07cc3693e1d3167e83f5f7d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant9288d3e0a61244b169bc476c09ea193ff313d80b07cc3693e1d3167e83f5f7d0.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cee4422e117eec346e23eb0281c65008beac9af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
