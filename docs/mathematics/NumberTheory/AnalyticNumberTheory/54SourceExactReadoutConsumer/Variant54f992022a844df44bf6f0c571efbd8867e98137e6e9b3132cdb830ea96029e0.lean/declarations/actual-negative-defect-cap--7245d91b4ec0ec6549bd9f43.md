# actual_negative_defect_cap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0f4b4fd-8cfe-c847-4633-83e82774b572",
  "kind": "theorem",
  "lexical_name": "actual_negative_defect_cap",
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
  "slug": "actual-negative-defect-cap--7245d91b4ec0ec6549bd9f43",
  "source": {
    "blob": "01fd935b38c0b6f2d4510b38e292504a36d3a442",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/54SourceExactReadoutConsumer/Variant54f992022a844df44bf6f0c571efbd8867e98137e6e9b3132cdb830ea96029e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7245d91b4ec0ec6549bd9f431dfbdac13d0e89f6fdaa78edc77b41ff6f89b8e8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/54SourceExactReadoutConsumer/Variant54f992022a844df44bf6f0c571efbd8867e98137e6e9b3132cdb830ea96029e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0f4b4fd-8cfe-c847-4633-83e82774b572`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_negative_defect_cap (D rho Q : ℝ) (hQ : 91 ≤ Q)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D + rho) :
    ∃ C_D : ℝ, 0 ≤ C_D ∧ ∀ A : ℝ, 1 ≤ A →
      max 0 (-sourceQuadraticValue explicitSecondDerivative A) ≤
        max 0 (-min (archimedeanMultiplier 0 - 2 * ∑ n ∈ primeIndices Q,
          |ArithmeticFunction.vonMangoldt n / Real.sqrt n|)
          (archimedeanMultiplier 0 - 2 * exactReadoutResidualBudget D rho Q C_D)) := by
  obtain ⟨C_D, hD0, hlower⟩ := all_real_lower_of_actual_readout D rho Q hQ hreadout
  refine ⟨C_D, hD0, ?_⟩
  intro A hA
  exact max_le_max le_rfl (neg_le_neg (hlower A hA))

/-- Existing tail-to-all-scale acceptance target; no new positivity gate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/54SourceExactReadoutConsumer/Variant54f992022a844df44bf6f0c571efbd8867e98137e6e9b3132cdb830ea96029e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/54SourceExactReadoutConsumer/Variant54f992022a844df44bf6f0c571efbd8867e98137e6e9b3132cdb830ea96029e0.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01fd935b38c0b6f2d4510b38e292504a36d3a442` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
