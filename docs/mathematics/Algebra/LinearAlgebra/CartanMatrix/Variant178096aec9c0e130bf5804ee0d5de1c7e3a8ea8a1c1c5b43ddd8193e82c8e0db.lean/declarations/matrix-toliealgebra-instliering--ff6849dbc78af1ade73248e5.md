# Matrix.ToLieAlgebra.instLieRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa103fe920a482faa72aa7d8affb472939bf8d8db2c355d61358d9d802990972",
  "kind": "instance",
  "lexical_name": "Matrix.ToLieAlgebra.instLieRing",
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
  "slug": "matrix-toliealgebra-instliering--ff6849dbc78af1ade73248e5",
  "source": {
    "blob": "9f66318d30e3ad7d8af0406f23e7a23cb084e130",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 188,
    "path": "GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff6849dbc78af1ade73248e55fe68d7af9891b367aba78e1e53960681297da89",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa103fe920a482faa72aa7d8affb472939bf8d8db2c355d61358d9d802990972`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Matrix.ToLieAlgebra.instLieRing : LieRing (Matrix.ToLieAlgebra R A) :=
  inferInstanceAs (LieRing (FreeLieAlgebra R _ ⧸ CartanMatrix.Relations.toIdeal R A))
#align matrix.to_lie_algebra.lie_ring Matrix.ToLieAlgebra.instLieRing

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f66318d30e3ad7d8af0406f23e7a23cb084e130` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
