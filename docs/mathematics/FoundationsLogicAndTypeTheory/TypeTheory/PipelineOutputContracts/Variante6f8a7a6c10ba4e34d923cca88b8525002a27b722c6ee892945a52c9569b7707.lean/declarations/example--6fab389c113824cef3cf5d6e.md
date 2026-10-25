# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ddaf683e4f3b60fc14ffa1d66b31c409a89552ec1d01bf137b91ff2b4fdb1a8",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--6fab389c113824cef3cf5d6e",
  "source": {
    "blob": "21dc7c5a45d763210b23d14d2a404de0f6a7c4fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 379,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineOutputContracts/Variante6f8a7a6c10ba4e34d923cca88b8525002a27b722c6ee892945a52c9569b7707.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6fab389c113824cef3cf5d6ec96f30e13c140c5779c4e68a0817f86bd079c61f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineOutputContracts/Variante6f8a7a6c10ba4e34d923cca88b8525002a27b722c6ee892945a52c9569b7707.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ddaf683e4f3b60fc14ffa1d66b31c409a89552ec1d01bf137b91ff2b4fdb1a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (input : Frozen) (certificate : RustCertificate) (projected : Certificate)
    (admitted : InputAdmission input) (contract : SourceContract input certificate)
    (bound : projectCertificate input certificate = some projected) :
    projected.objects = input.objects ∧ projected.readsets = readSets input ∧
    projected.planLabel = input.planLabel ∧
    certificateCheck projected.objects projected.readsets projected.readsets (bindings input)
      projected.result.occurrences projected.result.outputs = true :=
  projected_certificate_consumed admitted contract bound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineOutputContracts/Variante6f8a7a6c10ba4e34d923cca88b8525002a27b722c6ee892945a52c9569b7707.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineOutputContracts/Variante6f8a7a6c10ba4e34d923cca88b8525002a27b722c6ee892945a52c9569b7707.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21dc7c5a45d763210b23d14d2a404de0f6a7c4fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
