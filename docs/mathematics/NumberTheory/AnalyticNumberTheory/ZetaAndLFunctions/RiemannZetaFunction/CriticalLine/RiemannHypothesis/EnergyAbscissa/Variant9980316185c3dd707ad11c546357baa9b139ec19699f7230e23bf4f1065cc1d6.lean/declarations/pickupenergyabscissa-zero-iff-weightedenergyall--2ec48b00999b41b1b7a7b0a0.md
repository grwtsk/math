# pickupEnergyAbscissa_zero_iff_weightedEnergyAll

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e926d86a-109d-5d53-f78f-f9ff78091811",
  "kind": "theorem",
  "lexical_name": "pickupEnergyAbscissa_zero_iff_weightedEnergyAll",
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
  "slug": "pickupenergyabscissa-zero-iff-weightedenergyall--2ec48b00999b41b1b7a7b0a0",
  "source": {
    "blob": "a107f60cf1a498be022f6547623f15b01e840c82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 210,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EnergyAbscissa/Variant9980316185c3dd707ad11c546357baa9b139ec19699f7230e23bf4f1065cc1d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ec48b00999b41b1b7a7b0a05573aefc653bac56d447787e0bb4c306bcbc411f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EnergyAbscissa/Variant9980316185c3dd707ad11c546357baa9b139ec19699f7230e23bf4f1065cc1d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e926d86a-109d-5d53-f78f-f9ff78091811`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupEnergyAbscissa_zero_iff_weightedEnergyAll :
    pickupEnergyAbscissa = 0 ↔ PickupWeightedEnergyAll := by
  constructor
  · intro hzero σ hσ
    exact pickup_weighted_energy_integrable_above_abscissa (by simpa only [hzero] using hσ)
  · intro hw
    apply le_antisymm _ pickupEnergyAbscissa_nonneg
    by_contra! hpos
    have hle := pickupEnergyAbscissa_le_of_integrable
      (by linarith : 0 < pickupEnergyAbscissa / 2)
      (hw _ (by linarith))
    linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EnergyAbscissa/Variant9980316185c3dd707ad11c546357baa9b139ec19699f7230e23bf4f1065cc1d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EnergyAbscissa/Variant9980316185c3dd707ad11c546357baa9b139ec19699f7230e23bf4f1065cc1d6.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a107f60cf1a498be022f6547623f15b01e840c82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
