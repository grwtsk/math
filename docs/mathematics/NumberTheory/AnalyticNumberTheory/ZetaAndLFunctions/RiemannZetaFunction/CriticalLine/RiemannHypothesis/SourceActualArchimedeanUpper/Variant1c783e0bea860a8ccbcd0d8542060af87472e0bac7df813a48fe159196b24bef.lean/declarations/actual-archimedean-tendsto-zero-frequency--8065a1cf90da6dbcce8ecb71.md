# actual_archimedean_tendsto_zero_frequency

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ca15c69-0818-e1d7-fa91-770f11726b07",
  "kind": "theorem",
  "lexical_name": "actual_archimedean_tendsto_zero_frequency",
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
  "slug": "actual-archimedean-tendsto-zero-frequency--8065a1cf90da6dbcce8ecb71",
  "source": {
    "blob": "41bb785d4a37b07835a8b2d2c7e15d8d3afda743",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 101,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variant1c783e0bea860a8ccbcd0d8542060af87472e0bac7df813a48fe159196b24bef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8065a1cf90da6dbcce8ecb712d0e8a6a85a6d83383e18650b7d72d9bce707903",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variant1c783e0bea860a8ccbcd0d8542060af87472e0bac7df813a48fe159196b24bef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ca15c69-0818-e1d7-fa91-770f11726b07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_archimedean_tendsto_zero_frequency :
    Tendsto (fun A : ℝ => archimedeanValue explicitSecondDerivative A)
      atTop (𝓝 (archimedeanMultiplier 0)) := by
  have hbound : Tendsto (fun A : ℝ => (18 * (162826 / 7623 : ℝ)) / A^2)
      atTop (𝓝 0) := by
    simpa only [div_eq_mul_inv, inv_pow, zero_pow (by decide : 2 ≠ 0), mul_zero] using
      (tendsto_inv_atTop_zero.pow 2).const_mul (18 * (162826 / 7623 : ℝ))
  have hz : Tendsto (fun A : ℝ =>
      archimedeanValue explicitSecondDerivative A - archimedeanMultiplier 0)
      atTop (𝓝 0) := by
    apply squeeze_zero' _ _ hbound
    · filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
      exact (actual_archimedean_two_sided hA).1
    · filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
      exact (actual_archimedean_two_sided hA).2
  simpa only [sub_add_cancel, zero_add] using hz.add_const (archimedeanMultiplier 0)

end
end FormalResearch.RiemannHypothesis.SourceActualArchimedeanUpper
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variant1c783e0bea860a8ccbcd0d8542060af87472e0bac7df813a48fe159196b24bef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variant1c783e0bea860a8ccbcd0d8542060af87472e0bac7df813a48fe159196b24bef.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41bb785d4a37b07835a8b2d2c7e15d8d3afda743` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
