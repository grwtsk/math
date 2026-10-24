# terminal_square_offset_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d5f5c17-f325-ecd8-aa33-172a2181c71e",
  "kind": "theorem",
  "lexical_name": "terminal_square_offset_lower",
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
  "slug": "terminal-square-offset-lower--f01b1df6891156e5a098ccba",
  "source": {
    "blob": "ba0b00b1e0b37e481707dfa4bcb0cfd6ab7fb372",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 110,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridKapitza/Variant470675f7f30804402bce568a3981de9cf05eb5af440234c0f3f6d7fed5857bd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f01b1df6891156e5a098ccba0d4899be1ef54ab892c1a966927846f7c2f0bd1c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridKapitza/Variant470675f7f30804402bce568a3981de9cf05eb5af440234c0f3f6d7fed5857bd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d5f5c17-f325-ecd8-aa33-172a2181c71e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem terminal_square_offset_lower (A : ℝ)
    (hA : 1 ≤ A)
    (hp : |endpointValue A| ≤ 1 / 8) (hb : |endpointSlope A| ≤ 1 / 64) :
    (2809 / 1024 : ℝ) * Real.exp A ≤
      sourceCorrector A (2 * A) ^ 2 / (4 * Real.exp A) := by
  have hcoef : endpointSlope A * 12 - 4 - 4 * endpointValue A ≤ -(53 / 16 : ℝ) := by
    rcases abs_le.mp hp with ⟨hp0, hp1⟩
    rcases abs_le.mp hb with ⟨hb0, hb1⟩
    linarith
  have hw : 0 < Real.exp A := Real.exp_pos A
  have hc : sourceCorrector A (2 * A) =
      Real.exp A * (12 * endpointSlope A - 4 - 4 * endpointValue A) := by
    simp only [sourceCorrector, sourceForcing, affineTrend, sub_self,
      mul_zero, add_zero, show 2 * A / 2 = A by ring]
    rw [FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity.sourceCorrelation_upper_endpoint A (by linarith)]
    ring
  rw [hc]
  apply (le_div_iff₀ (by positivity : 0 < 4 * Real.exp A)).mpr
  have hs : (53 / 16 : ℝ) ^ 2 ≤ (12 * endpointSlope A - 4 - 4 * endpointValue A) ^ 2 := by
    nlinarith
  nlinarith [mul_le_mul_of_nonneg_left hs (sq_nonneg (Real.exp A))]

/-- Signed source storage already has a valid zero terminal: no square completion is required. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridKapitza/Variant470675f7f30804402bce568a3981de9cf05eb5af440234c0f3f6d7fed5857bd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridKapitza/Variant470675f7f30804402bce568a3981de9cf05eb5af440234c0f3f6d7fed5857bd4.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba0b00b1e0b37e481707dfa4bcb0cfd6ab7fb372` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
