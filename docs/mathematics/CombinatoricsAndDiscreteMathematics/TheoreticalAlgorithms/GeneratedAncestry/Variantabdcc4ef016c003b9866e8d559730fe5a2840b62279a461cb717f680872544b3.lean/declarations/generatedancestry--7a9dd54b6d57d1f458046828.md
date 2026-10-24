# GeneratedAncestry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07e8f6e60295b956a575b23b6984735fe7ecd5978fac6590e3acf817aea415b3",
  "kind": "structure",
  "lexical_name": "GeneratedAncestry",
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
  "slug": "generatedancestry--7a9dd54b6d57d1f458046828",
  "source": {
    "blob": "5f745cbb964f8c7efd9137b1ad6f37c65337ffc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 25,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeneratedAncestry/Variantabdcc4ef016c003b9866e8d559730fe5a2840b62279a461cb717f680872544b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a9dd54b6d57d1f458046828b4b3e1ccaa4779b3ffa23118beccc05aefd40180",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeneratedAncestry/Variantabdcc4ef016c003b9866e8d559730fe5a2840b62279a461cb717f680872544b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07e8f6e60295b956a575b23b6984735fe7ecd5978fac6590e3acf817aea415b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GeneratedAncestry where
  ancestryId : StableId
  generatorKind : GeneratorKind
  generator : Capability.Principal
  taskDigest : Digest
  promptDigest : Option Digest
  inputAddressIds : List StableId
  outputAddress : SourceAnalysis.AbstractSourceAddress
  authority : Concept.Profile
  obligationIds : List StableId
  predecessorAncestryIds : List StableId
  ancestryDigest : Digest
  deriving DecidableEq

/-- Re-ingestion binds generated output to a typed ingress entry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeneratedAncestry/Variantabdcc4ef016c003b9866e8d559730fe5a2840b62279a461cb717f680872544b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeneratedAncestry/Variantabdcc4ef016c003b9866e8d559730fe5a2840b62279a461cb717f680872544b3.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f745cbb964f8c7efd9137b1ad6f37c65337ffc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
