# AnalyticAt.analyticOrderAt_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e29cec9c-80fe-4a86-5ce9-90754c8fdb60",
  "kind": "lemma",
  "lexical_name": "AnalyticAt.analyticOrderAt_comp",
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
  "slug": "analyticat-analyticorderat-comp--9c9c121845998f80463061ca",
  "source": {
    "blob": "91c0435f282bf65f8d121392325982d509863ccf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 580,
    "line": 548,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Order/Variantd202218fb4353ea9c3c2d83523d826d89d5b8980f734eb68bcd29e9ada503faa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c9c121845998f80463061ca1871a1713c10532b867d267b09ba58e902530150",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Order/Variantd202218fb4353ea9c3c2d83523d826d89d5b8980f734eb68bcd29e9ada503faa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e29cec9c-80fe-4a86-5ce9-90754c8fdb60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 548–580.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AnalyticAt.analyticOrderAt_comp (hf : AnalyticAt 𝕜 f (g z₀)) (hg : AnalyticAt 𝕜 g z₀) :
    analyticOrderAt (f ∘ g) z₀ = analyticOrderAt f (g z₀) * analyticOrderAt (g · - g z₀) z₀ := by
  by_cases hg_nc : EventuallyConst g (𝓝 z₀)
  · -- If `g` is eventually constant, both sides are either `⊤` or `0`.
    have := hg_nc.comp f
    rw [eventuallyConst_iff_analyticOrderAt_sub_eq_top] at hg_nc this
    rw [hg_nc]
    by_cases hf' : f (g z₀) = 0
    · simpa [hf', show analyticOrderAt f (g z₀) ≠ 0 by grind [analyticOrderAt_ne_zero]]
    · rw [show analyticOrderAt f (g z₀) = 0 from ?_, zero_mul] <;>
      grind [hf.comp hg, AnalyticAt.analyticOrderAt_eq_zero]
  by_cases hf' : analyticOrderAt f (g z₀) = ⊤
  · -- If `f` is eventually constant but `g` is not, we have `⊤ = ⊤ * (non-zero thing)`
    rw [hf', analyticOrderAt_eq_top.mpr
      (EventuallyEq.comp_tendsto (analyticOrderAt_eq_top.mp hf') hg.continuousAt), ENat.top_mul]
    rw [AnalyticAt.analyticOrderAt_ne_zero (by fun_prop), sub_eq_zero]
  · -- The interesting case: both orders are finite. First unpack the data:
    rw [eventuallyConst_iff_analyticOrderAt_sub_eq_top] at hg_nc
    obtain ⟨r, hr⟩ := ENat.ne_top_iff_exists.mp hf'
    obtain ⟨s, hs⟩ := ENat.ne_top_iff_exists.mp hg_nc
    rw [← hr, ← hs, ← ENat.natCast_mul, (hf.comp hg).analyticOrderAt_eq_natCast]
    rw [Eq.comm, hf.analyticOrderAt_eq_natCast] at hr
    rcases hr with ⟨F, hFa, hFne, hfF⟩
    rw [Eq.comm, AnalyticAt.analyticOrderAt_eq_natCast (by fun_prop)] at hs
    rcases hs with ⟨G, hGa, hGne, hgG⟩
    -- Now write `f ∘ g` locally as the product of `(z - z₀) ^ (r * s)` and the
    -- non-vanishing analytic function `fun z ↦ (G z) ^ r • F (g z)`.
    refine ⟨fun z ↦ (G z) ^ r • F (g z), by fun_prop, by aesop, ?_⟩
    filter_upwards [EventuallyEq.comp_tendsto hfF hg.continuousAt, hgG] with z hfz hgz
    simp only [hfz, Function.comp_def, hgz, smul_eq_mul, mul_pow, mul_smul, mul_comm r s, pow_mul]

/-- If `g` is analytic at `x`, and `g' x ≠ 0`, then the analytic order of
`f ∘ g` at `x` is the analytic order of `f` at `g x` (even if `f` is not analytic). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Order/Variantd202218fb4353ea9c3c2d83523d826d89d5b8980f734eb68bcd29e9ada503faa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Order/Variantd202218fb4353ea9c3c2d83523d826d89d5b8980f734eb68bcd29e9ada503faa.lean#L548).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91c0435f282bf65f8d121392325982d509863ccf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
