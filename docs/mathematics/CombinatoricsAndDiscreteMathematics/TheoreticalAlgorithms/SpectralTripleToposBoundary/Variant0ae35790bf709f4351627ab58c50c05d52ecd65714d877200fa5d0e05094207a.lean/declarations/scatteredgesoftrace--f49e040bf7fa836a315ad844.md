# scatterEdgesOfTrace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f30cbe724fbf59343c37c910740ebf94047664831cbb48e4a82a00687583bec",
  "kind": "def",
  "lexical_name": "scatterEdgesOfTrace",
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
  "slug": "scatteredgesoftrace--f49e040bf7fa836a315ad844",
  "source": {
    "blob": "84baa853751b0d5db51afafc61a2f7f1eee66951",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 189,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralTripleToposBoundary/Variant0ae35790bf709f4351627ab58c50c05d52ecd65714d877200fa5d0e05094207a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f49e040bf7fa836a315ad844052a957a1e114dbb025609de802efbc5b89435d8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralTripleToposBoundary/Variant0ae35790bf709f4351627ab58c50c05d52ecd65714d877200fa5d0e05094207a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f30cbe724fbf59343c37c910740ebf94047664831cbb48e4a82a00687583bec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def scatterEdgesOfTrace :
    List RecursiveScatterStep -> List EmlTreeEdge
  | [] => []
  | step :: rest =>
      [ { source := EmlTreeNode.boundaryBit step.stage step.emittedBit
          target :=
            EmlTreeNode.monomialTorsionScatter
              step.stage
              step.torsionClass.classId }
      , { source :=
            EmlTreeNode.monomialTorsionScatter
              step.stage
              step.torsionClass.classId
          target := EmlTreeNode.boundaryBit (step.stage + 1)
            EmlBoundaryBit.zero }
      , { source :=
            EmlTreeNode.monomialTorsionScatter
              step.stage
              step.torsionClass.classId
          target := EmlTreeNode.boundaryBit (step.stage + 1)
            EmlBoundaryBit.one }
      ] ++ scatterEdgesOfTrace rest

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralTripleToposBoundary/Variant0ae35790bf709f4351627ab58c50c05d52ecd65714d877200fa5d0e05094207a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralTripleToposBoundary/Variant0ae35790bf709f4351627ab58c50c05d52ecd65714d877200fa5d0e05094207a.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84baa853751b0d5db51afafc61a2f7f1eee66951` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
