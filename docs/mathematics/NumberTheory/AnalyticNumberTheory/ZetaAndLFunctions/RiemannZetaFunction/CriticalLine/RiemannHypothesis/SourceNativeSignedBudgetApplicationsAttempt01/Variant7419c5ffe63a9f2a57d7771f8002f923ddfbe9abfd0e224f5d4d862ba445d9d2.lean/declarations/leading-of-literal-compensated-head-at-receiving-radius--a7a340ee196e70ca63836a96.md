# leading_of_literal_compensated_head_at_receiving_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81872ea7-ee24-3c66-a523-3c203c2137d1",
  "kind": "theorem",
  "lexical_name": "leading_of_literal_compensated_head_at_receiving_radius",
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
  "slug": "leading-of-literal-compensated-head-at-receiving-radius--a7a340ee196e70ca63836a96",
  "source": {
    "blob": "9ff508cc4012d36006b4344758276fb60b926742",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 189,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNativeSignedBudgetApplicationsAttempt01/Variant7419c5ffe63a9f2a57d7771f8002f923ddfbe9abfd0e224f5d4d862ba445d9d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7a340ee196e70ca63836a96c81a1456d96ca5ff2fbc945c6369c3d5665ae8ab",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNativeSignedBudgetApplicationsAttempt01/Variant7419c5ffe63a9f2a57d7771f8002f923ddfbe9abfd0e224f5d4d862ba445d9d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81872ea7-ee24-3c66-a523-3c203c2137d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leading_of_literal_compensated_head_at_receiving_radius (K R : ℝ) (hR : 1 ≤ R)
    (hhead : ∀ A : ℝ, R ≤ A → (compensatedAngularHead A (growingHeight A)).re ≤ K)
    (hmass : ∀ A : ℝ, R ≤ A →
      ‖(rightLineMajorant 2 : ℂ) * (nativeHeadMass A (growingHeight A) - 1)‖ ≤
        twoLineTailConstant / A ^ 9) :
    ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤ rightLineMajorant 2 + K +
        2 * twoLineTailConstant / (max 25600 R) ^ 9 -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  intro A hA
  apply actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA)
  apply residual_upper_of_literal_compensated_head (le_trans hR (le_max_right _ _)) _ _ A hA
  · intro B hB
    exact hhead B ((le_max_right _ _).trans hB)
  · intro B hB
    exact hmass B ((le_max_right _ _).trans hB)

end
end FormalResearch.RiemannHypothesis.SourceNativeSignedBudgetApplications
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNativeSignedBudgetApplicationsAttempt01/Variant7419c5ffe63a9f2a57d7771f8002f923ddfbe9abfd0e224f5d4d862ba445d9d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNativeSignedBudgetApplicationsAttempt01/Variant7419c5ffe63a9f2a57d7771f8002f923ddfbe9abfd0e224f5d4d862ba445d9d2.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ff508cc4012d36006b4344758276fb60b926742` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
