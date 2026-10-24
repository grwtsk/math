# I_mul_vertical_cauchy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78862bf6-46e0-3d28-be9a-1099defe20be",
  "kind": "theorem",
  "lexical_name": "I_mul_vertical_cauchy",
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
  "slug": "i-mul-vertical-cauchy--85a1411474cc3ff80ab8f798",
  "source": {
    "blob": "04a5862bf8ecf094317d1cfa2f0e02a615a1ab11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 72,
    "path": "GRWTSK/Analysis/Complex/RectangularCauchyKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85a1411474cc3ff80ab8f7986ed3b8014ab9e5ed34534837ddaa9e6833faff51",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RectangularCauchyKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78862bf6-46e0-3d28-be9a-1099defe20be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem I_mul_vertical_cauchy (p : ℂ) (c T : ℝ) (hc : c - p.re ≠ 0) :
    Complex.I * vertical (fun z => (z - p)⁻¹) c T =
      ((Real.log ((T - p.im) ^ 2 + (c - p.re) ^ 2) / 2 -
        Real.log ((-T - p.im) ^ 2 + (c - p.re) ^ 2) / 2 : ℝ) : ℂ) +
      ((Real.arctan ((T - p.im) / (c - p.re)) -
        Real.arctan ((-T - p.im) / (c - p.re)) : ℝ) : ℂ) * Complex.I := by
  have hcoord (t : ℝ) : (c : ℂ) + (t : ℂ) * Complex.I - p =
      ((c - p.re : ℝ) : ℂ) + ((t - p.im : ℝ) : ℂ) * Complex.I := by
    apply Complex.ext <;> simp
  have hf := Complex.continuous_ofReal.comp (continuous_radial_density p.im (c - p.re) hc)
  have hg := (Complex.continuous_ofReal.comp
    (continuous_angular_density p.im (c - p.re) hc)).mul (continuous_const : Continuous (fun _ : ℝ => Complex.I))
  unfold vertical
  rw [← intervalIntegral.integral_const_mul]
  simp_rw [hcoord, I_mul_inverse_cartesian]
  have he := intervalIntegral.integral_add
    (hf.intervalIntegrable (μ := volume) (-T) T) (hg.intervalIntegrable (μ := volume) (-T) T)
  simp only [Function.comp_apply, Pi.mul_apply] at he
  rw [he,
    intervalIntegral.integral_mul_const, intervalIntegral.integral_ofReal,
    intervalIntegral.integral_ofReal, integral_radial_density (-T) T p.im (c - p.re) hc,
    integral_angular_density (-T) T p.im (c - p.re) hc]

/-- Direct four-edge computation for any strictly interior complex point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RectangularCauchyKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RectangularCauchyKernel.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04a5862bf8ecf094317d1cfa2f0e02a615a1ab11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
