# original_lower_of_first_block_and_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3515a668-0b95-417b-ef49-a683adb0c979",
  "kind": "theorem",
  "lexical_name": "original_lower_of_first_block_and_tail",
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
  "slug": "original-lower-of-first-block-and-tail--df250850ee57cfb9d997351a",
  "source": {
    "blob": "0eaffa26d46f0543d09f7ef814e0d28266de8793",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 393,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExportReview/Variant99fad10cd1fc977117846d670356991955ee2ba8c43927104ab6c86c589f5adf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df250850ee57cfb9d997351a096f66133dc9bb3ee11eb5e108711252bc6ee9ec",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExportReview/Variant99fad10cd1fc977117846d670356991955ee2ba8c43927104ab6c86c589f5adf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3515a668-0b95-417b-ef49-a683adb0c979`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_lower_of_first_block_and_tail
    (Rblock Rhead Rtail Rtrend H m epsilon : ℝ) (hRblock : 80 ≤ Rblock)
    (hell : ∀ A : ℝ, Rblock ≤ A →
      ∀ s ∈ Icc (Real.log 2) (Real.log 4), -(1 / 64 : ℝ) ≤ affineTrend A s)
    (hhead : ∀ A : ℝ, Rhead ≤ A → initialPhysicalBlock A ≤ -m)
    (htail : ∀ A : ℝ, Rtail ≤ A → remainingPhysicalTail A ≤ H)
    (hTrend : ∀ A : ℝ, Rtrend ≤ A → |trendValue A| ≤ epsilon) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixFloor (consumerRadius (max Rblock (max Rhead Rtail)) Rtrend))
        (archimedeanMultiplier 0 + 2 - 2 * (H - m - 1293 / 5120) - 2 * epsilon -
          2 * continuousDefect (consumerRadius (max Rblock (max Rhead Rtail)) Rtrend)) ≤
        sourceQuadraticValue explicitSecondDerivative A := by
  apply original_lower_of_separate_nonaffine_caps
  · intro A hA
    have hb : Rblock ≤ A := (le_max_left _ _).trans hA
    have hh : Rhead ≤ A := (le_max_left _ _).trans ((le_max_right _ _).trans hA)
    have ht : Rtail ≤ A := (le_max_right _ _).trans ((le_max_right _ _).trans hA)
    exact nonaffineWork_upper_of_head_tail A H m (hRblock.trans hb)
      (hell A hb) (hhead A hh) (htail A ht)
  · exact hTrend

/-- The unchanged #16 declaration follows conditionally; no complement witness is constructed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExportReview/Variant99fad10cd1fc977117846d670356991955ee2ba8c43927104ab6c86c589f5adf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExportReview/Variant99fad10cd1fc977117846d670356991955ee2ba8c43927104ab6c86c589f5adf.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eaffa26d46f0543d09f7ef814e0d28266de8793` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
