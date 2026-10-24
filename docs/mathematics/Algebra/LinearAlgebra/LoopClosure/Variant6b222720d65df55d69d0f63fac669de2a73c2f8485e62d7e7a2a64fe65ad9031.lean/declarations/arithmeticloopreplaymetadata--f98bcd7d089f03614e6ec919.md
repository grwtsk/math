# ArithmeticLoopReplayMetadata

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:653fa2fe742555415c580e75cf672a8931301864da0dbdd48f556e57c952641c",
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
  "slug": "arithmeticloopreplaymetadata--f98bcd7d089f03614e6ec919",
  "source": {
    "blob": "b0f94facd1efde023e7e94d07e88d2be61bce0e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 33,
    "path": "GRWTSK/Algebra/LinearAlgebra/LoopClosure/Variant6b222720d65df55d69d0f63fac669de2a73c2f8485e62d7e7a2a64fe65ad9031.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f98bcd7d089f03614e6ec9195c3a95dcdd99c3344195a5964bc29214f2dcdf52",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LoopClosure/Variant6b222720d65df55d69d0f63fac669de2a73c2f8485e62d7e7a2a64fe65ad9031.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:653fa2fe742555415c580e75cf672a8931301864da0dbdd48f556e57c952641c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–49.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LoopClosure/Variant6b222720d65df55d69d0f63fac669de2a73c2f8485e62d7e7a2a64fe65ad9031.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LoopClosure/Variant6b222720d65df55d69d0f63fac669de2a73c2f8485e62d7e7a2a64fe65ad9031.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0f94facd1efde023e7e94d07e88d2be61bce0e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
