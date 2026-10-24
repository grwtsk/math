# Atom.kind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93c3ceb441ae6e7db77cc7ca1550d751af4a164bdde18f17f3c33ede00392352",
  "kind": "def",
  "lexical_name": "Atom.kind",
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
  "slug": "atom-kind--f4915534f49efa8a1ecc92c2",
  "source": {
    "blob": "ce97f4dd284b1e96d8fdae689b3a21c73728e30c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 57,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryActionsAnosov/Variant0b2f4360764946b622dd939c660701ff681e8cb22c1f28e4880613e8ad6f36b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4915534f49efa8a1ecc92c298840483c0787d5825000a3b33d0bd6b6a782d50",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryActionsAnosov/Variant0b2f4360764946b622dd939c660701ff681e8cb22c1f28e4880613e8ad6f36b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93c3ceb441ae6e7db77cc7ca1550d751af4a164bdde18f17f3c33ede00392352`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Atom.kind : Atom -> FWR.ResidueKind
  | .negativeCurvatureCompactManifold => FWR.ResidueKind.missingDefinition
  | .boundaryAtInfinity => FWR.ResidueKind.missingDefinition
  | .standardBoundaryAction => FWR.ResidueKind.missingDefinition
  | .nearbyHomeomorphismAction => FWR.ResidueKind.missingDefinition
  | .semiconjugacy => FWR.ResidueKind.missingTransition
  | .slitheringAction => FWR.ResidueKind.missingDefinition
  | .globalRigidity => FWR.ResidueKind.externalTheoremNotImported
  | .externalRigidityNotImported => FWR.ResidueKind.externalTheoremNotImported

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryActionsAnosov/Variant0b2f4360764946b622dd939c660701ff681e8cb22c1f28e4880613e8ad6f36b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryActionsAnosov/Variant0b2f4360764946b622dd939c660701ff681e8cb22c1f28e4880613e8ad6f36b7.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce97f4dd284b1e96d8fdae689b3a21c73728e30c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
