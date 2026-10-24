# actualXiComplexLaplace_mul_eq_MellinSeven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f224386e-aee3-27ea-eaca-8d3bb10b8703",
  "kind": "theorem",
  "lexical_name": "actualXiComplexLaplace_mul_eq_MellinSeven",
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
  "slug": "actualxicomplexlaplace-mul-eq-mellinseven--628d916a03e47178ef55e97a",
  "source": {
    "blob": "3da8f6b3f7ba4223a2f7449100274ed36e616a55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 193,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant9d2ed530422b42d6b1b8f478e26d134bfc8317d761e154c1f11f4dd4d9a00a79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:628d916a03e47178ef55e97a78f8e0b7998c6ec3dbb9ef38e89b70a5c3dec624",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant9d2ed530422b42d6b1b8f478e26d134bfc8317d761e154c1f11f4dd4d9a00a79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f224386e-aee3-27ea-eaca-8d3bb10b8703`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiComplexLaplace_mul_eq_MellinSeven {z : ℂ} (hz : 1 / 2 < z.re) :
    z * actualXiComplexLaplace z = actualXiComplexMellinTailSeven (z + 1 / 2) := by
  have hd := intervalIntegral_tendsto_integral_Ioi (Real.log 7)
    (actualXiDensityLaplace_integrableOn hz) tendsto_id
  have hf := intervalIntegral_tendsto_integral_Ioi (Real.log 7)
    (actualXiComplexLaplace_integrableOn hz) tendsto_id
  have he : (fun b : ℝ => z * ∫ t in Real.log 7..b,
      (actualAnchoredXiTailPrimitive t : ℂ) * Complex.exp (-z * (t : ℂ))) =ᶠ[atTop]
        (fun b : ℝ => (∫ t in Real.log 7..b,
          (actualXiTailTimeDensity t : ℂ) * Complex.exp (-z * (t : ℂ))) -
            (actualAnchoredXiTailPrimitive b : ℂ) * Complex.exp (-z * (b : ℂ))) := by
    filter_upwards [eventually_ge_atTop (Real.log 7)] with b hb
    exact actualXiComplexLaplace_finite_abel hz hb
  have hh := tendsto_nhds_unique (tendsto_const_nhds.mul hf)
    ((hd.sub (actualXiComplexLaplace_boundary_tendsto_zero hz)).congr' he.symm)
  simpa only [sub_zero, actualXiDensityLaplace_eq_MellinSeven, actualXiComplexLaplace] using hh

/-- The initial actual F7 transform keeps the full lower head, gamma and pole return. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant9d2ed530422b42d6b1b8f478e26d134bfc8317d761e154c1f11f4dd4d9a00a79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant9d2ed530422b42d6b1b8f478e26d134bfc8317d761e154c1f11f4dd4d9a00a79.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3da8f6b3f7ba4223a2f7449100274ed36e616a55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
