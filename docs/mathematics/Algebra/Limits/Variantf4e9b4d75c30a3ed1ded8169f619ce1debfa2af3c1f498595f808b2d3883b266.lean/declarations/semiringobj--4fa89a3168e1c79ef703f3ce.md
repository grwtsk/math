# semiringObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e47d0336d7e44fc676c101572206bbe6948167b6704b9799f57774c5e44c961",
  "kind": "instance",
  "lexical_name": "semiringObj",
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
  "slug": "semiringobj--4fa89a3168e1c79ef703f3ce",
  "source": {
    "blob": "28567d9e22e4bf79f8f574bba0d00db64d9ccf7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 42,
    "path": "GRWTSK/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4fa89a3168e1c79ef703f3ce41a402f44865df10770bcadb7dfba355c3aca735",
  "verification": {
    "reference": "docs/verification/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e47d0336d7e44fc676c101572206bbe6948167b6704b9799f57774c5e44c961`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance semiringObj (j) : Semiring ((F ⋙ forget SemiRingCat).obj j) :=
  inferInstanceAs <| Semiring (F.obj j)

/-- The flat sections of a functor into `SemiRingCat` form a subsemiring of all sections. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Limits/Variantf4e9b4d75c30a3ed1ded8169f619ce1debfa2af3c1f498595f808b2d3883b266.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28567d9e22e4bf79f8f574bba0d00db64d9ccf7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
