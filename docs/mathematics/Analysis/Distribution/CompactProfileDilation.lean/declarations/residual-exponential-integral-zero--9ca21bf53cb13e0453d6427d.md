# residual_exponential_integral_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aabff00d-28f7-6dc4-71c6-a5b2582ef098",
  "kind": "theorem",
  "lexical_name": "residual_exponential_integral_zero",
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
  "slug": "residual-exponential-integral-zero--9ca21bf53cb13e0453d6427d",
  "source": {
    "blob": "629b8cbebe9a99eeab159d1fd0f53f8818a5f1a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 134,
    "path": "GRWTSK/Analysis/Distribution/CompactProfileDilation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ca21bf53cb13e0453d6427d2a4c7f4555420ac9ae0da8ec7c1c144b78a07c54",
  "verification": {
    "reference": "docs/verification/Analysis/Distribution/CompactProfileDilation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aabff00d-28f7-6dc4-71c6-a5b2582ef098`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_exponential_integral_zero {A : ℝ} (hA : 0 < A) {c : ℝ}
    (hc : c ^ 2 = (1 / 4 : ℝ)) :
    (∫ x : ℝ, sourceResidual A x * Real.exp (c * x)) = 0 := by
  have ce : Continuous (fun x : ℝ ↦ Real.exp (c * x)) := by fun_prop
  have sourceProduct := compact_product_integrable (source_continuous A)
    (source_hasCompactSupport hA) ce
  have secondProduct := compact_product_integrable (source_second_continuous A)
    (source_second_hasCompactSupport hA) ce
  simp_rw [sourceResidual_eq, sub_mul]
  have quarterProduct : Integrable (fun x ↦ (1 / 4 : ℝ) * source A x * Real.exp (c * x)) := by
    simpa only [mul_assoc] using sourceProduct.const_mul (1 / 4 : ℝ)
  rw [integral_sub secondProduct quarterProduct]
  simp_rw [mul_assoc]
  rw [integral_const_mul, second_derivative_exponential_integral hA, hc]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Distribution/CompactProfileDilation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Distribution/CompactProfileDilation.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `629b8cbebe9a99eeab159d1fd0f53f8818a5f1a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
