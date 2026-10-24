# complete_tail_witness_of_actual_signed_block

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3164b1ff-465e-a9e5-7cd6-afc2755c0a4f",
  "kind": "theorem",
  "lexical_name": "complete_tail_witness_of_actual_signed_block",
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
  "slug": "complete-tail-witness-of-actual-signed-block--4c0e7e06e53bcd862241ca13",
  "source": {
    "blob": "b4e0fcfdb234b38b457155eeed7f05b316d1a826",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiPrincipalTailWitness/Variant2b6bf9ca60f716bc54fddeee6ef40b825262d4360f220f9df41ba2a5c46d2d03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c0e7e06e53bcd862241ca1302961a46ae160ef6fa633e1ed344dc8ee7b706dd",
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

Occurrence: `result:3164b1ff-465e-a9e5-7cd6-afc2755c0a4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_tail_witness_of_actual_signed_block
    (hx : ∃ DX R : ℝ, ∀ A : ℝ, R ≤ A → completeSignedSamplingBlock A ≤ DX) :
    ∃ K R : ℝ, 0 ≤ K ∧ 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A → -K ≤ completeXiTail A := by
  obtain ⟨DX, R, hb⟩ := hx
  refine ⟨principalCompleteTailBudget DX R, calibratedRadius R,
    principalCompleteTailBudget_nonneg DX R, ?_,
    complete_tail_lower_of_actual_signed_block DX R hb⟩
  have hR91 : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
  linarith

end RH16ActualXiPrincipalTailWitness
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiPrincipalTailWitness/Variant2b6bf9ca60f716bc54fddeee6ef40b825262d4360f220f9df41ba2a5c46d2d03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiPrincipalTailWitness/Variant2b6bf9ca60f716bc54fddeee6ef40b825262d4360f220f9df41ba2a5c46d2d03.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4e0fcfdb234b38b457155eeed7f05b316d1a826` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
