# symmetricTriangularKernelDecay_of_offBoundaryClosedForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85797205-7bf9-478f-afa9-0a6455fc6535",
  "kind": "theorem",
  "lexical_name": "symmetricTriangularKernelDecay_of_offBoundaryClosedForm",
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
  "slug": "symmetrictriangularkerneldecay-of-offboundaryclosedform--d150c86f7e66cd11d28aff26",
  "source": {
    "blob": "d554b23286a637fd28751aefca1dec659a17e993",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 38,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernelDomain.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d150c86f7e66cd11d28aff262fa575f619a4054ea69a369fd4e929f8e6e4e7d7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernelDomain.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85797205-7bf9-478f-afa9-0a6455fc6535`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symmetricTriangularKernelDecay_of_offBoundaryClosedForm
    (hclosed : SymmetricTriangularKernelClosedFormOffBoundaryClaim) :
    SymmetricTriangularKernelDecayClaim := by
  refine ⟨(1 : ℝ) / 4, by norm_num, ?_⟩
  intro N hN t ht0 htHalf
  have hdenLower :
      2 * |t| ≤ |Real.sin (Real.pi * t)| :=
    abs_sin_pi_mul_lower htHalf
  have hnum :
      |Real.sin (Real.pi * (N : ℝ) * t)| ≤ 1 :=
    Real.abs_sin_le_one _
  have hNreal : (0 : ℝ) < (N : ℝ) := by exact_mod_cast hN
  rw [hclosed N hN t ht0 htHalf]
  simp only [← Complex.ofReal_sin, norm_div, norm_pow,
    Complex.norm_real, Real.norm_eq_abs]
  have hratio :
      |Real.sin (Real.pi * (N : ℝ) * t)| /
          |Real.sin (Real.pi * t)| ≤
        1 / (2 * |t|) := by
    apply div_le_div hnum (by positivity) hdenLower (by positivity)
  have hratio0 :
      0 ≤
        |Real.sin (Real.pi * (N : ℝ) * t)| /
          |Real.sin (Real.pi * t)| := by
    positivity
  have hsq :
      (|Real.sin (Real.pi * (N : ℝ) * t)| /
          |Real.sin (Real.pi * t)|)^2 ≤
        (1 / (2 * |t|))^2 := by
    exact pow_le_pow_left₀ hratio0 hratio 2
  have hcalc :
      (1 / (2 * |t|))^2 / (N : ℝ) =
        ((1 : ℝ) / 4) / ((N : ℝ) * t^2) := by
    rw [sq_abs]
    field_simp [hNreal.ne', ne_of_gt ht0]
    ring
  calc
    ((|Real.sin (Real.pi * (N : ℝ) * t)| /
        |Real.sin (Real.pi * t)|)^2) / (N : ℝ)
        ≤ ((1 / (2 * |t|))^2) / (N : ℝ) := by
          exact div_le_div_of_nonneg_right hsq hNreal.le
    _ = ((1 : ℝ) / 4) / ((N : ℝ) * t^2) := hcalc

/-- The older globally quantified interface is stronger than necessary; when
available it restricts to the corrected off-boundary claim. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernelDomain.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernelDomain.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d554b23286a637fd28751aefca1dec659a17e993` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
