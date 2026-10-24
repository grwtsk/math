# AddSubgroup.toSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c05b8b26a254e449456324ae75b6fd3c792e6e981500b5f142c16beb7e78b3d",
  "kind": "def",
  "lexical_name": "AddSubgroup.toSubgroup",
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
  "slug": "addsubgroup-tosubgroup--c7739085ac15f1c882e2bbc0",
  "source": {
    "blob": "9dbe53ab8cc6ce454f4c068e9d4104fdab8d0a17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 76,
    "path": "GRWTSK/Algebra/GroupTheory/Lattice/Variantdab58e0302c1eedbcc9fac9b3432d774956ec425976133de0f764b888f0cfa6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7739085ac15f1c882e2bbc0b2b707506f081417bfeb568bb8f9cd9ac6b3f0eb",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lattice/Variantdab58e0302c1eedbcc9fac9b3432d774956ec425976133de0f764b888f0cfa6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c05b8b26a254e449456324ae75b6fd3c792e6e981500b5f142c16beb7e78b3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddSubgroup.toSubgroup : AddSubgroup A ≃o Subgroup (Multiplicative A) where
  toFun S := { AddSubmonoid.toSubmonoid S.toAddSubmonoid with inv_mem' := S.neg_mem' }
  invFun S := { Submonoid.toAddSubmonoid S.toSubmonoid with neg_mem' := S.inv_mem' }
  left_inv x := by cases x; rfl
  right_inv x := by cases x; rfl
  map_rel_iff' := Iff.rfl

/-- Subgroups of an additive group `Multiplicative A` are isomorphic to additive subgroups of `A`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lattice/Variantdab58e0302c1eedbcc9fac9b3432d774956ec425976133de0f764b888f0cfa6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lattice/Variantdab58e0302c1eedbcc9fac9b3432d774956ec425976133de0f764b888f0cfa6c.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dbe53ab8cc6ce454f4c068e9d4104fdab8d0a17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
