# toSeminormedAddCommGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:444d748dac442503bdb78c46dfe26addce0809f0396874c427c4d5ca0ffdf4ea",
  "kind": "instance",
  "lexical_name": "toSeminormedAddCommGroup",
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
  "slug": "toseminormedaddcommgroup--75357598a5f892c0271f4a0e",
  "source": {
    "blob": "12f7c81f13026706600a5b1f77099ba6016a9b3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 509,
    "path": "GRWTSK/Topology/MetricTopology/Hom/Variantf6b9bbcf4e39637ef93fd977065137602fcbd1b1f717a183ea4012838dc8b13b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75357598a5f892c0271f4a0e0a40853956a134b94e9dc48b998847b7c80f3645",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hom/Variantf6b9bbcf4e39637ef93fd977065137602fcbd1b1f717a183ea4012838dc8b13b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:444d748dac442503bdb78c46dfe26addce0809f0396874c427c4d5ca0ffdf4ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 509–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance toSeminormedAddCommGroup : SeminormedAddCommGroup (NormedAddGroupHom V₁ V₂) :=
  AddGroupSeminorm.toSeminormedAddCommGroup
    { toFun := opNorm
      map_zero' := opNorm_zero
      neg' := opNorm_neg
      add_le' := opNorm_add_le }

/-- Normed group homomorphisms themselves form a normed group with respect to
    the operator norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hom/Variantf6b9bbcf4e39637ef93fd977065137602fcbd1b1f717a183ea4012838dc8b13b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hom/Variantf6b9bbcf4e39637ef93fd977065137602fcbd1b1f717a183ea4012838dc8b13b.lean#L509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12f7c81f13026706600a5b1f77099ba6016a9b3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
