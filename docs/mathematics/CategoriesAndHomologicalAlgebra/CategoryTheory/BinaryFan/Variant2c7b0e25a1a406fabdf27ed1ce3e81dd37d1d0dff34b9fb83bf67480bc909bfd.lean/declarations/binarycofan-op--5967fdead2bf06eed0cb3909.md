# BinaryCofan.op

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01f731aa79335f1aa99bbc2d1031b58d1393fd0bae164089ad2787266ea131d0",
  "kind": "abbrev",
  "lexical_name": "BinaryCofan.op",
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
  "slug": "binarycofan-op--5967fdead2bf06eed0cb3909",
  "source": {
    "blob": "fdd17ee9b9e25ef7dda7b1f551e7976a93316f97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 426,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryFan/Variant2c7b0e25a1a406fabdf27ed1ce3e81dd37d1d0dff34b9fb83bf67480bc909bfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5967fdead2bf06eed0cb3909fe77e33861d8739ab18c3edb16a60c140a9d4625",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryFan/Variant2c7b0e25a1a406fabdf27ed1ce3e81dd37d1d0dff34b9fb83bf67480bc909bfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01f731aa79335f1aa99bbc2d1031b58d1393fd0bae164089ad2787266ea131d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev BinaryCofan.op (c : BinaryCofan X Y) : BinaryFan (op X) (op Y) :=
  .mk c.inl.op c.inr.op

/-- A binary fan in the opposite category gives a binary cofan. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryFan/Variant2c7b0e25a1a406fabdf27ed1ce3e81dd37d1d0dff34b9fb83bf67480bc909bfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryFan/Variant2c7b0e25a1a406fabdf27ed1ce3e81dd37d1d0dff34b9fb83bf67480bc909bfd.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdd17ee9b9e25ef7dda7b1f551e7976a93316f97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
