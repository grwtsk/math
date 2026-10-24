# thetaKernel_sub_integral_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98bfe65e7f3303e55f4e7686fc5e5f9810284e7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/30d8566ece3839ddf3953b34bedb8936c6ee1b7767d190d8fcde41417a80fca4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f77a6952-3d67-87b3-198c-61557d743164",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a63c8dee-11c2-dcc9-53d3-ef29cf7394ee",
  "kind": "theorem",
  "lexical_name": "thetaKernel_sub_integral_abs_le",
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
  "slug": "thetakernel-sub-integral-abs-le--a386807bc44cd3f07526ea93",
  "source": {
    "blob": "98bfe65e7f3303e55f4e7686fc5e5f9810284e7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 123,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaIntegralTransport/Variant30d8566ece3839ddf3953b34bedb8936c6ee1b7767d190d8fcde41417a80fca4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a386807bc44cd3f07526ea9363ae4ae4f261bed9ed763ae08f2caf821cd3a64d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaIntegralTransport/Variant30d8566ece3839ddf3953b34bedb8936c6ee1b7767d190d8fcde41417a80fca4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a63c8dee-11c2-dcc9-53d3-ef29cf7394ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaKernel_sub_integral_abs_le (A : ℝ) (q : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |thetaKernel A q -
      (∫ t in (1 : ℝ)..(⌊Real.exp (2 * A)⌋₊ + 1 : ℕ),
        sourceSamplingKernel A ((q : ℝ) * t))| ≤
      ∫ t in (1 : ℝ)..(⌊Real.exp (2 * A)⌋₊ + 1 : ℕ),
        |(q : ℝ) * deriv (sourceSamplingKernel A) ((q : ℝ) * t)| := by
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
  refine he.trans_eq ?_
  apply intervalIntegral.integral_congr
  intro t ht
  have hNreal : (1 : ℝ) ≤ N := by exact_mod_cast hN
  rw [Set.uIcc_of_le hNreal] at ht
  dsimp only
  rw [(scaledSampling_hasDerivAt A q t hA hq0
    (lt_of_lt_of_le zero_lt_one ht.1)).deriv]

end
end ThetaIntegralTransportScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaIntegralTransport/Variant30d8566ece3839ddf3953b34bedb8936c6ee1b7767d190d8fcde41417a80fca4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaIntegralTransport/Variant30d8566ece3839ddf3953b34bedb8936c6ee1b7767d190d8fcde41417a80fca4.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98bfe65e7f3303e55f4e7686fc5e5f9810284e7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
