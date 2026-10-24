# all_real_lower_with_fixed_ledger_cap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fefc35a1-2376-4cf1-302b-88c3fc5fdbef",
  "kind": "theorem",
  "lexical_name": "all_real_lower_with_fixed_ledger_cap",
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
  "slug": "all-real-lower-with-fixed-ledger-cap--24bf6e9022e04420fa997e03",
  "source": {
    "blob": "8bd1c4d05e592dfacfccac8c2191b93a2d912c62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSharpLedgerRadius/Variant698b05863c370cae97c761138a58b94db4a272c0f12ef9c7e2fc6924e65b087b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24bf6e9022e04420fa997e0359bb4ba5289d59efde81745c63f91784e9805c7e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceSharpLedgerRadius/Variant698b05863c370cae97c761138a58b94db4a272c0f12ef9c7e2fc6924e65b087b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fefc35a1-2376-4cf1-302b-88c3fc5fdbef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_real_lower_with_fixed_ledger_cap (D rho Q : ℝ) (hQ : 91 ≤ Q)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D + rho) :
    ∀ A : ℝ, 1 ≤ A →
      min (archimedeanMultiplier 0 - 2 * ∑ n ∈ primeIndices Q,
        |ArithmeticFunction.vonMangoldt n / Real.sqrt n|)
        (archimedeanMultiplier 0 - 2 * max 0 (D + rho + 1729)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  have hc := sharpSamplingLedgerCost_lt_1729 Q hQ
  have hb : exactReadoutResidualBudget D rho Q (sharpDiagonalCost Q) ≤
      max 0 (D + rho + 1729) := by
    unfold exactReadoutResidualBudget
    exact max_le_max le_rfl (by linarith)
  intro A hA
  apply le_trans ?_ (all_real_lower_of_readout D rho Q hQ hreadout A hA)
  apply min_le_min le_rfl
  linarith

end RH16SharpLedgerRadius
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceSharpLedgerRadius/Variant698b05863c370cae97c761138a58b94db4a272c0f12ef9c7e2fc6924e65b087b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSharpLedgerRadius/Variant698b05863c370cae97c761138a58b94db4a272c0f12ef9c7e2fc6924e65b087b.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bd1c4d05e592dfacfccac8c2191b93a2d912c62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
