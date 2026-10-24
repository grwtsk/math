# coreGrowingShiftSignedEndpointZeroPaddedSlice_eq_fourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f960131c-d565-a189-5fb3-95864a1bd71a",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftSignedEndpointZeroPaddedSlice_eq_fourier",
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
  "slug": "coregrowingshiftsignedendpointzeropaddedslice-eq-fourier--95ea6714a1847bdd8f0dfc42",
  "source": {
    "blob": "b9deb36196c1e5f3414f44dfba228190f2f45900",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 373,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95ea6714a1847bdd8f0dfc42b58824f8513bff7cd642eab83b4b31ba4e2a1c38",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f960131c-d565-a189-5fb3-95864a1bd71a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftSignedEndpointZeroPaddedSlice_eq_fourier
    (j N : ℕ) :
    coreGrowingShiftSignedEndpointZeroPaddedSlice j N =
      coreGrowingShiftSignedEndpointFourierSlice j N := by
  unfold coreGrowingShiftSignedEndpointZeroPaddedSlice
    coreGrowingShiftSignedEndpointFourierSlice
    coreGrowingShiftEndpointKernelDFT2
  exact finite_zmod_bilinear_eq_iterated_dft
    (coreGrowingShiftEndpointMobiusZeroPad j)
    (coreGrowingShiftEndpointKernelZeroPad j N)

/-- Complex frequency packet before taking its real part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9deb36196c1e5f3414f44dfba228190f2f45900` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
