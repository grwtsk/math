# logDeriv_eventuallyEq_principalPart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34bc987b-2652-e4d8-a221-2cefc844c854",
  "kind": "theorem",
  "lexical_name": "logDeriv_eventuallyEq_principalPart",
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
  "slug": "logderiv-eventuallyeq-principalpart--a2c5380a7f339e87f78bfbd3",
  "source": {
    "blob": "610ce8d65107e434aeb95a9318450637be3b6324",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant642909dd2363d023ed628b5a933f5a2981c545118865b17e1863e1f08042a994.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2c5380a7f339e87f78bfbd37340aed8da73413d26c83d840f849397bb4f605e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant642909dd2363d023ed628b5a933f5a2981c545118865b17e1863e1f08042a994.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34bc987b-2652-e4d8-a221-2cefc844c854`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_eventuallyEq_principalPart
    {f : ℂ → ℂ} {z : ℂ} (hf : AnalyticAt ℂ f z)
    {n : ℕ} (hn : analyticOrderAt f z = n) :
    ∃ g : ℂ → ℂ,
      AnalyticAt ℂ g z ∧ g z ≠ 0 ∧
        logDeriv f =ᶠ[𝓝[≠] z]
          fun w ↦ (n : ℂ) / (w - z) + logDeriv g w := by
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

  exact ⟨g, hg, hg0, hlog⟩

/-- The logarithmic derivative of a finite-order analytic germ has local
simple-pole coefficient equal to its analytic multiplicity. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant642909dd2363d023ed628b5a933f5a2981c545118865b17e1863e1f08042a994.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant642909dd2363d023ed628b5a933f5a2981c545118865b17e1863e1f08042a994.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `610ce8d65107e434aeb95a9318450637be3b6324` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
