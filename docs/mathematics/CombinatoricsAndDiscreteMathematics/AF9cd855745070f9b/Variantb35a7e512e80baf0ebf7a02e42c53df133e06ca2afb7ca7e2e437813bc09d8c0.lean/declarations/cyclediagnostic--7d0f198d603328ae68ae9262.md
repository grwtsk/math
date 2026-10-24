# CycleDiagnostic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:882c520b12929c3ee381ea55314d08d0cb86593d3b47e50ea1bfbb1cf3cdc827",
  "kind": "structure",
  "lexical_name": "CycleDiagnostic",
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
  "slug": "cyclediagnostic--7d0f198d603328ae68ae9262",
  "source": {
    "blob": "e358b15d7c2d3aeaa7340dee83130503df7afc76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 15,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AF9cd855745070f9b/Variantb35a7e512e80baf0ebf7a02e42c53df133e06ca2afb7ca7e2e437813bc09d8c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d0f198d603328ae68ae926236be040b37c503b58b2154e5652f8a6ce83c07d9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AF9cd855745070f9b/Variantb35a7e512e80baf0ebf7a02e42c53df133e06ca2afb7ca7e2e437813bc09d8c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:882c520b12929c3ee381ea55314d08d0cb86593d3b47e50ea1bfbb1cf3cdc827`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CycleDiagnostic where
  id : ProjectionDiagnosticId
  members : Finset ConceptId
  relationIds : Finset RelationId
  deriving DecidableEq

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AF9cd855745070f9b/Variantb35a7e512e80baf0ebf7a02e42c53df133e06ca2afb7ca7e2e437813bc09d8c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AF9cd855745070f9b/Variantb35a7e512e80baf0ebf7a02e42c53df133e06ca2afb7ca7e2e437813bc09d8c0.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e358b15d7c2d3aeaa7340dee83130503df7afc76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
