# readoutAt_adjacent_jump

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9490dc55-46ca-cf06-b7e4-f6e72c667d4d",
  "kind": "theorem",
  "lexical_name": "readoutAt_adjacent_jump",
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
  "slug": "readoutat-adjacent-jump--6342cb0ffd150d31e8196d8c",
  "source": {
    "blob": "a1cee82869ea56016b4c758675c952f44b784234",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 144,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/03SourceCompensatedReadout/Variantee2c73ad73dd14be7849d158fbd654509d41a21fe63b4d924ab14d3d923de110.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6342cb0ffd150d31e8196d8c9da2a45abfeda99e18c38476be7facfefcf60fa7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/03SourceCompensatedReadout/Variantee2c73ad73dd14be7849d158fbd654509d41a21fe63b4d924ab14d3d923de110.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9490dc55-46ca-cf06-b7e4-f6e72c667d4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem readoutAt_adjacent_jump (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    readoutAt A hA (U + 1) N - readoutAt A hA U N =
      2 * (⟪stateAt A hA U N, interactionOperator (cutoffJump A hA U N)⟫_ℂ).re +
      quadraticReadout interactionOperator (cutoffJump A hA U N) +
        compensationAt A (U + 1) N - compensationAt A U N := by
  unfold readoutAt
  have hz : stateAt A hA (U + 1) N = stateAt A hA U N + cutoffJump A hA U N := by
    simp [cutoffJump]
  rw [hz]
  exact compensatedReadout_identity_jump (H := PairState ComplexL2)
    (interactionOperator (H := ComplexL2)) (interactionOperator_selfAdjoint (H := ComplexL2))
    (stateAt A hA U N) (cutoffJump A hA U N)
    (compensationAt A (U + 1) N) (compensationAt A U N)

/-- The Hilbert jump is exactly the previously derived full signed arithmetic flux. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/03SourceCompensatedReadout/Variantee2c73ad73dd14be7849d158fbd654509d41a21fe63b4d924ab14d3d923de110.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/03SourceCompensatedReadout/Variantee2c73ad73dd14be7849d158fbd654509d41a21fe63b4d924ab14d3d923de110.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1cee82869ea56016b4c758675c952f44b784234` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
