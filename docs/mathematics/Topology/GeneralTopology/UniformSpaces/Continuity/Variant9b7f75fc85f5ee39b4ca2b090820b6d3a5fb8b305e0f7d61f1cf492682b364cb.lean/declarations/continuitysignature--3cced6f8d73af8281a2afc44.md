# ContinuitySignature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6bea2cb8f34908c9cef4dc3ed81bc75aac5423e496b6eef114973703ebb9c260",
  "kind": "structure",
  "lexical_name": "ContinuitySignature",
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
  "slug": "continuitysignature--3cced6f8d73af8281a2afc44",
  "source": {
    "blob": "04d9543506fe4230db6c33785eb65ebd912153f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 16,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Continuity/Variant9b7f75fc85f5ee39b4ca2b090820b6d3a5fb8b305e0f7d61f1cf492682b364cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3cced6f8d73af8281a2afc44f8aa60c141d3f675d960dfd2f09a728a5f2b1fd5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Continuity/Variant9b7f75fc85f5ee39b4ca2b090820b6d3a5fb8b305e0f7d61f1cf492682b364cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6bea2cb8f34908c9cef4dc3ed81bc75aac5423e496b6eef114973703ebb9c260`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ContinuitySignature (Point : Type u) where
  cauchy : (Nat → Point) → Prop
  convergesTo : (Nat → Point) → Point → Prop

/-- Every declared Cauchy sequence has a represented limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Continuity/Variant9b7f75fc85f5ee39b4ca2b090820b6d3a5fb8b305e0f7d61f1cf492682b364cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Continuity/Variant9b7f75fc85f5ee39b4ca2b090820b6d3a5fb8b305e0f7d61f1cf492682b364cb.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04d9543506fe4230db6c33785eb65ebd912153f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
