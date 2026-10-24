# structurally_solved_preserves_semantic_frontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bd1b1e7-20a6-c935-56c7-b10ec387072b",
  "kind": "theorem",
  "lexical_name": "structurally_solved_preserves_semantic_frontier",
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
  "slug": "structurally-solved-preserves-semantic-frontier--1a97570c1ed741584b4922ab",
  "source": {
    "blob": "40ff78ba6130f55e4420b0bc5468e146690998f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 308,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Varianteb9148a7fc56bb3e52a221c16013aa15b9a0007a1c8761a1ee775c1e0b43632d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a97570c1ed741584b4922ababcc597b66efcbfc74abf076b55f50551f1032f8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Varianteb9148a7fc56bb3e52a221c16013aa15b9a0007a1c8761a1ee775c1e0b43632d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bd1b1e7-20a6-c935-56c7-b10ec387072b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem structurally_solved_preserves_semantic_frontier
    {cut : EvidenceCut}
    {solution : StructuralSolution cut}
    {unknowns : Array (UnknownObligation cut)}
    (_resolved :
      resolveMetaOverlapSemantics cut =
        .structurallySolved solution unknowns) :
    StructuralSemanticSound cut solution ∧
    ∀ obligation : Fin unknowns.size,
      RequiresExternalEvidence unknowns[obligation] ∨
      RequiresNewLinguisticInvariant
        unknowns[obligation] := by
  constructor
  · exact
      ⟨solution.certificate.cutWellFormed,
        solution.certificate.normalizationSound,
        solution.certificate.candidateCoverageSound,
        solution.certificate.tokenizationSound,
        solution.certificate.metadataTyped,
        solution.certificate.provenanceComplete,
        solution.certificate.graphWellFormed,
        solution.certificate.snapshotBound,
        solution.certificate.replayInputsCanonical⟩
  · intro obligation
    exact
      solution.semanticFrontierBoundary
        unknowns[obligation]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Varianteb9148a7fc56bb3e52a221c16013aa15b9a0007a1c8761a1ee775c1e0b43632d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Varianteb9148a7fc56bb3e52a221c16013aa15b9a0007a1c8761a1ee775c1e0b43632d.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40ff78ba6130f55e4420b0bc5468e146690998f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
