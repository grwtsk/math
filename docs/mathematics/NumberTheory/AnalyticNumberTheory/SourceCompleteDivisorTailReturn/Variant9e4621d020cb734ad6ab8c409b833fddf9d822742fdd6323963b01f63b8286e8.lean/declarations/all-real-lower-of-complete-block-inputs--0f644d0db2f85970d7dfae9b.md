# all_real_lower_of_complete_block_inputs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47b543ca-cab6-b4e0-57da-d31f5618cff7",
  "kind": "theorem",
  "lexical_name": "all_real_lower_of_complete_block_inputs",
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
  "slug": "all-real-lower-of-complete-block-inputs--0f644d0db2f85970d7dfae9b",
  "source": {
    "blob": "ef6c9b78775e56c0dbf87459125bcd114bd36206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 135,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant9e4621d020cb734ad6ab8c409b833fddf9d822742fdd6323963b01f63b8286e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f644d0db2f85970d7dfae9b7d27fb68f8881faa297df8bbcc9f1b3adebe3757",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant9e4621d020cb734ad6ab8c409b833fddf9d822742fdd6323963b01f63b8286e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47b543ca-cab6-b4e0-57da-d31f5618cff7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_real_lower_of_complete_block_inputs (DX CD CF R H G : ℝ)
    (hb : ∀ A : ℝ, R ≤ A → completeSignedSamplingBlock A ≤ DX)
    (hd : ∀ A : ℝ, calibratedRadius R ≤ A → |oldDiagonalError A| ≤ CD)
    (hf : ∀ A : ℝ, calibratedRadius R ≤ A → finiteLedgerCorrection A ≤ CF)
    (hH : ∀ A : ℝ, calibratedRadius R ≤ A → completeXiHead A ≤ H)
    (hG : ∀ A : ℝ, calibratedRadius R ≤ A →
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) ≤ G) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower (calibratedRadius R))
        (archimedeanMultiplier 0 - 2 *
          (tailAtomBudget (completeBlockTailBudget DX CD CF G H) - 3 / 8 +
            criticalBaselineCorrection (calibratedRadius R))) ≤
              sourceQuadraticValue explicitSecondDerivative A := by
  have hid : calibratedRadius (calibratedRadius R) = calibratedRadius R := by
    exact max_eq_right (le_max_left _ _)
  have ht : ∀ A : ℝ, calibratedRadius R ≤ A →
      -completeBlockTailBudget DX CD CF G H ≤ completeXiTail A := by
    intro A hA
    have hA91 : (91 : ℝ) ≤ A := (le_max_left _ _).trans hA
    exact complete_block_upper_implies_tail_lower A DX CD CF H G (by linarith)
      (hb A ((le_max_right _ _).trans hA)) (hd A hA) (hf A hA) (hH A hA) (hG A hA)
  simpa only [hid] using all_real_lower_of_complete_tail
    (completeBlockTailBudget DX CD CF G H) (calibratedRadius R) ht

/-- Exact #16 conditional consumer; the complete signed DX premise stays explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant9e4621d020cb734ad6ab8c409b833fddf9d822742fdd6323963b01f63b8286e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant9e4621d020cb734ad6ab8c409b833fddf9d822742fdd6323963b01f63b8286e8.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef6c9b78775e56c0dbf87459125bcd114bd36206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
