# ReuseReceipt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23cd0d4f4932779035af66aa28162e1f0d7dcfbd7666e4db2b5b32b439ab5109",
  "kind": "structure",
  "lexical_name": "ReuseReceipt",
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
  "slug": "reusereceipt--e87dc1f7d907e75e0bf4ce6e",
  "source": {
    "blob": "3792f3e781705ecb24f53744201a7c73212e1439",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Receipt/Variant6a0115e48fa2c5373cd72315ba416505ddff32776a6fa71e418fe4242f95da39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e87dc1f7d907e75e0bf4ce6ef63ba70cf5089afae30d716961a509b674d6b213",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Receipt/Variant6a0115e48fa2c5373cd72315ba416505ddff32776a6fa71e418fe4242f95da39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23cd0d4f4932779035af66aa28162e1f0d7dcfbd7666e4db2b5b32b439ab5109`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ReuseReceipt where
  schema : String
  normalizedTargetTypeHash : Digest
  mathlibRevision : String
  exactMatchCandidates : List Name
  unificationCandidates : List Name
  rewriteCandidates : List Name
  specializationCandidates : List Name
  candidateFailures : List RetrievalFailure
  minimalRequiredImports : List Name
  retrievalModelVersion : String
  declarationIndexVersion : String
  selectedDeclaration? : Option Name
  adapterJustification? : Option String
deriving DecidableEq, Repr

/-- Search reproducibility data.  This is explicitly not theorem authority. -/
@[surface_novel, surface_certificate]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Receipt/Variant6a0115e48fa2c5373cd72315ba416505ddff32776a6fa71e418fe4242f95da39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Receipt/Variant6a0115e48fa2c5373cd72315ba416505ddff32776a6fa71e418fe4242f95da39.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3792f3e781705ecb24f53744201a7c73212e1439` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
