# complete_tail_lower_of_actual_signed_block

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71113aed-2607-8438-ba61-0f50674e1b09",
  "kind": "theorem",
  "lexical_name": "complete_tail_lower_of_actual_signed_block",
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
  "slug": "complete-tail-lower-of-actual-signed-block--47faaeee985cdadca48b7663",
  "source": {
    "blob": "b4e0fcfdb234b38b457155eeed7f05b316d1a826",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiPrincipalTailWitness/Variant2b6bf9ca60f716bc54fddeee6ef40b825262d4360f220f9df41ba2a5c46d2d03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47faaeee985cdadca48b7663addf983a57f01dd092ec58db218ec3f61d2e9410",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiPrincipalTailWitness/Variant2b6bf9ca60f716bc54fddeee6ef40b825262d4360f220f9df41ba2a5c46d2d03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71113aed-2607-8438-ba61-0f50674e1b09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_tail_lower_of_actual_signed_block (DX R : ℝ)
    (hx : ∀ A : ℝ, R ≤ A → completeSignedSamplingBlock A ≤ DX) :
    ∀ A : ℝ, calibratedRadius R ≤ A →
      -principalCompleteTailBudget DX R ≤ completeXiTail A := by
  intro A hA
  have hR91 : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
  have hA40 : (40 : ℝ) ≤ A := by linarith
  have ht := complete_tail_lower_of_complete_block_at_radius A DX (calibratedRadius R)
    wholeHeadBudget gammaTraceBudget (by linarith : 40 ≤ calibratedRadius R) hA
    (hx A ((le_max_right _ _).trans hA))
    (by simpa only [completeXiHead_eq_actualWholeXiHead] using actualWholeXiHead_upper A hA40)
    (actual_gamma_trace_upper A (by linarith))
  have hm : radiusCompleteBlockTailBudget DX (calibratedRadius R)
      gammaTraceBudget wholeHeadBudget ≤ principalCompleteTailBudget DX R :=
    le_max_right _ _
  exact (neg_le_neg hm).trans ht

/-- The actual all-real signed arithmetic witness remains explicit and is not constructed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiPrincipalTailWitness/Variant2b6bf9ca60f716bc54fddeee6ef40b825262d4360f220f9df41ba2a5c46d2d03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiPrincipalTailWitness/Variant2b6bf9ca60f716bc54fddeee6ef40b825262d4360f220f9df41ba2a5c46d2d03.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4e0fcfdb234b38b457155eeed7f05b316d1a826` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
