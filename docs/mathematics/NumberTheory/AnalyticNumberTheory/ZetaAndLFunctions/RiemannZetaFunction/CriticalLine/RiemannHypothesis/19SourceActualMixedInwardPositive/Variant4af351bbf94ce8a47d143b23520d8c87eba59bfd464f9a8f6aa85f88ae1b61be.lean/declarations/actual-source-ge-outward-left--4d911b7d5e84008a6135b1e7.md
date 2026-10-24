# actual_source_ge_outward_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4817fe22-43f0-2d50-1392-6b7690520eef",
  "kind": "theorem",
  "lexical_name": "actual_source_ge_outward_left",
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
  "slug": "actual-source-ge-outward-left--4d911b7d5e84008a6135b1e7",
  "source": {
    "blob": "b6e47a30d2d068d638c1b689df93d4e34c8209fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 317,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/19SourceActualMixedInwardPositive/Variant4af351bbf94ce8a47d143b23520d8c87eba59bfd464f9a8f6aa85f88ae1b61be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d911b7d5e84008a6135b1e7faf679e38eaf21ca8f3699ccf8cabb1c63656492",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/19SourceActualMixedInwardPositive/Variant4af351bbf94ce8a47d143b23520d8c87eba59bfd464f9a8f6aa85f88ae1b61be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4817fe22-43f0-2d50-1392-6b7690520eef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_ge_outward_left {A : ℝ} (hA : 91 ≤ A) (z : ℂ)
    (ha : -(1 / 2) ≤ z.re) (ha0 : z.re ≤ 0) (hi : 12 ≤ |z.im|) :
    (negativeEndpoint A z).re <
      (actualBilateralCorrelationTransform A z).re := by
  have h := actual_mixed_inward_left hA z ha ha0 hi
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

end RH16ActualMixedInwardPositive
end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/19SourceActualMixedInwardPositive/Variant4af351bbf94ce8a47d143b23520d8c87eba59bfd464f9a8f6aa85f88ae1b61be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/19SourceActualMixedInwardPositive/Variant4af351bbf94ce8a47d143b23520d8c87eba59bfd464f9a8f6aa85f88ae1b61be.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6e47a30d2d068d638c1b689df93d4e34c8209fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
