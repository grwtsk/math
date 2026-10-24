# fixed_corrections_and_tail_of_complete_block

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c77812ba-ab5d-9f7d-ce0d-5be37ade503d",
  "kind": "theorem",
  "lexical_name": "fixed_corrections_and_tail_of_complete_block",
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
  "slug": "fixed-corrections-and-tail-of-complete-block--12c72eefd40bce7b64804803",
  "source": {
    "blob": "4684291dab85bb7fc8b967c0c7ac8dbdebb4aa5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 120,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variantfd6fc3922d4befe7d3d363478242f5d4bd1e0d818291dca6bd42ad4578f6335e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12c72eefd40bce7b648048034f4fbfc35b7978c0ef7961adcaba7f962b127963",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variantfd6fc3922d4befe7d3d363478242f5d4bd1e0d818291dca6bd42ad4578f6335e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c77812ba-ab5d-9f7d-ce0d-5be37ade503d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixed_corrections_and_tail_of_complete_block (DX R H G : ℝ)
    (hb : ∀ A : ℝ, R ≤ A → completeSignedSamplingBlock A ≤ DX)
    (hH : ∀ A : ℝ, calibratedRadius R ≤ A → completeXiHead A ≤ H)
    (hG : ∀ A : ℝ, calibratedRadius R ≤ A →
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) ≤ G) :
    ∃ CD : ℝ, 0 ≤ CD ∧ ∃ CF : ℝ, 0 ≤ CF ∧
      ∀ A : ℝ, calibratedRadius R ≤ A →
        -completeBlockTailBudget DX CD CF G H ≤ completeXiTail A := by
  obtain ⟨CD, hCD, hd⟩ := oldDiagonalError_uniform_abs_bound
  obtain ⟨CF, hCF, hf⟩ := actual_ledger_uniform_error
  refine ⟨CD, hCD, CF, hCF, ?_⟩
  intro A hA
  have hA91 : (91 : ℝ) ≤ A := (le_max_left _ _).trans hA
  apply complete_block_upper_implies_tail_lower A DX CD CF H G (by linarith)
  · exact hb A ((le_max_right _ _).trans hA)
  · exact hd A (by linarith)
  · exact (abs_le.mp (hf A (by linarith))).2
  · exact hH A hA
  · exact hG A hA

/-- The original finite prefix is evaluated at exactly max(91,R). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variantfd6fc3922d4befe7d3d363478242f5d4bd1e0d818291dca6bd42ad4578f6335e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variantfd6fc3922d4befe7d3d363478242f5d4bd1e0d818291dca6bd42ad4578f6335e.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4684291dab85bb7fc8b967c0c7ac8dbdebb4aa5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
