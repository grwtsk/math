# half_line_polynomial_laplace_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8c4a643f91247e50ac8d41ea4944d45524688f88",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 22,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:722463f1-3932-d274-4fbd-fa5ce56f3af6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6cce14d1-933e-f4bc-d799-c3dcee7a8b8e",
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
  "slug": "half-line-polynomial-laplace-integrable--8f437b0b4fee26bc76b60fd0",
  "source": {
    "blob": "8c4a643f91247e50ac8d41ea4944d45524688f88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 22,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f437b0b4fee26bc76b60fd027f41f3a794674a77075c749e2079661398e6ffc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cce14d1-933e-f4bc-d799-c3dcee7a8b8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–35.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c4a643f91247e50ac8d41ea4944d45524688f88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
