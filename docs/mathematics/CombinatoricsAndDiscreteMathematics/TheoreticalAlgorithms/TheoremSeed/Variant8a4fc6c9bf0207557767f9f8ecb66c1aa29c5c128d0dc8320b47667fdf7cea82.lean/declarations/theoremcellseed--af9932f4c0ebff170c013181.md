# TheoremCellSeed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60239c8e82b76a8b0e7037dbf1f031e66a18767906c3613141d1abab19b6e10a",
  "kind": "structure",
  "lexical_name": "TheoremCellSeed",
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
  "slug": "theoremcellseed--af9932f4c0ebff170c013181",
  "source": {
    "blob": "e8bcf6cd5d9bd2d5a05a8781c16935c615d86d56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 29,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremSeed/Variant8a4fc6c9bf0207557767f9f8ecb66c1aa29c5c128d0dc8320b47667fdf7cea82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af9932f4c0ebff170c013181fe3616ed04ea608d90cd50d8b469cf00ca019292",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremSeed/Variant8a4fc6c9bf0207557767f9f8ecb66c1aa29c5c128d0dc8320b47667fdf7cea82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60239c8e82b76a8b0e7037dbf1f031e66a18767906c3613141d1abab19b6e10a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TheoremCellSeed where
  declarationId : DeclarationId
  theoremName : Lean.Name
  statementDigest : Digest
  proofDigest : Option Digest
  dependencyDigest : Digest
  trustClosureDigest : Digest
  sourceDigest : Option Digest
  owningModuleDigest : Digest
  directDependencies : Array Lean.Name
  transitiveConeDigest : Digest
  authorityEvidence : TrustClosure
  authority : TheoremCellSeedAuthority := .extractedEvidenceOnly
  deriving DecidableEq, Repr, Inhabited

namespace TheoremCellSeed

/-- A seed is aligned when its trust record describes the same declaration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremSeed/Variant8a4fc6c9bf0207557767f9f8ecb66c1aa29c5c128d0dc8320b47667fdf7cea82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremSeed/Variant8a4fc6c9bf0207557767f9f8ecb66c1aa29c5c128d0dc8320b47667fdf7cea82.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8bcf6cd5d9bd2d5a05a8781c16935c615d86d56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
