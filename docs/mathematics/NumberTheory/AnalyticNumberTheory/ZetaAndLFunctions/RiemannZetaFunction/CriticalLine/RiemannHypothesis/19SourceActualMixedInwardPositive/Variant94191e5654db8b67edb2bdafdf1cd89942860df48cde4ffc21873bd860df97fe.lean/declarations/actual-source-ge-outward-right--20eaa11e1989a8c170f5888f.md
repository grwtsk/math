# actual_source_ge_outward_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a9fce39-a09d-a74c-5cea-843bb73030f7",
  "kind": "theorem",
  "lexical_name": "actual_source_ge_outward_right",
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
  "slug": "actual-source-ge-outward-right--20eaa11e1989a8c170f5888f",
  "source": {
    "blob": "0a9298fd0022f8b00cd2b86ce6d11e3d09ac6d7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 291,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/19SourceActualMixedInwardPositive/Variant94191e5654db8b67edb2bdafdf1cd89942860df48cde4ffc21873bd860df97fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20eaa11e1989a8c170f5888ff2ffc700c739da484f8d9314a0b98ec6947d5793",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/19SourceActualMixedInwardPositive/Variant94191e5654db8b67edb2bdafdf1cd89942860df48cde4ffc21873bd860df97fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a9fce39-a09d-a74c-5cea-843bb73030f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_ge_outward_right {A : ℝ} (hA : 91 ≤ A) (z : ℂ)
    (ha0 : 0 ≤ z.re) (ha : z.re ≤ 1 / 2) (hi : 12 ≤ |z.im|) :
    (positiveEndpoint A z).re <
      (actualBilateralCorrelationTransform A z).re := by
  have h := actual_mixed_inward_right hA z ha0 ha hi
  have hz : z ≠ 0 := by intro hz; norm_num [hz] at hi
  rw [actual_source_endpoint_recovery (by linarith : 1 ≤ A) z hz]
  rw [Complex.add_re, Complex.add_re]
  rw [Complex.add_re] at h
  have hk : 0 < 384 ^ 2 /
      (FormalResearch.RiemannHypothesis.SourcePairing.sourceNormalization A * A ^ 9) :=
    div_pos (by norm_num) (mul_pos
      (FormalResearch.RiemannHypothesis.SourcePairing.source_normalization_pos A (by linarith))
      (pow_pos (by linarith) 9))
  have hn : 0 ≤ ‖-(z⁻¹ ^ 6)‖ := norm_nonneg _
  nlinarith only [h, hk, hn]

/-- The same full-source outward comparison holds on the reflected left strip. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/19SourceActualMixedInwardPositive/Variant94191e5654db8b67edb2bdafdf1cd89942860df48cde4ffc21873bd860df97fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/19SourceActualMixedInwardPositive/Variant94191e5654db8b67edb2bdafdf1cd89942860df48cde4ffc21873bd860df97fe.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a9298fd0022f8b00cd2b86ce6d11e3d09ac6d7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
