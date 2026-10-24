# coreGrowingShiftEndpointAggregateKernelZeroPad_eq_zero_of_not_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55595acd-a964-3a95-4bcf-a1d510e0766c",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointAggregateKernelZeroPad_eq_zero_of_not_lt",
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
  "slug": "coregrowingshiftendpointaggregatekernelzeropad-eq-zero-of-not-lt--2d77fdd96e871eaa8125f9ef",
  "source": {
    "blob": "4d474e11dfdcc770ce0249d92df027b85fee216d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 140,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointAggregateFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d77fdd96e871eaa8125f9efce21e01adcb360d13e51e56cca2462a9e6c318ad",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointAggregateFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55595acd-a964-3a95-4bcf-a1d510e0766c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointAggregateKernelZeroPad_eq_zero_of_not_lt
    {j : ℕ}
    {x y : CoreGrowingShiftEndpointFourierIndex j}
    (hxy : ¬ x.val < y.val) :
    coreGrowingShiftEndpointAggregateKernelZeroPad j x y = 0 := by
  classical
  unfold coreGrowingShiftEndpointAggregateKernelZeroPad
  apply Finset.sum_eq_zero
  intro N hN
  unfold coreGrowingShiftEndpointKernelZeroPad
  have hnot :
      (x.val, y.val) ∉
        coreGrowingShiftSignedEndpointPairSet j N := by
    intro hp
    obtain ⟨_hx1, _hxN, hlt, _hyY, _hlo, _hhi⟩ :=
      coreGrowingShiftSignedEndpointPair_support hp
    exact hxy hlt
  simp [hnot]

/-- Finite Fubini for a family of bilinear kernels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointAggregateFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointAggregateFourier.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d474e11dfdcc770ce0249d92df027b85fee216d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
