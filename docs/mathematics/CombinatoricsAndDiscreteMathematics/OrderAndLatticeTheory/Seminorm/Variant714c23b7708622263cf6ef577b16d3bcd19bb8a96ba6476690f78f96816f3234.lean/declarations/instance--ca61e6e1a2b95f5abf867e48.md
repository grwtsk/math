# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:587fbc83a07be59989c9c55b6b0e45a4ae3f11b59bec416719c6ffa336d53098",
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
  "slug": "instance--ca61e6e1a2b95f5abf867e48",
  "source": {
    "blob": "83504743801a6bc371f132d6f236f20444a6fc64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 255,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Seminorm/Variant714c23b7708622263cf6ef577b16d3bcd19bb8a96ba6476690f78f96816f3234.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca61e6e1a2b95f5abf867e487c7491f25cefb0778227bec5c09d3d83e3ca3c27",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Seminorm/Variant714c23b7708622263cf6ef577b16d3bcd19bb8a96ba6476690f78f96816f3234.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:587fbc83a07be59989c9c55b6b0e45a4ae3f11b59bec416719c6ffa336d53098`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsAddApply (GroupSeminorm E) E ℝ where
  add_apply _ _ _ := rfl

@[deprecated (since := "2026-07-10")] alias _root_.GroupSeminorm.coe_add := FunLike.coe_add
@[deprecated (since := "2026-07-10")] alias _root_.AddGroupSeminorm.coe_add := FunLike.coe_add

@[deprecated (since := "2026-07-10")] protected alias _root_.GroupSeminorm.add_apply :=
  add_apply
@[deprecated (since := "2026-07-10")] protected alias _root_.AddGroupSeminorm.add_apply :=
  add_apply

open scoped Classical in
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Seminorm/Variant714c23b7708622263cf6ef577b16d3bcd19bb8a96ba6476690f78f96816f3234.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Seminorm/Variant714c23b7708622263cf6ef577b16d3bcd19bb8a96ba6476690f78f96816f3234.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83504743801a6bc371f132d6f236f20444a6fc64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
