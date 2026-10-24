# toNonAssocCommRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:403cff4da4c63f84b5afe9dd762ee159a093bb0bb25915dbc1f7deee6f1b6b55",
  "kind": "abbrev",
  "lexical_name": "toNonAssocCommRing",
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
  "slug": "tononassoccommring--388b71b9949bab6c2f53d5d2",
  "source": {
    "blob": "e6f9dd3e35cbf8c99c3e643c3c8bc1a1c6a361a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 587,
    "line": 582,
    "path": "GRWTSK/Algebra/Defs/Variantf24e4ebf7e3835f0de167e3984c5c0100ddbe6e16fc47984baccff00abdc7be4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:388b71b9949bab6c2f53d5d278875a8adf9515671927bf9c79e9b41f49cdd528",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantf24e4ebf7e3835f0de167e3984c5c0100ddbe6e16fc47984baccff00abdc7be4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:403cff4da4c63f84b5afe9dd762ee159a093bb0bb25915dbc1f7deee6f1b6b55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 582–587.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev toNonAssocCommRing [NonUnitalNonAssocCommRing A] [IsUnital A] : NonAssocCommRing A where

/-- A unital non-unital ring is a ring.

This constructor is primarily intended to be used within proofs since it creates bad definitional
equalities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantf24e4ebf7e3835f0de167e3984c5c0100ddbe6e16fc47984baccff00abdc7be4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantf24e4ebf7e3835f0de167e3984c5c0100ddbe6e16fc47984baccff00abdc7be4.lean#L582).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6f9dd3e35cbf8c99c3e643c3c8bc1a1c6a361a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
