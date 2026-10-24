# ComparatorSectorComplete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bca94de9844eb6364f43e08c231f9629e1987fc26640d815c85eec4b651651cc",
  "kind": "def",
  "lexical_name": "ComparatorSectorComplete",
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
  "slug": "comparatorsectorcomplete--3cf60cdd032abc01948755e1",
  "source": {
    "blob": "d2c432a10a2d59d6176648ac2b768fe0be896498",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 136,
    "path": "GRWTSK/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3cf60cdd032abc01948755e154c561981dbd3a6b80986e4f3ba52a2c0bb21c7d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bca94de9844eb6364f43e08c231f9629e1987fc26640d815c85eec4b651651cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ComparatorSectorComplete
    (Q : LinearComparator V) : Prop :=
  ∀ v : V, Q.readout v = Q.readout (C.sectorPM v)

/-- The zero comparator is sector-complete: factoring through the distinguished
sector does not by itself imply separation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2c432a10a2d59d6176648ac2b768fe0be896498` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
