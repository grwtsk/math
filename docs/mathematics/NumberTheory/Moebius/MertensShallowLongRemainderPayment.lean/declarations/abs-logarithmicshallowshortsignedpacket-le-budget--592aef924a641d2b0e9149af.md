# abs_logarithmicShallowShortSignedPacket_le_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac032b19-2c7a-fa02-3102-c9f54a7598fb",
  "kind": "theorem",
  "lexical_name": "abs_logarithmicShallowShortSignedPacket_le_budget",
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
  "slug": "abs-logarithmicshallowshortsignedpacket-le-budget--592aef924a641d2b0e9149af",
  "source": {
    "blob": "c82b477c854b63382c98e4d29ed588647fee6d83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 79,
    "path": "GRWTSK/NumberTheory/Moebius/MertensShallowLongRemainderPayment.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:592aef924a641d2b0e9149af7a5eee0d8623306852a6829d3f37edabebb10860",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensShallowLongRemainderPayment.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac032b19-2c7a-fa02-3102-c9f54a7598fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_logarithmicShallowShortSignedPacket_le_budget
    (j : ℕ) :
    |logarithmicShallowShortSignedPacket j| ≤
      logarithmicShallowNormalizedShortBudget j := by
  unfold logarithmicShallowShortSignedPacket
    logarithmicShallowNormalizedShortBudget
  calc
    |∑ t ∈ Finset.range (logarithmicShallowDepthCount j),
      2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
        harmonicCumulativeShortContribution
          j t (logarithmicShiftThreshold j)| ≤
      ∑ t ∈ Finset.range (logarithmicShallowDepthCount j),
        |2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
          harmonicCumulativeShortContribution
            j t (logarithmicShiftThreshold j)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ t ∈ Finset.range (logarithmicShallowDepthCount j),
        normalizedShortDepthBudget j t := by
      apply Finset.sum_le_sum
      intro t _ht
      rw [abs_mul, abs_of_nonneg (by positivity :
        0 ≤ 2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹)]
      exact normalized_shortContribution_le_budget j t

/-- Deterministic shallow-long remainder bound by the sum of the two already
paid shallow budgets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensShallowLongRemainderPayment.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensShallowLongRemainderPayment.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c82b477c854b63382c98e4d29ed588647fee6d83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
