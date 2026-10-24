# VerificationResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d5ec2a82e619332c25330dc073d7e9c17f97b8af0c3fc6aeaeb2e49cfeeb5fb",
  "kind": "inductive",
  "lexical_name": "VerificationResult",
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
  "slug": "verificationresult--dc2f5e54baf2e96230837afb",
  "source": {
    "blob": "2a6d11a944c586ac0fab88194e333fed35153cf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 169,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantebccab6ab38b755a4a9d7e05517b2d0d15850d03e7f3df1f8a337c02fa4bd7d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc2f5e54baf2e96230837afb4b7873d50b12eb884a8ceb8eec915b58ec16f13a",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantebccab6ab38b755a4a9d7e05517b2d0d15850d03e7f3df1f8a337c02fa4bd7d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d5ec2a82e619332c25330dc073d7e9c17f97b8af0c3fc6aeaeb2e49cfeeb5fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive VerificationResult (Host EdgeId : Type*)
    [Fintype Host] [DecidableEq Host]
    [Fintype EdgeId] [DecidableEq EdgeId] where
  | admitted (value : AdmittedProposal Host EdgeId)
  | rejected (reason : ProposalRejection)

/-! ## Range-only raw conversion

The existing ingress normalizer additionally checks the normalized color sum.
The verifier must not use that helper at gate 10: otherwise a valid-range value
with a wrong sum would be misclassified as `channelOutOfRange` instead of
reaching the later `colorInvariantViolation` gate.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantebccab6ab38b755a4a9d7e05517b2d0d15850d03e7f3df1f8a337c02fa4bd7d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantebccab6ab38b755a4a9d7e05517b2d0d15850d03e7f3df1f8a337c02fa4bd7d8.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a6d11a944c586ac0fab88194e333fed35153cf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
