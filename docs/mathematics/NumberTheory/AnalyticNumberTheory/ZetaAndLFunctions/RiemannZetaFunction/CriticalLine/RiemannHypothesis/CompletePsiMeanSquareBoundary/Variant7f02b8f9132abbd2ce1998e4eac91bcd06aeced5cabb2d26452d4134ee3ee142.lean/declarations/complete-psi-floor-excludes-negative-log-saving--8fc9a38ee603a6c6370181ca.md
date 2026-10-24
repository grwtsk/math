# complete_psi_floor_excludes_negative_log_saving

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1884a43-3c13-cb21-b841-8ef8dd145c4f",
  "kind": "theorem",
  "lexical_name": "complete_psi_floor_excludes_negative_log_saving",
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
  "slug": "complete-psi-floor-excludes-negative-log-saving--8fc9a38ee603a6c6370181ca",
  "source": {
    "blob": "46c3b72dfe62480f0fd5c549eb79e031d443fb20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 52,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7f02b8f9132abbd2ce1998e4eac91bcd06aeced5cabb2d26452d4134ee3ee142.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fc9a38ee603a6c6370181cacc8e122eea3e31a0913880afd96f851f4cc7905f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7f02b8f9132abbd2ce1998e4eac91bcd06aeced5cabb2d26452d4134ee3ee142.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1884a43-3c13-cb21-b841-8ef8dd145c4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_psi_floor_excludes_negative_log_saving
    (hlower : ∀ᶠ X : ℝ in atTop, X ^ 2 / 5374 ≤ completePsiSquare X)
    {delta : ℝ} (hd : 0 < delta) (C : ℝ) :
    ¬ ∀ᶠ X : ℝ in atTop,
      completePsiSquare X ≤ C * X ^ 2 / (Real.log X) ^ delta := by
  have hl : ∀ᶠ X : ℝ in atTop, (1 / 5374 : ℝ) * X ^ 2 ≤ completePsiSquare X := by
    filter_upwards [hlower] with X hX
    simpa only [div_eq_mul_inv, one_mul, mul_comm] using hX
  have h := eventual_positive_square_floor_excludes_vanishing_factor
    (by norm_num : (0 : ℝ) < 1 / 5374) hl (positive_log_power_factor_tends_to_zero hd C)
  simpa only [div_eq_mul_inv, mul_assoc, mul_comm, mul_left_comm] using h

end
end GRWTSK.RiemannHypothesis.Conversation.CompletePsiMeanSquareBoundary
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7f02b8f9132abbd2ce1998e4eac91bcd06aeced5cabb2d26452d4134ee3ee142.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7f02b8f9132abbd2ce1998e4eac91bcd06aeced5cabb2d26452d4134ee3ee142.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46c3b72dfe62480f0fd5c549eb79e031d443fb20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
