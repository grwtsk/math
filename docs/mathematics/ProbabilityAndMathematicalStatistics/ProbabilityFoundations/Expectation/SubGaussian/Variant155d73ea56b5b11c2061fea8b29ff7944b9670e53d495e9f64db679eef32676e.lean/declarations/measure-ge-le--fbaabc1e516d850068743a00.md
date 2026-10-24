# measure_ge_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b9a1cb9-f43d-d0d5-b66d-3b96fd6c673a",
  "kind": "lemma",
  "lexical_name": "measure_ge_le",
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
  "slug": "measure-ge-le--fbaabc1e516d850068743a00",
  "source": {
    "blob": "0392f56ed0dce14393aa269b42c8ddc86d59f0e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 340,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/SubGaussian/Variant155d73ea56b5b11c2061fea8b29ff7944b9670e53d495e9f64db679eef32676e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbaabc1e516d850068743a0047c215389f8a23ec159cda932cd365350176c894",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/SubGaussian/Variant155d73ea56b5b11c2061fea8b29ff7944b9670e53d495e9f64db679eef32676e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b9a1cb9-f43d-d0d5-b66d-3b96fd6c673a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measure_ge_le (h : HasSubgaussianMGF X c κ ν) {ε : ℝ} (hε : 0 ≤ ε) :
    ∀ᵐ ω' ∂ν, (κ ω').real {ω | ε ≤ X ω} ≤ exp (-ε ^ 2 / (2 * c)) := by
  by_cases hc0 : c = 0
  · filter_upwards [h.measure_univ_le_one] with ω' h
    simp only [hc0, NNReal.coe_zero, mul_zero, div_zero, exp_zero]
    refine ENNReal.toReal_le_of_le_ofReal zero_le_one ?_
    simp only [ENNReal.ofReal_one]
    exact (measure_mono (Set.subset_univ _)).trans h
  filter_upwards [measure_ge_le_exp_add h ε] with ω' h
  calc (κ ω').real {ω | ε ≤ X ω}
  -- choose the minimizer of the r.h.s. of `h` for `t ≥ 0`. That is, `t = ε / c`.
  _ ≤ exp (-(ε / c) * ε + c * (ε / c) ^ 2 / 2) := h (ε / c) (by positivity)
  _ = exp (- ε ^ 2 / (2 * c)) := by congr; field

end ChernoffBound

section Zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/SubGaussian/Variant155d73ea56b5b11c2061fea8b29ff7944b9670e53d495e9f64db679eef32676e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/SubGaussian/Variant155d73ea56b5b11c2061fea8b29ff7944b9670e53d495e9f64db679eef32676e.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0392f56ed0dce14393aa269b42c8ddc86d59f0e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
