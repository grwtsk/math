# generic_affine_wrong_fractional_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f5f0ee2-5bd3-0625-5d60-227f968d9194",
  "kind": "theorem",
  "lexical_name": "generic_affine_wrong_fractional_sign",
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
  "slug": "generic-affine-wrong-fractional-sign--99964fca3e6956c12c8ff236",
  "source": {
    "blob": "e9f88d74018770d371f9e9b25c7e35028bd9978e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 88,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReflectedOnePrefixFixtures/Variantb0c18f6da4a7d9d265a774e8dbbc2a9555351abe0673b975fdb7adc9c21c3dab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99964fca3e6956c12c8ff23662651fe400e7bd9e8b0e18bd1db8245f7d1bf3d2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReflectedOnePrefixFixtures/Variantb0c18f6da4a7d9d265a774e8dbbc2a9555351abe0673b975fdb7adc9c21c3dab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f5f0ee2-5bd3-0625-5d60-227f968d9194`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generic_affine_wrong_fractional_sign :
    (1 : ℝ) - (∫ u in (0 : ℝ)..1, u) ≠
      -(∫ u in (0 : ℝ)..1, Int.fract u * deriv (fun t : ℝ => t) u) := by
  have h := unit_right_sampling_identity (fun t : ℝ => t) contDiff_id 0
  have hi : (∫ u in (0 : ℝ)..1, u) = (1 / 2 : ℝ) := by
    norm_num [intervalIntegral.integral_id]
  norm_num only [Nat.cast_zero, zero_add, hi] at h
  rw [hi, ← h]
  norm_num

end
end FormalResearch.RiemannHypothesis.SourceReflectedOnePrefixFixtures
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReflectedOnePrefixFixtures/Variantb0c18f6da4a7d9d265a774e8dbbc2a9555351abe0673b975fdb7adc9c21c3dab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReflectedOnePrefixFixtures/Variantb0c18f6da4a7d9d265a774e8dbbc2a9555351abe0673b975fdb7adc9c21c3dab.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9f88d74018770d371f9e9b25c7e35028bd9978e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
