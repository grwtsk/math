# actual_moment_eq_residual_add_companion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e36319d-df25-1550-e9a3-b4d19af16c04",
  "kind": "theorem",
  "lexical_name": "actual_moment_eq_residual_add_companion",
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
  "slug": "actual-moment-eq-residual-add-companion--ec9efc8de1c235cdf7969c1c",
  "source": {
    "blob": "62e0af0634389367682de31bfd268b30c36d6837",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variantfda57d8380d0839ade9a353acba6807d6fcfd0fe52e0f3f149ac8a88e80520c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec9efc8de1c235cdf7969c1c6463e6d3fb4dea2957f8db82d1bb395bc490b3ed",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variantfda57d8380d0839ade9a353acba6807d6fcfd0fe52e0f3f149ac8a88e80520c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e36319d-df25-1550-e9a3-b4d19af16c04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_moment_eq_residual_add_companion (A : ℝ) (hA : 1 ≤ A) :
    actualClosedXiSignedMoment A = mertensResidual A + actualSmoothingCompanion A := by
  have hr := mertensResidual_eq_continuous_sub_Mangoldt_work A hA
  have hw := criticalMangoldtWork_eq_head_add_remaining A hA
  have hb := RH16CesaroPrimitive.remainingAtomWork_eq_cesaro_integral A hA
  change remainingAtomWork A = Real.eulerMascheroniConstant *
    criticalPrimeTest A (Real.log 2) + RH16CesaroSignedPairing.signedCesaroPairing A at hb
  rw [SourceFullXiOuterContraction.actual_signed_pairing_eq_contracted A hA,
    actual_contracted_pairing_eq_neg_closed_moment A hA] at hb
  unfold actualSmoothingCompanion
  linarith only [hr, hw, hb]

/-- The complete smooth baseline cancels; only the fixed first-atom data accompany the work. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variantfda57d8380d0839ade9a353acba6807d6fcfd0fe52e0f3f149ac8a88e80520c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variantfda57d8380d0839ade9a353acba6807d6fcfd0fe52e0f3f149ac8a88e80520c0.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62e0af0634389367682de31bfd268b30c36d6837` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
