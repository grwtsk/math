# criticalDiscrepancyPrimitive_eq_primeLogSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff43cec3-0c8d-fb59-6953-35eea8a00fa8",
  "kind": "theorem",
  "lexical_name": "criticalDiscrepancyPrimitive_eq_primeLogSum",
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
  "slug": "criticaldiscrepancyprimitive-eq-primelogsum--cecf87bbc8bde2277ad4eb6c",
  "source": {
    "blob": "80ce55de1c441d92963b35fac984b2ab5f818496",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 163,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cecf87bbc8bde2277ad4eb6c5cadb64a411819ac76ab673083d95959664638f9",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff43cec3-0c8d-fb59-6953-35eea8a00fa8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalDiscrepancyPrimitive_eq_primeLogSum (u : ℝ) (hu : 0 ≤ u) :
    criticalDiscrepancyPrimitive u =
      primeLogSum u (fun t => u - t) - u ^ 2 / 2 + u + 2 * (criticalDecay u - 1) := by
  have hF : ContDiff ℝ 1 (fun t : ℝ => u - t) := contDiff_const.sub contDiff_id
  have hd (t : ℝ) : deriv (fun x : ℝ => u - x) t = -1 := by
    change deriv ((fun _ : ℝ => u) - id) t = -1
    simpa only [zero_sub] using ((hasDerivAt_const t u).sub (hasDerivAt_id t)).deriv
  have ha := primeLogSum_abel u hu (fun t => u - t) hF
  simp only [sub_self, zero_mul, zero_sub] at ha
  simp_rw [hd, mul_neg_one] at ha
  rw [intervalIntegral.integral_neg] at ha
  have hb := density_mass_integral u
  have he : criticalDiscrepancyPrimitive u =
      (∫ v in 0..u, primeLogPrefix v) -
        (∫ v in 0..u, ∫ t in 0..v, criticalDensity t) := by
    unfold criticalDiscrepancyPrimitive criticalCumulativeDiscrepancy
    exact intervalIntegral.integral_sub (prime_prefix_intervalIntegrable 0 u)
      (density_mass_continuous.intervalIntegrable (μ := volume) 0 u)
  rw [he, hb]
  linarith

/-- The left bridge endpoint is zero, including its total-division edge case. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80ce55de1c441d92963b35fac984b2ab5f818496` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
