# NeuralAccuracyCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c35f678ee7f0d8ed081ccb93ea7c5eed028d95195b48b6bf8164157aefa3f7e",
  "kind": "structure",
  "lexical_name": "NeuralAccuracyCertificate",
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
  "slug": "neuralaccuracycertificate--564ad8e08fbc44705c5f49ce",
  "source": {
    "blob": "5b6a670a4737e7942baaf50d77602a296b256649",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 408,
    "path": "GRWTSK/Topology/GeneralTopology/NeuralGeometry/Variantbfd36bb3d66c96f36da10bad6b037ff0046086776579746066ef613d360fc33a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:564ad8e08fbc44705c5f49cebc8f9de954c2383073fc33c6ad6b32a88ad06c7c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NeuralGeometry/Variantbfd36bb3d66c96f36da10bad6b037ff0046086776579746066ef613d360fc33a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c35f678ee7f0d8ed081ccb93ea7c5eed028d95195b48b6bf8164157aefa3f7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NeuralAccuracyCertificate
    (Symbol : Type*) [Fintype Symbol] where
  candidate : CertifiedNeuralCandidate (NeuralRhetoricalState Symbol)
  before : NeuralRhetoricalState Symbol
  target : NeuralRhetoricalState Symbol
  targetEvidence : Set RecordId
  errorNonincreasing :
    rhetoricalSquaredError (candidate.transform before) target ≤
      rhetoricalSquaredError before target

namespace NeuralAccuracyCertificate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NeuralGeometry/Variantbfd36bb3d66c96f36da10bad6b037ff0046086776579746066ef613d360fc33a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NeuralGeometry/Variantbfd36bb3d66c96f36da10bad6b037ff0046086776579746066ef613d360fc33a.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b6a670a4737e7942baaf50d77602a296b256649` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
