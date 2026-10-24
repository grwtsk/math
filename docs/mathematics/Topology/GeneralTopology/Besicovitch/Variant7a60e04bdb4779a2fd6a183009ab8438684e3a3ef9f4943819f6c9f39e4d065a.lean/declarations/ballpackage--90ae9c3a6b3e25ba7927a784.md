# BallPackage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04f2dde1216a681c9c3a3a54a068aeb7146885117f85a2283d44943370030dad",
  "kind": "structure",
  "lexical_name": "BallPackage",
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
  "slug": "ballpackage--90ae9c3a6b3e25ba7927a784",
  "source": {
    "blob": "d908a29a0b3f27e2f9b6163a20011fb3cc29e3b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 191,
    "path": "GRWTSK/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90ae9c3a6b3e25ba7927a784c6409a3483ee1e1722c6245dd569566ea4bd26ea",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04f2dde1216a681c9c3a3a54a068aeb7146885117f85a2283d44943370030dad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BallPackage (β : Type*) (α : Type*) where
  /-- Centers of the balls -/
  c : β → α
  /-- Radii of the balls -/
  r : β → ℝ
  rpos : ∀ b, 0 < r b
  /-- Bound on the radii of the balls -/
  r_bound : ℝ
  r_le : ∀ b, r b ≤ r_bound

/-- The ball package made of unit balls. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d908a29a0b3f27e2f9b6163a20011fb3cc29e3b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
