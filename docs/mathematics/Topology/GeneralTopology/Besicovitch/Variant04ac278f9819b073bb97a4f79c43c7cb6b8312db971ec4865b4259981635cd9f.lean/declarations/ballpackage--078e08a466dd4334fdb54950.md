# BallPackage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29a44f700289bb0685e095cced209a0ebf0034e8a3c7a670bff400085df0e409",
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
  "slug": "ballpackage--078e08a466dd4334fdb54950",
  "source": {
    "blob": "69c4088316c800628826c79b2c643c22292baebf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 192,
    "path": "GRWTSK/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:078e08a466dd4334fdb5495076b64caeb55c2d88a6f89a9b6fadd2b02dc084ed",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29a44f700289bb0685e095cced209a0ebf0034e8a3c7a670bff400085df0e409`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BallPackage (β : Type*) (α : Type*) where
  c : β → α
  r : β → ℝ
  rpos : ∀ b, 0 < r b
  r_bound : ℝ
  r_le : ∀ b, r b ≤ r_bound
#align besicovitch.ball_package Besicovitch.BallPackage
#align besicovitch.ball_package.c Besicovitch.BallPackage.c
#align besicovitch.ball_package.r Besicovitch.BallPackage.r
#align besicovitch.ball_package.rpos Besicovitch.BallPackage.rpos
#align besicovitch.ball_package.r_bound Besicovitch.BallPackage.r_bound
#align besicovitch.ball_package.r_le Besicovitch.BallPackage.r_le

/-- The ball package made of unit balls. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69c4088316c800628826c79b2c643c22292baebf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
