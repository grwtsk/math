# tail_geometric_ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adc75ba3-02f0-18ec-ddda-aa2febc93794",
  "kind": "theorem",
  "lexical_name": "tail_geometric_ratio",
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
  "slug": "tail-geometric-ratio--81e6160e1db679c0fd93b73c",
  "source": {
    "blob": "f804893a17e1a4dd8dc59290898fff1c6292a5f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 82,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiRankFive/Variant8403b10629650f9c754c4deda1dd9f5f3b32626069ae7d0e2bb4881a6043b478.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81e6160e1db679c0fd93b73c402144ed72547d49178de76803dacdc227082450",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiRankFive/Variant8403b10629650f9c754c4deda1dd9f5f3b32626069ae7d0e2bb4881a6043b478.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adc75ba3-02f0-18ec-ddda-aa2febc93794`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tail_geometric_ratio :
    (6 / 5 : ℝ) ^ 20 * Real.exp (-(33 : ℝ)) < 1 / 2 := by
  have he : Real.exp (-(33 : ℝ)) = Real.exp (-(3 : ℝ) / 4) ^ 44 := by
    rw [← Real.exp_nat_mul]
    congr 1
    norm_num
  have hp := pow_le_pow_left₀ (Real.exp_pos _).le exp_neg_three_quarters_upper 44
  rw [he]
  have hm := mul_le_mul_of_nonneg_left hp (by norm_num : (0 : ℝ) ≤ (6 / 5 : ℝ) ^ 20)
  exact hm.trans_lt (by norm_num)

/-- Every integer-square theta exponential is an exact power of the same
source exponential. This identity involves no numerical approximation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiRankFive/Variant8403b10629650f9c754c4deda1dd9f5f3b32626069ae7d0e2bb4881a6043b478.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiRankFive/Variant8403b10629650f9c754c4deda1dd9f5f3b32626069ae7d0e2bb4881a6043b478.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f804893a17e1a4dd8dc59290898fff1c6292a5f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
