# jointMainTermTail_iff_residualTail_of_boundedLedgerError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7190ecca-dd8d-78e2-2773-054f25a1cb2a",
  "kind": "theorem",
  "lexical_name": "jointMainTermTail_iff_residualTail_of_boundedLedgerError",
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
  "slug": "jointmaintermtail-iff-residualtail-of-boundedledgererror--58a8ed2ee7f093e26212cf23",
  "source": {
    "blob": "e5b4e7fc7ecfdaf5eb5a8c16868eb667bbf7399c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/10VaughanOperatorReview/Variant70877dad3dec249c45be485dced5b7085f0bc6bb2d83e251e3bc6cc57bd51e36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58a8ed2ee7f093e26212cf23e97b128cc020d4fec08db639ff9778f3f733e285",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/10VaughanOperatorReview/Variant70877dad3dec249c45be485dced5b7085f0bc6bb2d83e251e3bc6cc57bd51e36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7190ecca-dd8d-78e2-2773-054f25a1cb2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointMainTermTail_iff_residualTail_of_boundedLedgerError
    (M : ℝ → ℝ) (CF : ℝ) (hCF : 0 ≤ CF)
    (herror : ∀ A : ℝ, 1 ≤ A → |betaMainLedger A + M A| ≤ CF) :
    JointMainTermTailUpperBound M ↔ MertensResidualTailUpperBound := by
  constructor
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D + CF, add_nonneg hD hCF, R, hR, ?_⟩
    intro A hRA
    have hA := hR.trans hRA
    have heq := mainTerm_subtraction_exact A (M A) hA
    have hf := (abs_le.mp (herror A hA)).2
    linarith [h A hRA]
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D + CF, add_nonneg hD hCF, R, hR, ?_⟩
    intro A hRA
    have hA := hR.trans hRA
    have heq := mainTerm_subtraction_exact A (M A) hA
    have hf := (abs_le.mp (herror A hA)).1
    linarith [h A hRA]

end FormalResearch.RiemannHypothesis.VaughanOperatorReview

set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.VaughanOperatorReview.covarianceOperatorValue_eq_twice_centered
#print axioms FormalResearch.RiemannHypothesis.VaughanOperatorReview.covarianceOperatorValue_eq_twice_centered
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.VaughanOperatorReview.covarianceOperatorValue_eq_twice_blocks
#print axioms FormalResearch.RiemannHypothesis.VaughanOperatorReview.covarianceOperatorValue_eq_twice_blocks
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.VaughanOperatorReview.residual_eq_operator_add_actual_ledger
#print axioms FormalResearch.RiemannHypothesis.VaughanOperatorReview.residual_eq_operator_add_actual_ledger
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.VaughanOperatorReview.mainTerm_subtraction_exact
#print axioms FormalResearch.RiemannHypothesis.VaughanOperatorReview.mainTerm_subtraction_exact
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.VaughanOperatorReview.JointMainTermTailUpperBound
#print axioms FormalResearch.RiemannHypothesis.VaughanOperatorReview.JointMainTermTailUpperBound
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.VaughanOperatorReview.jointMainTermTail_iff_residualTail_of_boundedLedgerError
#print axioms FormalResearch.RiemannHypothesis.VaughanOperatorReview.jointMainTermTail_iff_residualTail_of_boundedLedgerError
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/10VaughanOperatorReview/Variant70877dad3dec249c45be485dced5b7085f0bc6bb2d83e251e3bc6cc57bd51e36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/10VaughanOperatorReview/Variant70877dad3dec249c45be485dced5b7085f0bc6bb2d83e251e3bc6cc57bd51e36.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5b4e7fc7ecfdaf5eb5a8c16868eb667bbf7399c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
