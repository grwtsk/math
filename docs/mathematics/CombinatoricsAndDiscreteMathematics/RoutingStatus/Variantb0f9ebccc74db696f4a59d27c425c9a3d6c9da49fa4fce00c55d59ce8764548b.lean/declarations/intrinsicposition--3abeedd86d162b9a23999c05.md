# IntrinsicPosition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:533059256490dfa4776a790d203bcdf3e4e62ed3e30d1d107aeec4ee99d848d9",
  "kind": "structure",
  "lexical_name": "IntrinsicPosition",
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
  "slug": "intrinsicposition--3abeedd86d162b9a23999c05",
  "source": {
    "blob": "2833edd231af3838e0901e970504c6d9541d8311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 52,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3abeedd86d162b9a23999c053feb6f2ccba7f23ab7464c1293a2f2650197e861",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:533059256490dfa4776a790d203bcdf3e4e62ed3e30d1d107aeec4ee99d848d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IntrinsicPosition
    (Probe : Type u) (Neighborhood : Type v)
    [DecidableEq Neighborhood] where
  incidence : IncidenceCode Probe
  memberships : Finset Neighborhood
  boundary : BoundaryStatus

/-- An exact fiber determines identity only after it is a singleton. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2833edd231af3838e0901e970504c6d9541d8311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
