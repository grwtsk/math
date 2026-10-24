# decodeEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d51297b5dd831c1b2156180db12e85cf35fc8093f991112b4a61007db28eef9",
  "kind": "def",
  "lexical_name": "decodeEnvelope",
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
  "slug": "decodeenvelope--76b67303f84a356f5b7078b0",
  "source": {
    "blob": "2a430afb0a6b8588b6d59739e2a0deb5402ed498",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 248,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant12d18231ab059edeb89c12255cc64a3189319f986c039ae99039fbcec8e584c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76b67303f84a356f5b7078b0d3c1eb066f3bf1dbafd97ab99a9c64d5f7705f6d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant12d18231ab059edeb89c12255cc64a3189319f986c039ae99039fbcec8e584c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d51297b5dd831c1b2156180db12e85cf35fc8093f991112b4a61007db28eef9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def decodeEnvelope (expected : FrameTag) (wire : List UInt8) : Option Envelope :=
  if wire.length > maxFrameBytes then none else
  runExact (do
    let receivedMagic ← readBytes 4
    ensure (receivedMagic = magic)
    let version ← readU16
    ensure (version = 1)
    let tagByte ← readByte
    let tag ← match decodeFrameTag tagByte with
      | some value => pure value
      | none => failure
    ensure (tag = expected)
    let reserved ← readByte
    ensure (reserved = 0)
    let payloadLength ← readU32
    ensure (payloadLength ≤ maxFrameBytes - frameOverhead)
    let payload ← readBytes payloadLength
    let payloadDigest ← readDigest
    ensure (sha256 payload = payloadDigest)
    pure { tag, payload, payloadDigest }) wire

/-- Encode one canonical frame.  This is used by kernel-checked parser tests;
runtime observations are still accepted only through formal recomputation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant12d18231ab059edeb89c12255cc64a3189319f986c039ae99039fbcec8e584c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant12d18231ab059edeb89c12255cc64a3189319f986c039ae99039fbcec8e584c2.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a430afb0a6b8588b6d59739e2a0deb5402ed498` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
