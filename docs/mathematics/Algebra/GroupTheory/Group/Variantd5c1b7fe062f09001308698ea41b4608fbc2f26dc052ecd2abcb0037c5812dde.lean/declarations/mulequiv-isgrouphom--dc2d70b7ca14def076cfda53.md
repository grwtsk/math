# MulEquiv.isGroupHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e691690-1c9e-c4db-34c9-f1f239a01090",
  "kind": "theorem",
  "lexical_name": "MulEquiv.isGroupHom",
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
  "slug": "mulequiv-isgrouphom--dc2d70b7ca14def076cfda53",
  "source": {
    "blob": "242555ab14b88c1022ba17b076fbc5d3d30cebf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 266,
    "path": "GRWTSK/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc2d70b7ca14def076cfda537e7190695ef88a45e37608d0cbf17fac1898b3e4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e691690-1c9e-c4db-34c9-f1f239a01090`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MulEquiv.isGroupHom {G H : Type*} {_ : Group G} {_ : Group H} (h : G ≃* H) :
    IsGroupHom h :=
  { map_mul := h.map_mul }
#align mul_equiv.is_group_hom MulEquiv.isGroupHom
#align add_equiv.is_add_group_hom AddEquiv.isAddGroupHom

/-- Construct `IsGroupHom` from its only hypothesis. -/
@[to_additive "Construct `IsAddGroupHom` from its only hypothesis."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `242555ab14b88c1022ba17b076fbc5d3d30cebf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
