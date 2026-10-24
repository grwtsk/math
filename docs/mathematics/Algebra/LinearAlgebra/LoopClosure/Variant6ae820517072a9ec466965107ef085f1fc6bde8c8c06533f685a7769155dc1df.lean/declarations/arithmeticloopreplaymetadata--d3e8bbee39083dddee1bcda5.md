# ArithmeticLoopReplayMetadata

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5367d437084e5d7f878537cbabd6682fc2768b1a63804f0976cd39eaa76a220",
  "kind": "structure",
  "lexical_name": "ArithmeticLoopReplayMetadata",
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
  "slug": "arithmeticloopreplaymetadata--d3e8bbee39083dddee1bcda5",
  "source": {
    "blob": "94d8c3c728ea880d5c5d91b5d37ce8a91e727556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 25,
    "path": "GRWTSK/Algebra/LinearAlgebra/LoopClosure/Variant6ae820517072a9ec466965107ef085f1fc6bde8c8c06533f685a7769155dc1df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3e8bbee39083dddee1bcda52ed7676d6f16d71b16411af8f2c24ea6ad346547",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LoopClosure/Variant6ae820517072a9ec466965107ef085f1fc6bde8c8c06533f685a7769155dc1df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5367d437084e5d7f878537cbabd6682fc2768b1a63804f0976cd39eaa76a220`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ArithmeticLoopReplayMetadata where
  periodDigest : Digest
  polarizationDigest : Digest
  levelDigest : Digest
  frobeniusDigest : Digest
  filtrationDigest : Digest
  monodromyDigest : Digest
  determinantDigest : Digest
  stateDigest : Digest

/--
Actual finite-dimensional arithmetic channels carried around a proposed loop.

The rational carrier makes Frobenius, period, filtration, level, monodromy,
polarization, and determinant mathematical objects rather than addresses.
The determinant is derived from `monodromy`; it is not an independent field.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LoopClosure/Variant6ae820517072a9ec466965107ef085f1fc6bde8c8c06533f685a7769155dc1df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LoopClosure/Variant6ae820517072a9ec466965107ef085f1fc6bde8c8c06533f685a7769155dc1df.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94d8c3c728ea880d5c5d91b5d37ce8a91e727556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
