# higher_source_coefficient_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6de08268-5cba-63ca-4180-12ecd61d0f03",
  "kind": "theorem",
  "lexical_name": "higher_source_coefficient_eq",
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
  "slug": "higher-source-coefficient-eq--3e7315b7ab3bdc7d9d1b47c0",
  "source": {
    "blob": "e41eae77f9f92f4b2f3208f84dbab1264445a6e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 190,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV1Input/Variant2c4432e51d0050e5278d7536ef83759463dab957b10dcbd0e5d7f0e9dd0ddbbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e7315b7ab3bdc7d9d1b47c0c277054acdc985ff9a5b5ebb66b35bc85f44ac94",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV1Input/Variant2c4432e51d0050e5278d7536ef83759463dab957b10dcbd0e5d7f0e9dd0ddbbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6de08268-5cba-63ca-4180-12ecd61d0f03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higher_source_coefficient_eq {A : ℝ} (hA : 0 < A) (i : HigherPrimePowerIndex) :
    higherAtomWeight i * (⟪originalSourceState A,
      translation (higherAtomShift i) (originalSourceState A)⟫_ℂ).re =
        vonMangoldt (higherAtomNatural i) * closedPrimeWeight A (higherAtomNatural i) := by
  rw [higherAtomWeight_eq_mangoldtCoefficient, higherAtomShift_eq_log,
    ← sourceCorrelation_eq_inner hA]
  unfold mangoldtCoefficient closedPrimeWeight exponentialTest
  ring

/-- Omitted atoms have zero correlation, even though their norm-square account is nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV1Input/Variant2c4432e51d0050e5278d7536ef83759463dab957b10dcbd0e5d7f0e9dd0ddbbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV1Input/Variant2c4432e51d0050e5278d7536ef83759463dab957b10dcbd0e5d7f0e9dd0ddbbd.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e41eae77f9f92f4b2f3208f84dbab1264445a6e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
