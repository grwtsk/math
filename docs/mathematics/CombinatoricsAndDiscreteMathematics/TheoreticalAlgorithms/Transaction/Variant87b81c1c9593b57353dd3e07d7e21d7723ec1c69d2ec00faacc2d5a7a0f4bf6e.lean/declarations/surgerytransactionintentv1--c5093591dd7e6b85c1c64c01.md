# SurgeryTransactionIntentV1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b43aedd350e9c454844b7c0c42d4d595ca44d0761ff10686d4e4ca8f2286a4a8",
  "kind": "structure",
  "lexical_name": "SurgeryTransactionIntentV1",
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
  "slug": "surgerytransactionintentv1--c5093591dd7e6b85c1c64c01",
  "source": {
    "blob": "f35c1f2827dcd3bd8ac0249efe6b715c8e296bb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transaction/Variant87b81c1c9593b57353dd3e07d7e21d7723ec1c69d2ec00faacc2d5a7a0f4bf6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5093591dd7e6b85c1c64c01965cee9d25f23c1c8ca07c0021ffe7031213c6da",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transaction/Variant87b81c1c9593b57353dd3e07d7e21d7723ec1c69d2ec00faacc2d5a7a0f4bf6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b43aedd350e9c454844b7c0c42d4d595ca44d0761ff10686d4e4ca8f2286a4a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SurgeryTransactionIntentV1 where
  context : SurgeryAdmissionContextV1
  proposal : SurgeryProposalV1
  admission : proposal.Valid context
  admittedProposalHash : Hash256
  admittedProposalHashMatches : admittedProposalHash = proposal.proposalHash
  reviewDigest : Hash256
  orderedRenameFiles : List SourceFileIdentity
  stagedModel : RepositorySourceModel

@[surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transaction/Variant87b81c1c9593b57353dd3e07d7e21d7723ec1c69d2ec00faacc2d5a7a0f4bf6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transaction/Variant87b81c1c9593b57353dd3e07d7e21d7723ec1c69d2ec00faacc2d5a7a0f4bf6e.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f35c1f2827dcd3bd8ac0249efe6b715c8e296bb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
