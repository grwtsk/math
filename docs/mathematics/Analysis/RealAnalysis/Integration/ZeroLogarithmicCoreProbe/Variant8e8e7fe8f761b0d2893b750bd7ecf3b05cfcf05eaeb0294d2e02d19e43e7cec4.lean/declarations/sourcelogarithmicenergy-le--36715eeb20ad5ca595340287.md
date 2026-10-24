# sourceLogarithmicEnergy_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0ea0eed-3b37-9ec1-f3c2-e7ff38ffe3a5",
  "kind": "theorem",
  "lexical_name": "sourceLogarithmicEnergy_le",
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
  "slug": "sourcelogarithmicenergy-le--36715eeb20ad5ca595340287",
  "source": {
    "blob": "12b8ffa2b1b08a64e1c65a65e9a12d9ef641b3cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 165,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroLogarithmicCoreProbe/Variant8e8e7fe8f761b0d2893b750bd7ecf3b05cfcf05eaeb0294d2e02d19e43e7cec4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36715eeb20ad5ca59534028794cbe05818d9e7cab2e16e4b8c662e476d583ad9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroLogarithmicCoreProbe/Variant8e8e7fe8f761b0d2893b750bd7ecf3b05cfcf05eaeb0294d2e02d19e43e7cec4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0ea0eed-3b37-9ec1-f3c2-e7ff38ffe3a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceLogarithmicEnergy_le (f : ℝ → ℝ) (hf : Integrable f volume)
    (hd : Differentiable ℝ f) (hdi : Integrable (deriv f) volume) :
    sourceLogarithmicEnergy f ≤
      (fourierEnvelopeConstant /
        (2 * Real.pi)) * ((∫ x : ℝ, ‖f x‖) ^ 2 + (∫ x : ℝ, ‖deriv f x‖) ^ 2) := by
  have h := div_le_div_of_nonneg_right (rawLogarithmicEnergy_le f hf hd hdi)
    (by positivity : 0 ≤ 2 * Real.pi)
  simpa only [sourceLogarithmicEnergy, div_mul_eq_mul_div] using h

/-- Vanishing genuine L¹ masses of the function and its derivative give raw energy convergence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroLogarithmicCoreProbe/Variant8e8e7fe8f761b0d2893b750bd7ecf3b05cfcf05eaeb0294d2e02d19e43e7cec4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroLogarithmicCoreProbe/Variant8e8e7fe8f761b0d2893b750bd7ecf3b05cfcf05eaeb0294d2e02d19e43e7cec4.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12b8ffa2b1b08a64e1c65a65e9a12d9ef641b3cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
