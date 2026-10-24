# coreGrowingShiftEndpointAggregateKernelZeroPad_eq_zero_of_left_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:368a7f7a-0f27-3469-c7a9-8257594e88a2",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointAggregateKernelZeroPad_eq_zero_of_left_zero",
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
  "slug": "coregrowingshiftendpointaggregatekernelzeropad-eq-zero-of-left-zero--43a8ba7c91e295435e9c889f",
  "source": {
    "blob": "b7340cf74940c51ce8871c52d340d8277fc03e94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 355,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBoundaryFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43a8ba7c91e295435e9c889f81a22a7e5bf8d002316be7b72de16d4eedc1623c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBoundaryFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:368a7f7a-0f27-3469-c7a9-8257594e88a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointAggregateKernelZeroPad_eq_zero_of_left_zero
    {j : ℕ}
    {x y : CoreGrowingShiftEndpointFourierIndex j}
    (hx : x.val = 0) :
    coreGrowingShiftEndpointAggregateKernelZeroPad j x y = 0 := by
  classical
  unfold coreGrowingShiftEndpointAggregateKernelZeroPad
  apply Finset.sum_eq_zero
  intro N hN
  unfold coreGrowingShiftEndpointKernelZeroPad
  have hnot :
      (x.val, y.val) ∉ coreGrowingShiftSignedEndpointPairSet j N := by
    intro hp
    obtain ⟨hx1, _hxN, _hxy, _hyY, _hlo, _hhi⟩ :=
      coreGrowingShiftSignedEndpointPair_support hp
    omega
  simp [hnot]

/-- The closed boundary kernel is exactly the previously aggregated
zero-padded kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBoundaryFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBoundaryFourier.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7340cf74940c51ce8871c52d340d8277fc03e94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
