# quadratureError_le_neg_ninety_nine_per_thousand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0556fc0-73c4-5372-0170-446fdcf5aca3",
  "kind": "theorem",
  "lexical_name": "quadratureError_le_neg_ninety_nine_per_thousand",
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
  "slug": "quadratureerror-le-neg-ninety-nine-per-thousand--187a54552198fbdc66f5c414",
  "source": {
    "blob": "3fb92faea820e9a63f43d697cd847eacabed38da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 216,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridQuadrature/Variant0cfab3209708f77cba73fb49cb8d67b3b1a51373162083547e35c67a07a600c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:187a54552198fbdc66f5c4140ddafb23522d7267f0871ae9ca14fb9fab9bf4ec",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridQuadrature/Variant0cfab3209708f77cba73fb49cb8d67b3b1a51373162083547e35c67a07a600c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0556fc0-73c4-5372-0170-446fdcf5aca3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratureError_le_neg_ninety_nine_per_thousand (A : ℝ) (hA : 200 ≤ A) :
    quadratureError A ≤ -(99 / 1000 : ℝ) := by
  have he := quadratureError_le_negative A hA
  have hs : (200 : ℝ) ^ 2 ≤ A ^ 2 := by nlinarith
  have hp : (0 : ℝ) < 200 ^ 2 := by norm_num
  have hc : 40 / A ^ 2 ≤ (1 / 1000 : ℝ) := by
    have h := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 40) hp hs
    norm_num at h
    exact h
  linarith [firstCellPayment_gt_tenth]

/-- Immediate application to the unchanged residual, retaining its independent moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridQuadrature/Variant0cfab3209708f77cba73fb49cb8d67b3b1a51373162083547e35c67a07a600c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridQuadrature/Variant0cfab3209708f77cba73fb49cb8d67b3b1a51373162083547e35c67a07a600c4.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fb92faea820e9a63f43d697cd847eacabed38da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
