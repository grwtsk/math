# actual_bump_vertical_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d851df23-32fa-483c-8ef1-313245db9ea4",
  "kind": "theorem",
  "lexical_name": "actual_bump_vertical_norm_le",
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
  "slug": "actual-bump-vertical-norm-le--7b59c78704695a3830591de9",
  "source": {
    "blob": "6f440d1194ffc5260e9fe9a903c6a04fe8609e58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 114,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpVerticalBudget/Variantd8d89a700b6effeb930f92bf53c7836aa128bda2e588ce8c4251c8e94571f3f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b59c78704695a3830591de9181b2f74d4d4f4ceef84849c6e37f41330749713",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpVerticalBudget/Variantd8d89a700b6effeb930f92bf53c7836aa128bda2e588ce8c4251c8e94571f3f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d851df23-32fa-483c-8ef1-313245db9ea4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_bump_vertical_norm_le (z : ℂ) (hre : 0 ≤ z.re) (hn : 1 ≤ ‖z‖) :
    ‖bumpLaplace z‖ ≤ 204288 * Real.exp z.re / ‖z‖ ^ 5 := by
  have hnpos : 0 < ‖z‖ := by linarith
  have hz : z ≠ 0 := norm_pos_iff.mp hnpos
  have he : Real.exp (-z.re) ≤ Real.exp z.re := Real.exp_le_exp.mpr (by linarith)
  have hm := endpoint_minus_norm_le z hn
  have hp := endpoint_plus_norm_le z hn
  rw [bump_laplace_endpoint_formula z hz]
  calc
    ‖384 / z ^ 9 * (Complex.exp z * (z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2 - 105 * z + 105) -
        Complex.exp (-z) * (z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2 + 105 * z + 105))‖
      ≤ (384 / ‖z‖ ^ 9) * (Real.exp z.re * (266 * ‖z‖ ^ 4) +
          Real.exp z.re * (266 * ‖z‖ ^ 4)) := by
        rw [norm_mul, norm_div, norm_pow]
        norm_num only [Complex.norm_ofNat]
        gcongr
        calc
          ‖Complex.exp z * (z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2 - 105 * z + 105) -
              Complex.exp (-z) * (z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2 + 105 * z + 105)‖
            ≤ ‖Complex.exp z * (z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2 - 105 * z + 105)‖ +
                ‖Complex.exp (-z) * (z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2 + 105 * z + 105)‖ :=
              norm_sub_le _ _
          _ ≤ _ := by
            simp only [norm_mul, Complex.norm_exp, Complex.neg_re]
            gcongr
    _ = _ := by field_simp; ring

end
end FormalResearch.RiemannHypothesis.SourceActualBumpVerticalBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpVerticalBudget/Variantd8d89a700b6effeb930f92bf53c7836aa128bda2e588ce8c4251c8e94571f3f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpVerticalBudget/Variantd8d89a700b6effeb930f92bf53c7836aa128bda2e588ce8c4251c8e94571f3f6.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f440d1194ffc5260e9fe9a903c6a04fe8609e58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
