# thetaRemainder_scale_difference_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "18e108e9b8d49a0a7e84b120f4decead12fd5af2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 12,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/bec0d11667caa8aa9d9ba22988cea933f6deae6f8597247f327e27ac2d4a5032.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa9156a9-3ea6-273b-3ff1-cc1450cc4790",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:83149e09-b47a-5e79-39c2-eb40103cb04f",
  "kind": "theorem",
  "lexical_name": "thetaRemainder_scale_difference_abs_le",
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
  "slug": "thetaremainder-scale-difference-abs-le--e212c52c48b34160744adf2d",
  "source": {
    "blob": "18e108e9b8d49a0a7e84b120f4decead12fd5af2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 12,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaScaleComparison/Variantbec0d11667caa8aa9d9ba22988cea933f6deae6f8597247f327e27ac2d4a5032.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e212c52c48b34160744adf2d3773f627f0ce8f1b999cdea72d02a1df3bdabb91",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaScaleComparison/Variantbec0d11667caa8aa9d9ba22988cea933f6deae6f8597247f327e27ac2d4a5032.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83149e09-b47a-5e79-39c2-eb40103cb04f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaRemainder_scale_difference_abs_le (A : ℝ) (p q : ℕ)
    (hA : 1 ≤ A) (hp : 1 ≤ p) (hq : 1 ≤ q) :
    |ThetaRemainder.thetaRemainder A q - ThetaRemainder.thetaRemainder A (p * q)| ≤
      (2 * (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
        8 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt (q : ℝ)) *
          (1 - 1 / Real.sqrt (p : ℝ)) := by
  have hpr : (1 : ℝ) ≤ p := by exact_mod_cast hp
  have hqr : (1 : ℝ) ≤ q := by exact_mod_cast hq
  have hsqrt : (1 : ℝ) ≤ Real.sqrt (p : ℝ) := by
    simpa only [Real.sqrt_one] using Real.sqrt_le_sqrt hpr
  have hs := composed_abs_sub_le (realThetaRemainder A) (q : ℝ)
    (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
      8 * Real.sqrt (325325 / 18) / A ^ 3) 1 (Real.sqrt (p : ℝ)) hqr le_rfl hsqrt
    (fun x hx ↦ (realThetaRemainder_hasDerivAt A x hA
      (zero_lt_one.trans_le hx)).continuousAt.continuousWithinAt)
    (fun x hx ↦ (realThetaRemainder_hasDerivAt A x hA
      (zero_lt_one.trans hx)).differentiableAt)
    (fun x hx ↦ realThetaRemainder_derivative_abs_le A x hA hx.le)
  rw [one_pow, mul_one, Real.sq_sqrt (Nat.cast_nonneg p), div_one,
    ← Nat.cast_mul, Nat.mul_comm q p,
    realThetaRemainder_eq_nat A q hq,
    realThetaRemainder_eq_nat A (p * q) (Nat.mul_pos hp hq)] at hs
  exact hs

end ThetaScaleComparisonScratch

#print axioms ThetaScaleComparisonScratch.thetaRemainder_scale_difference_abs_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaScaleComparison/Variantbec0d11667caa8aa9d9ba22988cea933f6deae6f8597247f327e27ac2d4a5032.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaScaleComparison/Variantbec0d11667caa8aa9d9ba22988cea933f6deae6f8597247f327e27ac2d4a5032.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18e108e9b8d49a0a7e84b120f4decead12fd5af2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
