# QuasiIsogenyStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6c2ffd50de3a320582c296858819c90e6f0e8a6b4d255c88fc8cb9e195e42be",
  "kind": "structure",
  "lexical_name": "QuasiIsogenyStep",
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
  "slug": "quasiisogenystep--40f500056a7f80b94a684c77",
  "source": {
    "blob": "1a34ef15e4666c5529e747dc942cb697903dc0c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 324,
    "path": "GRWTSK/Topology/GeneralTopology/ArithmeticAuthorities/Variant6d46123b5eec2d2be1c386b8fca7e35ab348dc16434e8a7ae5036a70dd07850f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40f500056a7f80b94a684c77aaa506fdb4425e3aa2b37cb954bd225a46f8ca2b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ArithmeticAuthorities/Variant6d46123b5eec2d2be1c386b8fca7e35ab348dc16434e8a7ae5036a70dd07850f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6c2ffd50de3a320582c296858819c90e6f0e8a6b4d255c88fc8cb9e195e42be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure QuasiIsogenyStep where
  sourceCurveHash : Nat
  targetCurveHash : Nat
  numeratorDegree : Nat
  denominator : Nat
  denominatorPositive : denominator > 0
  rationalIsogenySound : Prop
  rationalIsogenySoundProof : rationalIsogenySound
  compatibleWithPrismaticRealization : Prop
  compatibleWithPrismaticRealizationProof : compatibleWithPrismaticRealization
  compatibleWithSpectralRealization : Prop
  compatibleWithSpectralRealizationProof : compatibleWithSpectralRealization

/-- A finite quasi-isogeny flow. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ArithmeticAuthorities/Variant6d46123b5eec2d2be1c386b8fca7e35ab348dc16434e8a7ae5036a70dd07850f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ArithmeticAuthorities/Variant6d46123b5eec2d2be1c386b8fca7e35ab348dc16434e8a7ae5036a70dd07850f.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a34ef15e4666c5529e747dc942cb697903dc0c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
