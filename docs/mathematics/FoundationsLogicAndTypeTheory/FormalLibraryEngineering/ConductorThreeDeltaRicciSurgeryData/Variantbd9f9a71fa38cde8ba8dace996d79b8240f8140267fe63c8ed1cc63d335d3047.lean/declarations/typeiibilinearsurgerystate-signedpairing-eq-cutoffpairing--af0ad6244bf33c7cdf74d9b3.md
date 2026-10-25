# TypeIIBilinearSurgeryState.signedPairing_eq_cutoffPairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59ea3570-7302-ed36-9337-006a5e199530",
  "kind": "theorem",
  "lexical_name": "TypeIIBilinearSurgeryState.signedPairing_eq_cutoffPairing",
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
  "slug": "typeiibilinearsurgerystate-signedpairing-eq-cutoffpairing--af0ad6244bf33c7cdf74d9b3",
  "source": {
    "blob": "44b1cc08cb6231dcca388a44a5116d8627793176",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 228,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantbd9f9a71fa38cde8ba8dace996d79b8240f8140267fe63c8ed1cc63d335d3047.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af0ad6244bf33c7cdf74d9b3f6b328c1e2806ddff53a878a058975b69ecf08f7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantbd9f9a71fa38cde8ba8dace996d79b8240f8140267fe63c8ed1cc63d335d3047.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59ea3570-7302-ed36-9337-006a5e199530`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TypeIIBilinearSurgeryState.signedPairing_eq_cutoffPairing {N : ℕ}
    {scale : TypeIIScaleSurgeryData N}
    (state : TypeIIBilinearSurgeryState scale) (x : ℕ) :
    state.signedPairing x =
      -typeIIMatrixPairing state.leftCoefficient
        (state.cutoffMatrix x) state.rightCoefficient := by
  have hmatrix : state.cutoffMatrix x =
      state.packetMatrix x + state.residualMatrix x := by
    ext left right
    exact state.exactFactorization x left right
  rw [hmatrix, typeIIMatrixPairing_add, state.matrixPairing_packetMatrix]
  rw [TypeIIBilinearSurgeryState.signedPairing]
  ring

/-- Unsigned interaction mass of the full local cutoff matrix. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantbd9f9a71fa38cde8ba8dace996d79b8240f8140267fe63c8ed1cc63d335d3047.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantbd9f9a71fa38cde8ba8dace996d79b8240f8140267fe63c8ed1cc63d335d3047.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44b1cc08cb6231dcca388a44a5116d8627793176` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
