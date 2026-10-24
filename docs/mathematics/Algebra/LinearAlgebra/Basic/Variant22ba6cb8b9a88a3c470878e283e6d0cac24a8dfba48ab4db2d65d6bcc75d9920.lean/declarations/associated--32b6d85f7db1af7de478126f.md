# associated'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:931d99dc0bffca70e2c159a76a71e4eab7bec5a52dc36854f42d0b62c727d572",
  "kind": "abbrev",
  "lexical_name": "associated'",
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
  "slug": "associated--32b6d85f7db1af7de478126f",
  "source": {
    "blob": "ba86ff2cf97a7e31b5f653aef111f34d53964b9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 937,
    "line": 934,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant22ba6cb8b9a88a3c470878e283e6d0cac24a8dfba48ab4db2d65d6bcc75d9920.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32b6d85f7db1af7de478126f238d94e2b00a6ec20df65a8508cc1140b7410c17",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant22ba6cb8b9a88a3c470878e283e6d0cac24a8dfba48ab4db2d65d6bcc75d9920.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:931d99dc0bffca70e2c159a76a71e4eab7bec5a52dc36854f42d0b62c727d572`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 934–937.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev associated' : QuadraticMap R M N →ₗ[ℤ] BilinMap R M N :=
  associatedHom ℤ

/-- Symmetric bilinear forms can be lifted to quadratic forms -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant22ba6cb8b9a88a3c470878e283e6d0cac24a8dfba48ab4db2d65d6bcc75d9920.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant22ba6cb8b9a88a3c470878e283e6d0cac24a8dfba48ab4db2d65d6bcc75d9920.lean#L934).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba86ff2cf97a7e31b5f653aef111f34d53964b9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
