# thetaKernel_sub_integral_abs_le_explicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff941fcb-9289-c70f-8a8e-2ccee161e693",
  "kind": "theorem",
  "lexical_name": "thetaKernel_sub_integral_abs_le_explicit",
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
  "slug": "thetakernel-sub-integral-abs-le-explicit--1e0e875205319a9b5eb425bd",
  "source": {
    "blob": "d53a2c43c1827ea04aad4b3940771d1767928b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 83,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaVariation/Variantb4bb57b998a7100ab4657be24a60cee99378514ed927a2b1235ddb89ec63372b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e0e875205319a9b5eb425bd140cdf0f21d80b49d3a1bc11a5f12b16b1d5c033",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaVariation/Variantb4bb57b998a7100ab4657be24a60cee99378514ed927a2b1235ddb89ec63372b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff941fcb-9289-c70f-8a8e-2ccee161e693`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaKernel_sub_integral_abs_le_explicit (A : ℝ) (q : ℕ)
    (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |thetaKernel A q -
      (∫ t in (1 : ℝ)..(⌊Real.exp (2 * A)⌋₊ + 1 : ℕ),
        sourceSamplingKernel A ((q : ℝ) * t))| ≤
      2 * (4 + 10 * Real.sqrt (65 / 3) / A + 4 * (65 / (3 * A ^ 2))) /
        Real.sqrt (q : ℝ) := by
  have hq0 : (0 : ℝ) < q := by exact_mod_cast (show 0 < q by omega)
  let N := ⌊Real.exp (2 * A)⌋₊ + 1
  have hN : 1 ≤ N := by dsimp [N]; omega
  rw [thetaKernel_eq_padded_sum A q hq]
  have he := SamplingError.abs_sum_sub_integral_le
    (fun t : ℝ ↦ sourceSamplingKernel A ((q : ℝ) * t)) N hN
    (fun t ht ↦ (scaledSampling_hasDerivAt A q t hA hq0
      (lt_of_lt_of_le zero_lt_one ht.1)).differentiableAt)
    (scaledSampling_derivative_integrableOn A q N hA hq0)
    (scaledSampling_endpoint_zero A q hq)
  exact he.trans (scaledSampling_variation_le A q N hA hq0 hN)

end
end ThetaVariationScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaVariation/Variantb4bb57b998a7100ab4657be24a60cee99378514ed927a2b1235ddb89ec63372b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaVariation/Variantb4bb57b998a7100ab4657be24a60cee99378514ed927a2b1235ddb89ec63372b.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d53a2c43c1827ea04aad4b3940771d1767928b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
