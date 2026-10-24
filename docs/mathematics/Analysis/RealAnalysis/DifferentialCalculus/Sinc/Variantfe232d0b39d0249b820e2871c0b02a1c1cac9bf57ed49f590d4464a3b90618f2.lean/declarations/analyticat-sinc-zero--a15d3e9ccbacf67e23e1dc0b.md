# analyticAt_sinc_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6989d00-e97d-a9ee-408d-ee99c2bec222",
  "kind": "theorem",
  "lexical_name": "analyticAt_sinc_zero",
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
  "slug": "analyticat-sinc-zero--a15d3e9ccbacf67e23e1dc0b",
  "source": {
    "blob": "78e8fd84f810480297e8cf6dde76757f78c946e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 376,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a15d3e9ccbacf67e23e1dc0bf31f50d746254c98f312a9145d7816cf80a788c3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6989d00-e97d-a9ee-408d-ee99c2bec222`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem analyticAt_sinc_zero : AnalyticAt ℝ sinc 0 := by
  -- sin has order ≥ 1 at 0 because sin(0) = 0 and sin is analytic
  have hsin_an : AnalyticAt ℝ sin 0 := analyticAt_sin
  -- sin(0) = 0 implies order ≠ 0, hence order ≥ 1
  have horder_ne_zero : analyticOrderAt sin (0 : ℝ) ≠ 0 :=
    hsin_an.analyticOrderAt_ne_zero.mpr sin_zero
  -- From the order, we get an analytic g with sin(z) = z * g(z) near 0
  have horder : (1 : ℕ) ≤ analyticOrderAt sin (0 : ℝ) := ENat.one_le_iff_ne_zero.mpr horder_ne_zero
  rw [natCast_le_analyticOrderAt hsin_an] at horder
  simp only [pow_one, sub_zero] at horder
  obtain ⟨g, hg_an, hg_eq⟩ := horder
  -- g equals sinc away from 0: from sin z = z • g z, we get g z = sin z / z = sinc z
  have hg_eq_sinc : g =ᶠ[𝓝[≠] 0] sinc := by
    filter_upwards [hg_eq.filter_mono nhdsWithin_le_nhds,
                    self_mem_nhdsWithin] with z hsin_eq hz
    simp only [smul_eq_mul] at hsin_eq
    have hz' : z ≠ 0 := Set.mem_compl_singleton_iff.mp hz
    rw [sinc_of_ne_zero hz']
    field_simp [hz']
    linarith [hsin_eq]
  -- Since g is continuous at 0 and sinc is continuous at 0,
  -- and they agree on the punctured neighborhood, they agree at 0
  have hg_zero : g 0 = sinc 0 := by
    have hg_cont : ContinuousAt g 0 := hg_an.continuousAt
    have hsinc_cont : ContinuousAt sinc 0 := continuous_sinc.continuousAt
    -- g → g(0) as x → 0, and sinc(x) → sinc(0) as x → 0
    -- Since g(x) = sinc(x) for x ≠ 0 near 0, limits must be equal
    have h : Tendsto g (𝓝[≠] 0) (𝓝 (sinc 0)) := by
      have := hsinc_cont.tendsto.mono_left (nhdsWithin_le_nhds (s := {0}ᶜ))
      exact this.congr' hg_eq_sinc.symm
    have h2 : Tendsto g (𝓝[≠] 0) (𝓝 (g 0)) :=
      hg_cont.tendsto.mono_left (nhdsWithin_le_nhds (s := {0}ᶜ))
    exact tendsto_nhds_unique h2 h
  -- Now sinc = g near 0, so sinc is analytic at 0
  exact hg_an.congr (hg_eq.mono fun z hsin_eq => by
    simp only [smul_eq_mul] at hsin_eq
    by_cases hz : z = 0
    · simp [hz, hg_zero]
    · rw [sinc_of_ne_zero hz]
      field_simp [hz]
      linarith [hsin_eq])

/-- sinc is analytic at every point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78e8fd84f810480297e8cf6dde76757f78c946e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
