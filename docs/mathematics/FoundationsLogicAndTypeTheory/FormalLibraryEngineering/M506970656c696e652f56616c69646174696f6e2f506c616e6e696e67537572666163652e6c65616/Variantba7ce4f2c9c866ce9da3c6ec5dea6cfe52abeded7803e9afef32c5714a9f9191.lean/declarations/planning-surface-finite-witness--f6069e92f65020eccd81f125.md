# planning_surface_finite_witness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b831fb85-0aa7-5a06-1ee0-de7301366013",
  "kind": "theorem",
  "lexical_name": "planning_surface_finite_witness",
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
  "slug": "planning-surface-finite-witness--f6069e92f65020eccd81f125",
  "source": {
    "blob": "8c64a80c6abeb683333242877d7a84aa92883633",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 460,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f506c616e6e696e67537572666163652e6c65616/Variantba7ce4f2c9c866ce9da3c6ec5dea6cfe52abeded7803e9afef32c5714a9f9191.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6069e92f65020eccd81f125371ff01306bbd45e1e77283a2020d051703a8fc5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f506c616e6e696e67537572666163652e6c65616/Variantba7ce4f2c9c866ce9da3c6ec5dea6cfe52abeded7803e9afef32c5714a9f9191.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b831fb85-0aa7-5a06-1ee0-de7301366013`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem planning_surface_finite_witness :
    PlanningSurfaceFiniteWitness := by
  simp [PlanningSurfaceFiniteWitness, planningResidues, planningParties,
    planningTerminalClasses, planningPacketFields, typedPlanningPacketFields,
    obstructionKinds, planningTypedResidues, planningValidators,
    planningEvidencePaths, typedPlanningEvidencePaths,
    modelFacingPacketConstraints, planningSurfaceBoundary]

end Think.Pipeline.Validation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f506c616e6e696e67537572666163652e6c65616/Variantba7ce4f2c9c866ce9da3c6ec5dea6cfe52abeded7803e9afef32c5714a9f9191.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f506c616e6e696e67537572666163652e6c65616/Variantba7ce4f2c9c866ce9da3c6ec5dea6cfe52abeded7803e9afef32c5714a9f9191.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c64a80c6abeb683333242877d7a84aa92883633` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
