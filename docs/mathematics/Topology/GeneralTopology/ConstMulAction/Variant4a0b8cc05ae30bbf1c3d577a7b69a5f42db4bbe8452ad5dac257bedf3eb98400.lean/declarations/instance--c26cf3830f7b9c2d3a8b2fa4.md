# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9aa1f5761f8db6e4be59a1c82e7f13445a99dcf6a07234fb73e7508e2d6a6bf7",
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
  "slug": "instance--c26cf3830f7b9c2d3a8b2fa4",
  "source": {
    "blob": "4b296a5768b6f6955b4baca1d569971067ae4cc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 479,
    "path": "GRWTSK/Topology/GeneralTopology/ConstMulAction/Variant4a0b8cc05ae30bbf1c3d577a7b69a5f42db4bbe8452ad5dac257bedf3eb98400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c26cf3830f7b9c2d3a8b2fa4b909239e1e6a6613f5c7fba451cd41774990d3f1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConstMulAction/Variant4a0b8cc05ae30bbf1c3d577a7b69a5f42db4bbe8452ad5dac257bedf3eb98400.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9aa1f5761f8db6e4be59a1c82e7f13445a99dcf6a07234fb73e7508e2d6a6bf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) Finite.to_properlyDiscontinuousSMul [Finite Γ] :
    ProperlyDiscontinuousSMul Γ T where finite_disjoint_inter_image _ _ := Set.toFinite _
#align finite.to_properly_discontinuous_smul Finite.to_properlyDiscontinuousSMul
#align finite.to_properly_discontinuous_vadd Finite.to_properlyDiscontinuousVAdd

export ProperlyDiscontinuousSMul (finite_disjoint_inter_image)
export ProperlyDiscontinuousVAdd (finite_disjoint_inter_image)

/-- The quotient map by a group action is open, i.e. the quotient by a group action is an open
  quotient. -/
@[to_additive "The quotient map by a group action is open, i.e. the quotient by a group
action is an open quotient. "]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConstMulAction/Variant4a0b8cc05ae30bbf1c3d577a7b69a5f42db4bbe8452ad5dac257bedf3eb98400.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConstMulAction/Variant4a0b8cc05ae30bbf1c3d577a7b69a5f42db4bbe8452ad5dac257bedf3eb98400.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b296a5768b6f6955b4baca1d569971067ae4cc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
