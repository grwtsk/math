# higherPrimePowerMoment_eq_infinite_correlation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f1a6bec-36e3-2fda-d61c-3d96619055f1",
  "kind": "theorem",
  "lexical_name": "higherPrimePowerMoment_eq_infinite_correlation",
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
  "slug": "higherprimepowermoment-eq-infinite-correlation--5ec9b5995a22fb643be9ebaa",
  "source": {
    "blob": "e41eae77f9f92f4b2f3208f84dbab1264445a6e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 234,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV1Input/Variant2c4432e51d0050e5278d7536ef83759463dab957b10dcbd0e5d7f0e9dd0ddbbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ec9b5995a22fb643be9ebaa5dd6548aba2c501ad6d23beffde7161b054beadd",
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

Occurrence: `result:8f1a6bec-36e3-2fda-d61c-3d96619055f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higherPrimePowerMoment_eq_infinite_correlation {A : ℝ} (hA : 0 < A) :
    higherPrimePowerMoment A = higherCorrelation (originalSourceState A) := by
  unfold higherCorrelation
  rw [tsum_eq_sum (s := higherAtomInventory A) (fun i hi =>
    higher_source_coefficient_zero_outside hA hi)]
  exact higherPrimePowerMoment_eq_atom_sum hA

/-- Full invisible-atom storage cancels the full independent baseline exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV1Input/Variant2c4432e51d0050e5278d7536ef83759463dab957b10dcbd0e5d7f0e9dd0ddbbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV1Input/Variant2c4432e51d0050e5278d7536ef83759463dab957b10dcbd0e5d7f0e9dd0ddbbd.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e41eae77f9f92f4b2f3208f84dbab1264445a6e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
