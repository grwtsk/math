# TreeOccurrence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d316bc07dd815fe182d4ef677996866947b24ee90056b8ab1b16c6317701fe6",
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
  "slug": "treeoccurrence--a61afcbe28463df4e2dbfa92",
  "source": {
    "blob": "9cd52dac4bfe457ad7a66edc1c6ee8fafc3473be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 16,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A02b4fd073ae35989/Variantb008afed9ff4c8fc94e3ca00e53a282d703b689627807c9032e045d43732eb34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a61afcbe28463df4e2dbfa92c24f3b1ae4ea22a1ce1aed2d625152c3ab42daa3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A02b4fd073ae35989/Variantb008afed9ff4c8fc94e3ca00e53a282d703b689627807c9032e045d43732eb34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d316bc07dd815fe182d4ef677996866947b24ee90056b8ab1b16c6317701fe6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–35.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A02b4fd073ae35989/Variantb008afed9ff4c8fc94e3ca00e53a282d703b689627807c9032e045d43732eb34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A02b4fd073ae35989/Variantb008afed9ff4c8fc94e3ca00e53a282d703b689627807c9032e045d43732eb34.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cd52dac4bfe457ad7a66edc1c6ee8fafc3473be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
