# JordanOrderCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5576c642db8fe1f124f2f48ecc228864db7e15a201e5f06f5cfe7562963fe039",
  "kind": "structure",
  "lexical_name": "JordanOrderCertificate",
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
  "slug": "jordanordercertificate--e313060a804e2efbf8654992",
  "source": {
    "blob": "2a9d62617387de46b45363623df426a1d7bcdbb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 52,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpectralConditioning/Variant76a0b8594e8879b193f34c6c7052d4f1abb99c0582237d9c93ad7311a8da21b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e313060a804e2efbf8654992549dcf2996ee64d7e235b4283a806f00bbfdb688",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpectralConditioning/Variant76a0b8594e8879b193f34c6c7052d4f1abb99c0582237d9c93ad7311a8da21b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5576c642db8fe1f124f2f48ecc228864db7e15a201e5f06f5cfe7562963fe039`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure JordanOrderCertificate
    (R : Type u) (Carrier : Type v)
    [Semiring R] [AddCommMonoid Carrier] [Module R Carrier]
    (nilpotent : Module.End R Carrier) where
  order : Nat
  order_pos : 0 < order
  annihilates : nilpotent ^ order = 0

/--
An observable is Jordan-sensitive when every nonzero nilpotent direction is
detected at some positive derivative or weighted-trace order.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpectralConditioning/Variant76a0b8594e8879b193f34c6c7052d4f1abb99c0582237d9c93ad7311a8da21b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpectralConditioning/Variant76a0b8594e8879b193f34c6c7052d4f1abb99c0582237d9c93ad7311a8da21b4.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a9d62617387de46b45363623df426a1d7bcdbb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
