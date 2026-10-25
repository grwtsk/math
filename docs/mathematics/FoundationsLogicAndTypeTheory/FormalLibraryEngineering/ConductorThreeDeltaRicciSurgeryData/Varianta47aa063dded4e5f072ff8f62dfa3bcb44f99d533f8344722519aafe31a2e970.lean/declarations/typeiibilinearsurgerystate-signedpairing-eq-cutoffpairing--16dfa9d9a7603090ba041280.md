# TypeIIBilinearSurgeryState.signedPairing_eq_cutoffPairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b4ca35e24d86473513aa5bf8296282db57cbc65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a47aa063dded4e5f072ff8f62dfa3bcb44f99d533f8344722519aafe31a2e970.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5bf36344-382a-cca1-5f11-fd4f790a138a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:127eef95-a794-9452-a67d-0d6ad3234d6b",
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
  "slug": "typeiibilinearsurgerystate-signedpairing-eq-cutoffpairing--16dfa9d9a7603090ba041280",
  "source": {
    "blob": "8b4ca35e24d86473513aa5bf8296282db57cbc65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 220,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Varianta47aa063dded4e5f072ff8f62dfa3bcb44f99d533f8344722519aafe31a2e970.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16dfa9d9a7603090ba041280d39c1e5614d45b586510608654648170709ad41a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Varianta47aa063dded4e5f072ff8f62dfa3bcb44f99d533f8344722519aafe31a2e970.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:127eef95-a794-9452-a67d-0d6ad3234d6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–235.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Varianta47aa063dded4e5f072ff8f62dfa3bcb44f99d533f8344722519aafe31a2e970.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Varianta47aa063dded4e5f072ff8f62dfa3bcb44f99d533f8344722519aafe31a2e970.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b4ca35e24d86473513aa5bf8296282db57cbc65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
