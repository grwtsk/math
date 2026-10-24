# Gamma_mul_Gamma_eq_betaIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "19004bb83df9dbb84f2643aec6bec388982f15a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0492d0b2-b745-28f8-bcec-17930d6849d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e8eeae8-41ad-308f-b4d7-d163c79455f5",
  "kind": "theorem",
  "lexical_name": "Gamma_mul_Gamma_eq_betaIntegral",
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
  "slug": "gamma-mul-gamma-eq-betaintegral--2074733bde8fcedc3e7244d3",
  "source": {
    "blob": "19004bb83df9dbb84f2643aec6bec388982f15a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 137,
    "path": "GRWTSK/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2074733bde8fcedc3e7244d3fb6232991c11dec10447f84b9d4e3bb1185b0df8",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e8eeae8-41ad-308f-b4d7-d163c79455f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Gamma_mul_Gamma_eq_betaIntegral {s t : ℂ} (hs : 0 < re s) (ht : 0 < re t) :
    Gamma s * Gamma t = Gamma (s + t) * betaIntegral s t := by
  -- Note that we haven't proved (yet) that the Gamma function has no zeroes, so we can't formulate
  -- this as a formula for the Beta function.
  have conv_int := integral_posConvolution
    (GammaIntegral_convergent hs) (GammaIntegral_convergent ht) (ContinuousLinearMap.mul ℝ ℂ)
  simp_rw [ContinuousLinearMap.mul_apply'] at conv_int
  have hst : 0 < re (s + t) := by rw [add_re]; exact add_pos hs ht
  rw [Gamma_eq_integral hs, Gamma_eq_integral ht, Gamma_eq_integral hst, GammaIntegral,
    GammaIntegral, GammaIntegral, ← conv_int, ← integral_mul_right (betaIntegral _ _)]
  refine' set_integral_congr measurableSet_Ioi fun x hx => _
  rw [mul_assoc, ← betaIntegral_scaled s t hx, ← intervalIntegral.integral_const_mul]
  congr 1 with y : 1
  push_cast
  suffices Complex.exp (-x) = Complex.exp (-y) * Complex.exp (-(x - y)) by rw [this]; ring
  · rw [← Complex.exp_add]; congr 1; abel
#align complex.Gamma_mul_Gamma_eq_beta_integral Complex.Gamma_mul_Gamma_eq_betaIntegral

/-- Recurrence formula for the Beta function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19004bb83df9dbb84f2643aec6bec388982f15a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
