# PrecisionRecord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f09ecb3d51a6fb89a2413bf4ec1cc8024e2060247f0950d24d0fd428cefa0f2",
  "kind": "structure",
  "lexical_name": "PrecisionRecord",
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
  "slug": "precisionrecord--cd8747a5e754f1f0079ba74e",
  "source": {
    "blob": "d5612833464e4e9819f01eaa258f0ef0650a5094",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 106,
    "path": "GRWTSK/Algebra/LinearAlgebra/PrecisionAccuracy/Variant6e4bb54751732c3e9cbd04ae3f9692893cb47fd56a2ad6f88d7981b0a5a22f86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd8747a5e754f1f0079ba74e4d85657906f186ccdcd2bdc6310c074d23518591",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PrecisionAccuracy/Variant6e4bb54751732c3e9cbd04ae3f9692893cb47fd56a2ad6f88d7981b0a5a22f86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f09ecb3d51a6fb89a2413bf4ec1cc8024e2060247f0950d24d0fd428cefa0f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrecisionRecord where
  id : RecordId
  profile : ProfileId
  dimensions : PrecisionDimension → Option PrecisionDimensionRecord
  aggregationRule : Option RecordId
  residuals : Set ResidualId

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PrecisionAccuracy/Variant6e4bb54751732c3e9cbd04ae3f9692893cb47fd56a2ad6f88d7981b0a5a22f86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PrecisionAccuracy/Variant6e4bb54751732c3e9cbd04ae3f9692893cb47fd56a2ad6f88d7981b0a5a22f86.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5612833464e4e9819f01eaa258f0ef0650a5094` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
