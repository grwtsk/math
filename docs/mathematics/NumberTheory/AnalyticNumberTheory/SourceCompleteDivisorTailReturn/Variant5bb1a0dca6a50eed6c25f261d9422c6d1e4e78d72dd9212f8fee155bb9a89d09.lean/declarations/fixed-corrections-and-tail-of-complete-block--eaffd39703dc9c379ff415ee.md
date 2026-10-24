# fixed_corrections_and_tail_of_complete_block

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5488676-ad23-ce27-7042-1bce55b856d8",
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
  "slug": "fixed-corrections-and-tail-of-complete-block--eaffd39703dc9c379ff415ee",
  "source": {
    "blob": "57092382e3bbaf0f1e534a6daaa1298e350da57d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 122,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaffd39703dc9c379ff415ee686bd528a71e85fffd4a5a5372893d96465c8f56",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5488676-ad23-ce27-7042-1bce55b856d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–142.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57092382e3bbaf0f1e534a6daaa1298e350da57d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
