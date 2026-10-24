# preservesLimitsLeftOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e91e3a164245367b12c5e5cd680e9687132db72ff4ece071194340dc533beed3",
  "kind": "def",
  "lexical_name": "preservesLimitsLeftOp",
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
  "slug": "preserveslimitsleftop--2dc4ad6c72073a62b25560c1",
  "source": {
    "blob": "a01ebc289b32f2b1fe4021a5e7884c73314ceec7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 162,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant540373e06a6c9276fda8e95bbe5aff5a4e4fe578788de1b5d20f7840414adabe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2dc4ad6c72073a62b25560c11ed5f6f3c86e7926890f4f8c56f8d16b91fd6f33",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant540373e06a6c9276fda8e95bbe5aff5a4e4fe578788de1b5d20f7840414adabe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e91e3a164245367b12c5e5cd680e9687132db72ff4ece071194340dc533beed3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preservesLimitsLeftOp (F : C ⥤ Dᵒᵖ) [PreservesColimits F] : PreservesLimits F.leftOp
    where preservesLimitsOfShape {_} _ := preservesLimitsOfShapeLeftOp _ _
#align category_theory.limits.preserves_limits_left_op CategoryTheory.Limits.preservesLimitsLeftOp

/-- If `F : Cᵒᵖ ⥤ D` preserves colimits, then `F.right_op : C ⥤ Dᵒᵖ` preserves limits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant540373e06a6c9276fda8e95bbe5aff5a4e4fe578788de1b5d20f7840414adabe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant540373e06a6c9276fda8e95bbe5aff5a4e4fe578788de1b5d20f7840414adabe.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a01ebc289b32f2b1fe4021a5e7884c73314ceec7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
