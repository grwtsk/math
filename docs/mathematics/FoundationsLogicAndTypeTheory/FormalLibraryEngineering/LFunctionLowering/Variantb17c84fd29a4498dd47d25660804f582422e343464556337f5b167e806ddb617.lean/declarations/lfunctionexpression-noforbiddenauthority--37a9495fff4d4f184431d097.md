# LFunctionExpression.NoForbiddenAuthority

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:740a2ffa545ce445400dd82d0e9ca1e5c0835928ff55a5c9b2466184a3a777a5",
  "kind": "def",
  "lexical_name": "LFunctionExpression.NoForbiddenAuthority",
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
  "slug": "lfunctionexpression-noforbiddenauthority--37a9495fff4d4f184431d097",
  "source": {
    "blob": "456f142a65ea80b6dd08b922c57aaee6e8db1199",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 15,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LFunctionLowering/Variantb17c84fd29a4498dd47d25660804f582422e343464556337f5b167e806ddb617.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37a9495fff4d4f184431d097a41dff3081f8c74864a663805df63da1c076c453",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LFunctionLowering/Variantb17c84fd29a4498dd47d25660804f582422e343464556337f5b167e806ddb617.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:740a2ffa545ce445400dd82d0e9ca1e5c0835928ff55a5c9b2466184a3a777a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LFunctionExpression.NoForbiddenAuthority
    (lfun : LFunctionExpression) : Prop :=
  lfun.theoremAuthority = false /\
  lfun.rhClaim = false /\
  lfun.analyticContinuationClaim = false /\
  lfun.primePredictionClaim = false /\
  lfun.spectralAuthority = false /\
  lfun.modularityProofClaim = false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LFunctionLowering/Variantb17c84fd29a4498dd47d25660804f582422e343464556337f5b167e806ddb617.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LFunctionLowering/Variantb17c84fd29a4498dd47d25660804f582422e343464556337f5b167e806ddb617.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `456f142a65ea80b6dd08b922c57aaee6e8db1199` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
