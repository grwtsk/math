# con_subgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4221b58b-9a5a-7707-08ce-c60d37e377bc",
  "kind": "theorem",
  "lexical_name": "con_subgroup",
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
  "slug": "con-subgroup--e8b2020ab1c0c4edf3beb405",
  "source": {
    "blob": "a7dccee0acc426228f6d8f83513ae96eb7efa417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 219,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8b2020ab1c0c4edf3beb405570bd400d976f56f28077ba4def0878c037c8bb4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4221b58b-9a5a-7707-08ce-c60d37e377bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem con_subgroup (c : Con G) :
    QuotientGroup.con c.subgroup = c := by
  ext x y
  rw [QuotientGroup.con, Con.rel_mk, leftRel_apply, Con.mem_subgroup_iff]
  exact ⟨fun h ↦ by simpa using c.mul (c.refl x) (c.symm h),
    fun h ↦ by simpa using c.mul (c.refl x⁻¹) (c.symm h)⟩

/--
The normal subgroups correspond to the congruence relations on a group.
-/
@[to_additive (attr := simps) AddSubgroup.orderIsoAddCon
/-- The normal subgroups correspond to the additive congruence relations on an `AddGroup`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7dccee0acc426228f6d8f83513ae96eb7efa417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
