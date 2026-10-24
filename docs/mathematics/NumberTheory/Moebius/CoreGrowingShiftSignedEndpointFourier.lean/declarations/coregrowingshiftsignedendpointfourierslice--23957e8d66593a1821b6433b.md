# coreGrowingShiftSignedEndpointFourierSlice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f48e2fbfa537f30f4a5b4770ea2887adadba47964eb38931a9a0caeaa27aeb88",
  "kind": "def",
  "lexical_name": "coreGrowingShiftSignedEndpointFourierSlice",
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
  "slug": "coregrowingshiftsignedendpointfourierslice--23957e8d66593a1821b6433b",
  "source": {
    "blob": "b9deb36196c1e5f3414f44dfba228190f2f45900",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 362,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23957e8d66593a1821b6433be0920d730adca908810a97e8e34a70ec0f611966",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f48e2fbfa537f30f4a5b4770ea2887adadba47964eb38931a9a0caeaa27aeb88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coreGrowingShiftSignedEndpointFourierSlice
    (j N : ℕ) : ℂ :=
  let Y : ℕ := coreGrowingShiftEndpointFourierModulus j
  (Y : ℂ)⁻¹ * (Y : ℂ)⁻¹ *
    ∑ r : CoreGrowingShiftEndpointFourierIndex j,
      ∑ s : CoreGrowingShiftEndpointFourierIndex j,
        ZMod.dft (coreGrowingShiftEndpointMobiusZeroPad j) (-r) *
          ZMod.dft (coreGrowingShiftEndpointMobiusZeroPad j) (-s) *
            coreGrowingShiftEndpointKernelDFT2 j N r s

/-- Exact fixed-prefix two-dimensional Fourier identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9deb36196c1e5f3414f44dfba228190f2f45900` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
