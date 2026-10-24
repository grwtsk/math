# TreeOccurrence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5150ce83ff3fa94bc0d56163202a316e101791d7f4fd7a92ea4379d029e46d8c",
  "kind": "structure",
  "lexical_name": "TreeOccurrence",
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
  "slug": "treeoccurrence--dab2e8252f93ee005ee4e8c8",
  "source": {
    "blob": "d66f8b39d881da0da1cfd20fd00cf09935335cd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 24,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A02b4fd073ae35989/Variante42db3df564f7ec2dc034bfd2f325b7e5b2a38ad56cc0a061f5a415886fb8275.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dab2e8252f93ee005ee4e8c87b0de3c67484ab8c9e009e504fb62f078117c083",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A02b4fd073ae35989/Variante42db3df564f7ec2dc034bfd2f325b7e5b2a38ad56cc0a061f5a415886fb8275.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5150ce83ff3fa94bc0d56163202a316e101791d7f4fd7a92ea4379d029e46d8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TreeOccurrence where
  occurrenceId : ProjectionOccurrenceId
  nodeKind : NodeKind
  semanticId : Option ConceptId
  projectionOnly : Bool
  canonicalTargetOccurrenceId : Option ProjectionOccurrenceId
  parentOccurrenceId : Option ProjectionOccurrenceId
  canonicalName : String
  depth : Nat
  preorder : Nat
  subtreeEnd : Nat
  leafStart : Nat
  leafEnd : Nat
  subtreeSize : Nat
  canonicalPathId : CanonicalPathId
  pathOccurrenceIds : List ProjectionOccurrenceId
  pathSemanticIds : List ConceptId
  deriving DecidableEq

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A02b4fd073ae35989/Variante42db3df564f7ec2dc034bfd2f325b7e5b2a38ad56cc0a061f5a415886fb8275.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A02b4fd073ae35989/Variante42db3df564f7ec2dc034bfd2f325b7e5b2a38ad56cc0a061f5a415886fb8275.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d66f8b39d881da0da1cfd20fd00cf09935335cd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
