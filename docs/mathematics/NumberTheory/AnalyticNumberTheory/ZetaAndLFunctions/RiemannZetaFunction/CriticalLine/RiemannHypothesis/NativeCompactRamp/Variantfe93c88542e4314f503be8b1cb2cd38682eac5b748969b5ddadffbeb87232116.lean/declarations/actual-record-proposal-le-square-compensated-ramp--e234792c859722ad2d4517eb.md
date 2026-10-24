# actual_record_proposal_le_square_compensated_ramp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2d209f9-393c-1e3e-f828-767e3d936ab8",
  "kind": "theorem",
  "lexical_name": "actual_record_proposal_le_square_compensated_ramp",
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
  "slug": "actual-record-proposal-le-square-compensated-ramp--e234792c859722ad2d4517eb",
  "source": {
    "blob": "e672d5ea3db9f79c208906f727f78f6505d2eb95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 130,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCompactRamp/Variantfe93c88542e4314f503be8b1cb2cd38682eac5b748969b5ddadffbeb87232116.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e234792c859722ad2d4517eb8034410fc3f044816d568c6eaf78083bb58ec549",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCompactRamp/Variantfe93c88542e4314f503be8b1cb2cd38682eac5b748969b5ddadffbeb87232116.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2d209f9-393c-1e3e-f828-767e3d936ab8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_record_proposal_le_square_compensated_ramp {N J : ℕ}
    (hN : 1 ≤ N)
    (hentrance : cumulativeDiscrepancy ordinaryPrimeCoefficient (N + J) ≤ 0) (K : ℕ) :
    recordIncrement (primeRecordLevel N J)
      (ordinaryPrimePrimitive (N + J + K : ℕ) - ordinaryPrimePrimitive N) ≤
        max (mangoldtRamp (N + J) K - squareRamp (N + J) K) 0 := by
  have h := record_le_positive_work (actual_prefix_le_record N J)
    (work := ordinaryPrimePrimitive (N + J + K : ℕ) - ordinaryPrimePrimitive (N + J : ℕ))
  have heq : (ordinaryPrimePrimitive (N + J : ℕ) - ordinaryPrimePrimitive N) +
      (ordinaryPrimePrimitive (N + J + K : ℕ) - ordinaryPrimePrimitive (N + J : ℕ)) =
      ordinaryPrimePrimitive (N + J + K : ℕ) - ordinaryPrimePrimitive N := by ring
  rw [heq] at h
  exact h.trans (max_le_max_right 0
    (actual_cycle_work_le_square_compensated_ramp (by omega) hentrance K))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCompactRamp/Variantfe93c88542e4314f503be8b1cb2cd38682eac5b748969b5ddadffbeb87232116.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCompactRamp/Variantfe93c88542e4314f503be8b1cb2cd38682eac5b748969b5ddadffbeb87232116.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e672d5ea3db9f79c208906f727f78f6505d2eb95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
