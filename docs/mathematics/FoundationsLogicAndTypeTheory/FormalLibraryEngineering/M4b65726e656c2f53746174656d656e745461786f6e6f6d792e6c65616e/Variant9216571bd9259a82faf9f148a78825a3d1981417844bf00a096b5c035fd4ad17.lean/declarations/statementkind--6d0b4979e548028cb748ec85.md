# StatementKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49bd5a45f749a0677a5c2d720e8393b1c8ff012314024a6c55494fd7bbee96b2",
  "kind": "inductive",
  "lexical_name": "StatementKind",
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
  "slug": "statementkind--6d0b4979e548028cb748ec85",
  "source": {
    "blob": "e727814ef8ebf55cc3473380d7b1f557d2e2d1ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f53746174656d656e745461786f6e6f6d792e6c65616e/Variant9216571bd9259a82faf9f148a78825a3d1981417844bf00a096b5c035fd4ad17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d0b4979e548028cb748ec85841dcd69df2d6fc4c9938b32e89b330b3c954bea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f53746174656d656e745461786f6e6f6d792e6c65616e/Variant9216571bd9259a82faf9f148a78825a3d1981417844bf00a096b5c035fd4ad17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49bd5a45f749a0677a5c2d720e8393b1c8ff012314024a6c55494fd7bbee96b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive StatementKind where
  | axiomPostulate
  | mathematicalHypothesis
  | scientificHypothesis
  | conjecture
  | theorem
  | proposition
  | lemma
  | corollary
  | claim
  | identity
  | assembly
  | mathematicalStructure
  | speciesOfStructure
  | schema
deriving Repr, DecidableEq

/-- Repository authority state, separated from the statement's mathematical name. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f53746174656d656e745461786f6e6f6d792e6c65616e/Variant9216571bd9259a82faf9f148a78825a3d1981417844bf00a096b5c035fd4ad17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f53746174656d656e745461786f6e6f6d792e6c65616e/Variant9216571bd9259a82faf9f148a78825a3d1981417844bf00a096b5c035fd4ad17.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e727814ef8ebf55cc3473380d7b1f557d2e2d1ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
