# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42ee858c0e6386cad6764b82c4d454fa0ff5ad15e651e11edc5c4a6d70c69aa0",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--4d02ce0d5145facf9632ebe2",
  "source": {
    "blob": "ab37fd03b7ce9148089f64223ee5c5ae13c3bdf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 190,
    "path": "GRWTSK/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d02ce0d5145facf9632ebe2b983ca2301cbf706aec32c7b583038cdb01266b3",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42ee858c0e6386cad6764b82c4d454fa0ff5ad15e651e11edc5c4a6d70c69aa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : FloorRing ℤ where
  floor := id
  ceil := id
  gc_coe_floor a b := by
    rw [Int.cast_id, id_def]
  gc_ceil_coe a b := by
    rw [Int.cast_id, id_def]

/-- A `FloorRing` constructor from the `floor` function alone. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab37fd03b7ce9148089f64223ee5c5ae13c3bdf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
