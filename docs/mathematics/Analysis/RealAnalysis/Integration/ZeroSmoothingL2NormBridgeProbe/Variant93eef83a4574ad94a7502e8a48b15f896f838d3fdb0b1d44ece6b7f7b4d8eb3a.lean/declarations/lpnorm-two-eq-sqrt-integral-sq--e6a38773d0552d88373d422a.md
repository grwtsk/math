# lpNorm_two_eq_sqrt_integral_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d78f726-6dd5-ba64-d345-96aa30cd5565",
  "kind": "theorem",
  "lexical_name": "lpNorm_two_eq_sqrt_integral_sq",
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
  "slug": "lpnorm-two-eq-sqrt-integral-sq--e6a38773d0552d88373d422a",
  "source": {
    "blob": "541550b6f5d24b142634b0e58f3951cbd61f23df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 22,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2NormBridgeProbe/Variant93eef83a4574ad94a7502e8a48b15f896f838d3fdb0b1d44ece6b7f7b4d8eb3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6a38773d0552d88373d422a78c8f9349f370b7937ddf5230dfd5651a9225f92",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSmoothingL2NormBridgeProbe/Variant93eef83a4574ad94a7502e8a48b15f896f838d3fdb0b1d44ece6b7f7b4d8eb3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d78f726-6dd5-ba64-d345-96aa30cd5565`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lpNorm_two_eq_sqrt_integral_sq {f : α → ℝ} (hf : MemLp f 2 μ) :
    lpNorm f 2 μ = Real.sqrt (∫ x, f x ^ 2 ∂μ) := by
  rw [lpNorm_eq_integral_norm_rpow_toReal (by norm_num) (by simp)
    hf.aestronglyMeasurable]
  simp only [ENNReal.toReal_ofNat, Real.rpow_two, Real.norm_eq_abs, sq_abs,
    Real.sqrt_eq_rpow, one_div]

/-- Squared-error integrals are convergent before the limiting value is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingL2NormBridgeProbe/Variant93eef83a4574ad94a7502e8a48b15f896f838d3fdb0b1d44ece6b7f7b4d8eb3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2NormBridgeProbe/Variant93eef83a4574ad94a7502e8a48b15f896f838d3fdb0b1d44ece6b7f7b4d8eb3a.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `541550b6f5d24b142634b0e58f3951cbd61f23df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
