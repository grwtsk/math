# groupRingMap_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ab71e13-1696-eac3-1cb2-4f1daba95780",
  "kind": "theorem",
  "lexical_name": "groupRingMap_of",
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
  "slug": "groupringmap-of--05f6114d9eb7c0b7b783f7af",
  "source": {
    "blob": "4d596b62e238725a3dd9a70af13b64504404afca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 75,
    "path": "GRWTSK/Algebra/GroupTheory/Interface/Variant7c28dc5a83c49102550b16bfb6e7af428a970af403b4f2c34d95b17bc1cb7e32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05f6114d9eb7c0b7b783f7afd54ac92b924ccf7fc493aabd2b7169e1af8f6527",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Interface/Variant7c28dc5a83c49102550b16bfb6e7af428a970af403b4f2c34d95b17bc1cb7e32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ab71e13-1696-eac3-1cb2-4f1daba95780`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem groupRingMap_of
    (A : RepresentationDatum)
    (g : A.Group) :
    A.groupRingMap (MonoidAlgebra.single g 1) =
      (A.representation g : A.NumberRing) :=
  A.groupRingMap_single g

end RepresentationDatum

/--
Supplied functoriality data for the K-theory map induced by one arithmetic
realization.

The predicate `InducedBy` is part of the selected K-theory model.  Requiring a
proof of it records that `kTheoryMap` really comes from the ring homomorphism;
this module does not pretend to construct algebraic K-theory itself.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Interface/Variant7c28dc5a83c49102550b16bfb6e7af428a970af403b4f2c34d95b17bc1cb7e32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Interface/Variant7c28dc5a83c49102550b16bfb6e7af428a970af403b4f2c34d95b17bc1cb7e32.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d596b62e238725a3dd9a70af13b64504404afca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
