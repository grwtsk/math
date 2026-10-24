# all_real_lower_of_complete_block

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60f2aa05-353d-2bca-abec-87bf80db63f8",
  "kind": "theorem",
  "lexical_name": "all_real_lower_of_complete_block",
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
  "slug": "all-real-lower-of-complete-block--a1e03f60b32bba3cc460ccb0",
  "source": {
    "blob": "96cb15323074ccf490a7d0ac462c964bd1af7a97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 99,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorSharpTailReturn/Variant4f49e2aae824dafd99ece9d650392c57c32d151d4b12f69738a8617195732fd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1e03f60b32bba3cc460ccb025c96d6410f6bc1150f5aa1a7f3afd869febd03c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorSharpTailReturn/Variant4f49e2aae824dafd99ece9d650392c57c32d151d4b12f69738a8617195732fd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60f2aa05-353d-2bca-abec-87bf80db63f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_real_lower_of_complete_block (DX R H G : ℝ)
    (hb : ∀ A : ℝ, R ≤ A → completeSignedSamplingBlock A ≤ DX)
    (hH : ∀ A : ℝ, calibratedRadius R ≤ A → completeXiHead A ≤ H)
    (hG : ∀ A : ℝ, calibratedRadius R ≤ A →
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) ≤ G) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower (calibratedRadius R))
        (archimedeanMultiplier 0 - 2 *
          (tailAtomBudget (sharpCompleteBlockTailBudget DX G H) - 3 / 8 +
            criticalBaselineCorrection (calibratedRadius R))) ≤
              sourceQuadraticValue explicitSecondDerivative A := by
  have hid : calibratedRadius (calibratedRadius R) = calibratedRadius R := by
    exact max_eq_right (le_max_left _ _)
  simpa only [hid] using all_real_lower_of_complete_tail
    (sharpCompleteBlockTailBudget DX G H) (calibratedRadius R)
      (complete_tail_lower_at_Rstar DX R H G hb hH hG)

/-- Exact #16 proof term under the explicitly open COMPLETE signed block premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorSharpTailReturn/Variant4f49e2aae824dafd99ece9d650392c57c32d151d4b12f69738a8617195732fd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorSharpTailReturn/Variant4f49e2aae824dafd99ece9d650392c57c32d151d4b12f69738a8617195732fd5.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96cb15323074ccf490a7d0ac462c964bd1af7a97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
