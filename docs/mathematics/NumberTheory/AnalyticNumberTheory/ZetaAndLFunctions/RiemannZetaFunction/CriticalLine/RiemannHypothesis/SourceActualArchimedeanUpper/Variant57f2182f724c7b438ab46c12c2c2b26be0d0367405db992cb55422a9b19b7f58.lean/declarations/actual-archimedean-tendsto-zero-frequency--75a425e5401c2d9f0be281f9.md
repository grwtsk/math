# actual_archimedean_tendsto_zero_frequency

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:487abe3f-3747-43e1-fac2-9b74947b0502",
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
  "slug": "actual-archimedean-tendsto-zero-frequency--75a425e5401c2d9f0be281f9",
  "source": {
    "blob": "2485ef4658700d656bf8bb6d458e2594c5989559",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 109,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variant57f2182f724c7b438ab46c12c2c2b26be0d0367405db992cb55422a9b19b7f58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75a425e5401c2d9f0be281f98991f39e878123fc391cd5ff91905be7f5b318eb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variant57f2182f724c7b438ab46c12c2c2b26be0d0367405db992cb55422a9b19b7f58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:487abe3f-3747-43e1-fac2-9b74947b0502`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–127.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variant57f2182f724c7b438ab46c12c2c2b26be0d0367405db992cb55422a9b19b7f58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variant57f2182f724c7b438ab46c12c2c2b26be0d0367405db992cb55422a9b19b7f58.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2485ef4658700d656bf8bb6d458e2594c5989559` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
