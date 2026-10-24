# preservesLimitUnop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eddc7652d7afd1f4a6b4a937b7db4b2f9732bd5caf14ba763818d6d8cc6d79dc",
  "kind": "def",
  "lexical_name": "preservesLimitUnop",
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
  "slug": "preserveslimitunop--eb7f840db4527a7cc04b908b",
  "source": {
    "blob": "a01ebc289b32f2b1fe4021a5e7884c73314ceec7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 64,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant540373e06a6c9276fda8e95bbe5aff5a4e4fe578788de1b5d20f7840414adabe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb7f840db4527a7cc04b908ba9851af600e9641fb1f204578d25e5c0f70a6df4",
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

Occurrence: `declaration:eddc7652d7afd1f4a6b4a937b7db4b2f9732bd5caf14ba763818d6d8cc6d79dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preservesLimitUnop (K : J ⥤ C) (F : Cᵒᵖ ⥤ Dᵒᵖ) [PreservesColimit K.op F] :
    PreservesLimit K F.unop
    where preserves {_} hc :=
    isLimitConeUnopOfCocone _ (isColimitOfPreserves F (isColimitConeOp _ hc))
#align category_theory.limits.preserves_limit_unop CategoryTheory.Limits.preservesLimitUnop

/-- If `F : C ⥤ D` preserves limits of `K.left_op : Jᵒᵖ ⥤ C`, then `F.op : Cᵒᵖ ⥤ Dᵒᵖ` preserves
    colimits of `K : J ⥤ Cᵒᵖ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant540373e06a6c9276fda8e95bbe5aff5a4e4fe578788de1b5d20f7840414adabe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant540373e06a6c9276fda8e95bbe5aff5a4e4fe578788de1b5d20f7840414adabe.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a01ebc289b32f2b1fe4021a5e7884c73314ceec7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
