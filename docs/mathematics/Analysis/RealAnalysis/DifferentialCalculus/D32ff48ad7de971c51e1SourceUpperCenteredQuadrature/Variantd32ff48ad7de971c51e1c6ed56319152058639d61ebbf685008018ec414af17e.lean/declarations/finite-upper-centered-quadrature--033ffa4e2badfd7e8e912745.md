# finite_upper_centered_quadrature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "401fa767dd75e73aa853915ac1e24e0a8841c97f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d32ff48ad7de971c51e1c6ed56319152058639d61ebbf685008018ec414af17e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9cf4584-b7eb-0d80-36df-7076c5b5058a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9643cf2-1174-ce75-6a06-ae852c0b591b",
  "kind": "theorem",
  "lexical_name": "finite_upper_centered_quadrature",
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
  "slug": "finite-upper-centered-quadrature--033ffa4e2badfd7e8e912745",
  "source": {
    "blob": "401fa767dd75e73aa853915ac1e24e0a8841c97f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variantd32ff48ad7de971c51e1c6ed56319152058639d61ebbf685008018ec414af17e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:033ffa4e2badfd7e8e91274502f73e9626495e2027288189e140c91d54febaae",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variantd32ff48ad7de971c51e1c6ed56319152058639d61ebbf685008018ec414af17e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9643cf2-1174-ce75-6a06-ae852c0b591b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_upper_centered_quadrature (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f) (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, f n) =
      (∫ u in 1..(N + 1 : ℝ), f u) + (f 1 - f (N + 1 : ℝ)) / 2 +
        ∫ u in 1..(N + 1 : ℝ), centeredSawtooth u * deriv f u := by
  have hq := finite_quadrature f hf N
  have hz := unit_right_sampling_identity f hf 0
  simp only [Nat.cast_zero, zero_add] at hz
  have hfadd := intervalIntegral.integral_add_adjacent_intervals
    (hf.continuous.intervalIntegrable (μ := volume) 0 1)
    (hf.continuous.intervalIntegrable (μ := volume) 1 (N + 1 : ℝ))
  have hdadd := intervalIntegral.integral_add_adjacent_intervals
    (fract_deriv_intervalIntegrable f hf 0 1)
    (fract_deriv_intervalIntegrable f hf 1 (N + 1 : ℝ))
  have hd : (∫ u in 1..(N + 1 : ℝ), deriv f u) = f (N + 1 : ℝ) - f 1 := by
    rw [intervalIntegral.integral_deriv_eq_sub]
    · intro u _
      exact hf.differentiable (by norm_num) u
    · exact hf.continuous_deriv_one.intervalIntegrable _ _
  have he : (fun u => centeredSawtooth u * deriv f u) =
      (fun u => Int.fract u * deriv f u - deriv f u / 2) := by
    funext u
    unfold centeredSawtooth
    ring
  have hc : (∫ u in 1..(N + 1 : ℝ), centeredSawtooth u * deriv f u) =
      (∫ u in 1..(N + 1 : ℝ), Int.fract u * deriv f u) -
        (f (N + 1 : ℝ) - f 1) / 2 := by
    rw [he, intervalIntegral.integral_sub
      (fract_deriv_intervalIntegrable f hf 1 (N + 1 : ℝ))
      ((hf.continuous_deriv_one.intervalIntegrable _ _).div_const 2),
      intervalIntegral.integral_div, hd]
  linarith only [hq, hz, hfadd, hdadd, hc]

/-- Actual global derivative existence and compact support justify the upper signed pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variantd32ff48ad7de971c51e1c6ed56319152058639d61ebbf685008018ec414af17e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variantd32ff48ad7de971c51e1c6ed56319152058639d61ebbf685008018ec414af17e.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401fa767dd75e73aa853915ac1e24e0a8841c97f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
