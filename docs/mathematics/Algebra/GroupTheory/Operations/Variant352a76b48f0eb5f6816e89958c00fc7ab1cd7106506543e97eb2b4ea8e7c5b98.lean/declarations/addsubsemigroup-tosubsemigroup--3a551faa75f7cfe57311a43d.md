# AddSubsemigroup.toSubsemigroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4953b7faff278e730fa73b9dbf08e2991ae6f67886bd16c71be7dcd7bff4407b",
  "kind": "def",
  "lexical_name": "AddSubsemigroup.toSubsemigroup",
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
  "slug": "addsubsemigroup-tosubsemigroup--3a551faa75f7cfe57311a43d",
  "source": {
    "blob": "21653ae70326f10fd8cbfcfa99620f510b2188d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 128,
    "path": "GRWTSK/Algebra/GroupTheory/Operations/Variant352a76b48f0eb5f6816e89958c00fc7ab1cd7106506543e97eb2b4ea8e7c5b98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a551faa75f7cfe57311a43d566512b3d8d933ff7ff317bd80d48c8378379f53",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Operations/Variant352a76b48f0eb5f6816e89958c00fc7ab1cd7106506543e97eb2b4ea8e7c5b98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4953b7faff278e730fa73b9dbf08e2991ae6f67886bd16c71be7dcd7bff4407b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddSubsemigroup.toSubsemigroup : AddSubsemigroup A ≃o Subsemigroup (Multiplicative A) where
  toFun S :=
    { carrier := Multiplicative.toAdd ⁻¹' S
      mul_mem' := S.add_mem' }
  invFun S :=
    { carrier := Multiplicative.ofAdd ⁻¹' S
      add_mem' := S.mul_mem' }
  left_inv _ := rfl
  right_inv _ := rfl
  map_rel_iff' := Iff.rfl
#align add_subsemigroup.to_subsemigroup AddSubsemigroup.toSubsemigroup
#align add_subsemigroup.to_subsemigroup_apply_coe AddSubsemigroup.toSubsemigroup_apply_coe
#align add_subsemigroup.to_subsemigroup_symm_apply_coe AddSubsemigroup.toSubsemigroup_symm_apply_coe

/-- Subsemigroups of a semigroup `Multiplicative A` are isomorphic to additive subsemigroups
of `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Operations/Variant352a76b48f0eb5f6816e89958c00fc7ab1cd7106506543e97eb2b4ea8e7c5b98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Operations/Variant352a76b48f0eb5f6816e89958c00fc7ab1cd7106506543e97eb2b4ea8e7c5b98.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21653ae70326f10fd8cbfcfa99620f510b2188d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
