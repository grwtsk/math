# half_line_polynomial_laplace_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e54d62c-9995-4027-52f4-9206bf6b1895",
  "kind": "theorem",
  "lexical_name": "half_line_polynomial_laplace_integrable",
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
  "slug": "half-line-polynomial-laplace-integrable--728551e4762a79e33fd9a2ef",
  "source": {
    "blob": "fb321471a2e1ca82d1fb519c014e18be246a7f40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 30,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant7ef7ceeb6a2f987811484f668166e22700d2ec2ab569f10cb4e5695b4c8c011e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:728551e4762a79e33fd9a2ef8203b1ca4808a22c6fa78ac7f49bed5975d75a55",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant7ef7ceeb6a2f987811484f668166e22700d2ec2ab569f10cb4e5695b4c8c011e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e54d62c-9995-4027-52f4-9206bf6b1895`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem half_line_polynomial_laplace_integrable (k : ℕ) (s : ℂ) (hs : 0 < s.re) :
    IntegrableOn (fun y : ℝ ↦ (y : ℂ) ^ k * Complex.exp (-s * (y : ℂ))) (Ioi 0) := by
  apply (integrable_norm_iff (by fun_prop)).mp
  have hi := integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (k : ℝ)) (p := 1) (b := s.re)
    (lt_of_lt_of_le (by norm_num) (Nat.cast_nonneg k)) (by norm_num) hs
  have he : IntegrableOn (fun y : ℝ ↦ y ^ k * Real.exp (-s.re * y)) (Ioi 0) := by
    simpa only [Real.rpow_natCast, Real.rpow_one] using hi
  refine he.congr ?_
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with y hy
  change 0 < y at hy
  simp [norm_pow, Complex.norm_real, Complex.norm_exp, Complex.mul_re, abs_of_pos hy]

/-- The derivative of one higher polynomial moment retains both terms of the recurrence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant7ef7ceeb6a2f987811484f668166e22700d2ec2ab569f10cb4e5695b4c8c011e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant7ef7ceeb6a2f987811484f668166e22700d2ec2ab569f10cb4e5695b4c8c011e.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb321471a2e1ca82d1fb519c014e18be246a7f40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
