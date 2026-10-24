# OrderDual.continuousInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4970a52f0b7f9a2df8b0a9cebbcddd3f00372880fa3c51683abd4c4b6bd86204",
  "kind": "instance",
  "lexical_name": "OrderDual.continuousInf",
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
  "slug": "orderdual-continuousinf--167a18ed29fb3bdd31511774",
  "source": {
    "blob": "34441d3c15c55beeb76d05d2fb4706d83086bb37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 52,
    "path": "GRWTSK/Topology/GeneralTopology/Lattice/Variant0a3a3fd6745e1a145df87398cad754dd970208db1189e75af6b2748353268bcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:167a18ed29fb3bdd315117745822ad10ccbc2e2f5b0e6df940438b7e9dd9696c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lattice/Variant0a3a3fd6745e1a145df87398cad754dd970208db1189e75af6b2748353268bcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4970a52f0b7f9a2df8b0a9cebbcddd3f00372880fa3c51683abd4c4b6bd86204`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance OrderDual.continuousInf (L : Type*) [TopologicalSpace L] [Max L]
    [h : ContinuousSup L] : ContinuousInf Lᵒᵈ where
  continuous_inf := h.continuous_sup

/-- Let `L` be a lattice equipped with a topology such that `L` has continuous infimum and supremum.
Then `L` is said to be a *topological lattice*.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lattice/Variant0a3a3fd6745e1a145df87398cad754dd970208db1189e75af6b2748353268bcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lattice/Variant0a3a3fd6745e1a145df87398cad754dd970208db1189e75af6b2748353268bcb.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34441d3c15c55beeb76d05d2fb4706d83086bb37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
