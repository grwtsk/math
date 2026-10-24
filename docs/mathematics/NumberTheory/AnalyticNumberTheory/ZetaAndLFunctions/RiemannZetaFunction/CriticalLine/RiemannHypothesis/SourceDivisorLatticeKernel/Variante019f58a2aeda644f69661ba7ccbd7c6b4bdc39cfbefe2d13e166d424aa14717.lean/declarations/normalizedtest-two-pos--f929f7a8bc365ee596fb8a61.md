# normalizedTest_two_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bba09bc-c20f-a65d-4a66-4053b785d3b9",
  "kind": "theorem",
  "lexical_name": "normalizedTest_two_pos",
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
  "slug": "normalizedtest-two-pos--f929f7a8bc365ee596fb8a61",
  "source": {
    "blob": "14333dfbbb3115d5568ba0df8a242a913dd751c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeKernel/Variante019f58a2aeda644f69661ba7ccbd7c6b4bdc39cfbefe2d13e166d424aa14717.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f929f7a8bc365ee596fb8a6182b2112bc2aaff6a882793e06adf40809d9968b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeKernel/Variante019f58a2aeda644f69661ba7ccbd7c6b4bdc39cfbefe2d13e166d424aa14717.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bba09bc-c20f-a65d-4a66-4053b785d3b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedTest_two_pos {x : ℝ} (hx : 1 ≤ |x|) (hx2 : |x| < 2) :
    0 < normalizedTest explicitSecondDerivative 2 x := by
  rw [normalizedTest_eq_indicator 2 (by norm_num),
    indicator_of_mem (show x ∈ Icc (-2 : ℝ) 2 from abs_le.mp hx2.le),
    normalizedInterior_two_factor]
  have hsq : 1 / 4 ≤ (x / 2)^2 ∧ (x / 2)^2 < 1 := by
    constructor <;> nlinarith [sq_abs x, sq_nonneg (|x| - 1), sq_nonneg (2 - |x|)]
  have hz : 0 < 1 - (x / 2)^2 ∧ 1 - (x / 2)^2 ≤ 3 / 4 := by
    constructor <;> linarith
  have hz2 : (1 - (x / 2)^2)^2 ≤ 9 / 16 := by
    nlinarith [sq_nonneg (1 - (x / 2)^2), sq_nonneg (3 / 4 - (1 - (x / 2)^2))]
  have hb : 0 < 56 * (x / 2)^2 - 8 - (1 - (x / 2)^2)^2 := by linarith
  exact div_pos (mul_pos (sq_pos_of_pos hz.1) hb)
    (mul_pos (mul_pos (by norm_num) (Real.sqrt_pos.mpr (by norm_num)))
      (Real.sqrt_pos.mpr (source_normalization_pos 2 (by norm_num))))

/-- The literal source correlation is positive for sum-log shifts in this endpoint band. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeKernel/Variante019f58a2aeda644f69661ba7ccbd7c6b4bdc39cfbefe2d13e166d424aa14717.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeKernel/Variante019f58a2aeda644f69661ba7ccbd7c6b4bdc39cfbefe2d13e166d424aa14717.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14333dfbbb3115d5568ba0df8a242a913dd751c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
