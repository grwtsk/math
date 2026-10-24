# literal_density_exponential_integrand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f6309cc-c618-89ad-34b1-abc30d6771d3",
  "kind": "theorem",
  "lexical_name": "literal_density_exponential_integrand",
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
  "slug": "literal-density-exponential-integrand--ec126eaa65163195dc777328",
  "source": {
    "blob": "829e2f7b964c284c3af52be78aa1553b534e53af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridDensityReadout/Variantff6a0b5caae862bb2bab8e59e06ee3328f979946fe8da8cd698363dcfadd0b7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec126eaa65163195dc7773282acf21ce8538c73609e387279ec7c0c51d553d66",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridDensityReadout/Variantff6a0b5caae862bb2bab8e59e06ee3328f979946fe8da8cd698363dcfadd0b7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f6309cc-c618-89ad-34b1-abc30d6771d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_density_exponential_integrand (A t : ℝ) :
    densitySourceInput A (Real.exp t) * Real.exp t =
      (Complex.exp ((1 / 2 : ℂ) * (t : ℂ)) * (C A t : ℂ)).re +
        (phase * exponent * Complex.exp (mode * (t : ℂ)) * (C A t : ℂ)).re := by
  unfold densitySourceInput density
  rw [Real.log_exp, ← Real.exp_mul]
  have heR : Real.exp (t * (-(1 / 2) : ℝ)) * Real.exp t = Real.exp (t / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have heC : (Real.exp (t / 2) : ℂ) *
      Complex.exp ((exponent - 1) * (t : ℂ)) = Complex.exp (mode * (t : ℂ)) := by
    rw [Complex.ofReal_exp, ← Complex.exp_add]
    congr 1
    unfold exponent
    push_cast
    ring
  have hbase : Complex.exp ((1 / 2 : ℂ) * (t : ℂ)) = (Real.exp (t / 2) : ℂ) := by
    rw [Complex.ofReal_exp]
    congr 1
    push_cast
    ring
  calc
    _ = (Real.exp (t * (-(1 / 2) : ℝ)) * Real.exp t) * C A t *
        (1 + (phase * exponent * Complex.exp ((exponent - 1) * (t : ℂ))).re) := by ring
    _ = Real.exp (t / 2) * C A t *
        (1 + (phase * exponent * Complex.exp ((exponent - 1) * (t : ℂ))).re) := by rw [heR]
    _ = _ := by
      rw [hbase, ← heC]
      simp only [Complex.mul_re, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im, mul_zero, zero_mul, sub_zero, add_zero]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridDensityReadout/Variantff6a0b5caae862bb2bab8e59e06ee3328f979946fe8da8cd698363dcfadd0b7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridDensityReadout/Variantff6a0b5caae862bb2bab8e59e06ee3328f979946fe8da8cd698363dcfadd0b7b.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `829e2f7b964c284c3af52be78aa1553b534e53af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
