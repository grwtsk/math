# ReciprocalMertensCorrelationPowerSaving

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33d30f87f982eae1b7d10debee40ed4fb5251c99e8f6e6c0125c9acc79f9e57d",
  "kind": "def",
  "lexical_name": "ReciprocalMertensCorrelationPowerSaving",
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
  "slug": "reciprocalmertenscorrelationpowersaving--00a42d4f1ee04db7d1da01a1",
  "source": {
    "blob": "9fee17d5e741fa828b16c265d8ae4d677eb6ebad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 128,
    "path": "GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:00a42d4f1ee04db7d1da01a117b001b5ed7b4899889a4630c7906a0943cbeb63",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33d30f87f982eae1b7d10debee40ed4fb5251c99e8f6e6c0125c9acc79f9e57d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ReciprocalMertensCorrelationPowerSaving : Prop :=
  ∃ C δ : ℝ, 0 ≤ C ∧ 0 < δ ∧ δ < 1 ∧
    ∀ n : ℕ, 1 ≤ n →
      reciprocalVariationCorrelation n ≤
        C * (n : ℝ) ^ (1 - δ)

/-- A sublinear signed-correlation bound supplies the reciprocal-prefix
variation power saving; the logarithmic diagonal is absorbed without losing
the exponent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fee17d5e741fa828b16c265d8ae4d677eb6ebad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
