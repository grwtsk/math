# Algebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ed2a6c7f0e1706bd3d655ecb836eb244ff11718fd564d1a404d36d9ccd64bf3",
  "kind": "structure",
  "lexical_name": "Algebra",
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
  "slug": "algebra--fc7fc0d53f3b49529be8e229",
  "source": {
    "blob": "f24c7432ed8448fcd4e7b4220c4344841665837b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 24,
    "path": "GRWTSK/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc7fc0d53f3b49529be8e22943c8b96e0463247abc2671d36b5ffdbb5b46eb15",
  "verification": {
    "reference": "docs/verification/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ed2a6c7f0e1706bd3d655ecb836eb244ff11718fd564d1a404d36d9ccd64bf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Algebra (Carrier : Type) where
  /-- The number of operations in the finite signature. -/
  numOps : ℕ
  /-- The arity of each indexed operation, including arity zero. -/
  arity : Fin numOps → ℕ
  /-- The total operation associated with each signature index. -/
  op : (index : Fin numOps) → (Fin (arity index) → Carrier) → Carrier

/-- Compatibility with all operations of an algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f24c7432ed8448fcd4e7b4220c4344841665837b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
