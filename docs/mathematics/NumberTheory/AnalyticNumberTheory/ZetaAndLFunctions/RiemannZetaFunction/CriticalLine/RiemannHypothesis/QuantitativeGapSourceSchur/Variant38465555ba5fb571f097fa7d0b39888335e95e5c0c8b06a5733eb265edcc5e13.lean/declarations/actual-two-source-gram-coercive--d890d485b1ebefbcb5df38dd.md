# actual_two_source_gram_coercive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd5e3178-d798-8670-9db0-1e82b725c6cb",
  "kind": "theorem",
  "lexical_name": "actual_two_source_gram_coercive",
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
  "slug": "actual-two-source-gram-coercive--d890d485b1ebefbcb5df38dd",
  "source": {
    "blob": "5a8c9b15c11f169910b64f9cd5c94c1c7ef6ce22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 157,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceSchur/Variant38465555ba5fb571f097fa7d0b39888335e95e5c0c8b06a5733eb265edcc5e13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d890d485b1ebefbcb5df38dd68660e441add34e529c917512c5e63e5b498cdeb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceSchur/Variant38465555ba5fb571f097fa7d0b39888335e95e5c0c8b06a5733eb265edcc5e13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd5e3178-d798-8670-9db0-1e82b725c6cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_two_source_gram_coercive (x y : Fin 1 → ℂ) :
    actualSourceGap * (‖WithLp.toLp 2 x‖ ^ 2 + ‖WithLp.toLp 2 y‖ ^ 2) ≤
      hermitianEnergy twoSourceGram (Sum.elim x y) := by
  have hp := actualSourceCoupling_pos
  have hu := actualSourceCoupling_lt_one
  have hη : 0 < 1 - actualSourceCoupling ^ 2 := by
    have h := mul_pos (by linarith : 0 < 1 - actualSourceCoupling)
      (by linarith : 0 < 1 + actualSourceCoupling)
    nlinarith
  have hη1 : 1 - actualSourceCoupling ^ 2 ≤ 1 := by nlinarith [sq_nonneg actualSourceCoupling]
  have h := normalized_feshbach_coercive (1 : Matrix (Fin 1) (Fin 1) ℂ) 1 actualSourceCross 1
    Matrix.isHermitian_one 1 (1 - actualSourceCoupling ^ 2) 1 actualSourceCoupling
    (by norm_num) hη (by norm_num) hp.le (by simp)
    (fun z => by rw [hermitianEnergy_one]; simp)
    (fun z => by rw [hermitianEnergy_one]; simp)
    (fun z => by rw [actualSourceCross_margin]; exact le_of_eq (by ring))
    actualSourceCross_norm x y
  rw [← twoSourceGram_eq_block] at h
  simpa only [one_mul, min_eq_left hη1, actualSourceGap] using h

end FormalResearch.PositiveAtlas.QuantitativeGap.Source
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceSchur/Variant38465555ba5fb571f097fa7d0b39888335e95e5c0c8b06a5733eb265edcc5e13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceSchur/Variant38465555ba5fb571f097fa7d0b39888335e95e5c0c8b06a5733eb265edcc5e13.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a8c9b15c11f169910b64f9cd5c94c1c7ef6ce22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
