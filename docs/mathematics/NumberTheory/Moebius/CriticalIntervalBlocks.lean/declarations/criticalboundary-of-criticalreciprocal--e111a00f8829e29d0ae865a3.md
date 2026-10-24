# criticalBoundary_of_criticalReciprocal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:005acf11-53d2-d6e2-4ebd-2c4c09cc4797",
  "kind": "theorem",
  "lexical_name": "criticalBoundary_of_criticalReciprocal",
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
  "slug": "criticalboundary-of-criticalreciprocal--e111a00f8829e29d0ae865a3",
  "source": {
    "blob": "80cbd19c8972c36004ddb69fc831db1ba086aeb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 772,
    "line": 748,
    "path": "GRWTSK/NumberTheory/Moebius/CriticalIntervalBlocks.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e111a00f8829e29d0ae865a378fc531df44bcc915dd3d55de46ba704ef145087",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CriticalIntervalBlocks.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:005acf11-53d2-d6e2-4ebd-2c4c09cc4797`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 748–772.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalBoundary_of_criticalReciprocal
    (hR : CriticalReciprocalVerticalLineUniform) :
    CriticalBoundaryVerticalLineUniform := by
  obtain ⟨C, hC, hbound⟩ := hR 1 (by norm_num)
  refine ⟨C, hC, ?_⟩
  norm_num at hbound ⊢
  exact hbound

end GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks

#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.wholePickup_eq_prefix_flux_on_log_cell
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.pickupWeightedPrefix_eq_mertens_add_integral
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.mertensPrefix_exp_le_of_powerBound
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.abelIntegral_abs_le_of_mertensPowerBound
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.pickupWeightedPrefix_le_of_mertensPowerBound
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.criticalIntervalBlock_eq_pickup
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.criticalIntervalBlock_closedForm
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.criticalIntervalBlockUniform_of_majorantSummable
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.criticalIntervalMajorantSummable_of_prefixPowerSummable
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.criticalBoundary_of_prefixSquareComponents
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.criticalBoundary_of_prefixPowerBounds
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.criticalBoundary_of_mertensPowerSaving
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.criticalBoundary_of_nonnegative_mertensPowerSaving
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.criticalIntervalBlockSum_eq_verticalLineMass
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.criticalBoundary_iff_intervalBlockUniform
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CriticalIntervalBlocks.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CriticalIntervalBlocks.lean#L748).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80cbd19c8972c36004ddb69fc831db1ba086aeb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
