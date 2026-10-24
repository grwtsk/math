# cutoffOneDiagonal_eq_neg_plainDiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2b3a677-7543-f993-7de5-3a0f0c15d951",
  "kind": "theorem",
  "lexical_name": "cutoffOneDiagonal_eq_neg_plainDiagonal",
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
  "slug": "cutoffonediagonal-eq-neg-plaindiagonal--e4d49721605c132a4644c839",
  "source": {
    "blob": "096935e8b70d5bfec0240b2b9feb9e64ce813705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWholePlainConvolution/Variantfa9cfa98c836d75e8d99d4f4179fb54973ef59ed6ad23d289734c323773439b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4d49721605c132a4644c839f8103b91e48c472856563846c2bc44c3a6fa6626",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWholePlainConvolution/Variantfa9cfa98c836d75e8d99d4f4179fb54973ef59ed6ad23d289734c323773439b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2b3a677-7543-f993-7de5-3a0f0c15d951`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem cutoffOneDiagonal_eq_neg_plainDiagonal (A : ℝ) :
    cutoffOneDiagonal A =
      -diagonal (Finset.Ioc 1 (sourceKernelCutoff A)) (sourceKernel A) (fun _ ↦ 1) := by
  unfold cutoffOneDiagonal diagonal
  simp only [mul_one]
  rw [← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [beta_one_of_one_lt m (Finset.mem_Ioc.mp hm).1]
  ring

/-- The actual source support completes the product mask before finite convolution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWholePlainConvolution/Variantfa9cfa98c836d75e8d99d4f4179fb54973ef59ed6ad23d289734c323773439b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWholePlainConvolution/Variantfa9cfa98c836d75e8d99d4f4179fb54973ef59ed6ad23d289734c323773439b1.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `096935e8b70d5bfec0240b2b9feb9e64ce813705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
