# limitsOfShape_eq_unop_colimitsOfShape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dfd48ec496a635b2d1b1bf25dbcfd0dd358aa84f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d75438f83b2d337b5c29e077bfa52d70a2ddc99f126d813a288a74eea510333.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18ff7b4e-2fb2-52ff-ef0b-974c8a0335c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb4d59b1-44ac-0c73-9d35-ef4d6d5a90c4",
  "kind": "lemma",
  "lexical_name": "limitsOfShape_eq_unop_colimitsOfShape",
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
  "slug": "limitsofshape-eq-unop-colimitsofshape--8c81de378252fb7334584496",
  "source": {
    "blob": "dfd48ec496a635b2d1b1bf25dbcfd0dd358aa84f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 287,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOfShape/Variant8d75438f83b2d337b5c29e077bfa52d70a2ddc99f126d813a288a74eea510333.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c81de378252fb7334584496eaf74a6b116e75eada538d7b70faf2d8d4224819",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOfShape/Variant8d75438f83b2d337b5c29e077bfa52d70a2ddc99f126d813a288a74eea510333.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb4d59b1-44ac-0c73-9d35-ef4d6d5a90c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma limitsOfShape_eq_unop_colimitsOfShape :
    P.limitsOfShape J = (P.op.colimitsOfShape Jᵒᵖ).unop := by
  ext X
  refine ⟨fun ⟨h⟩ => ⟨?_⟩, fun ⟨h⟩ => ⟨?_⟩⟩
  · exact
      { diag := h.diag.op
        ι := NatTrans.op h.π
        isColimit := isColimitOfUnop h.isLimit
        prop_diag_obj _ := h.prop_diag_obj _ }
  · exact
      { diag := h.diag.unop
        π := NatTrans.unop h.ι
        isLimit := isLimitOfOp h.isColimit
        prop_diag_obj _ := h.prop_diag_obj _ }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOfShape/Variant8d75438f83b2d337b5c29e077bfa52d70a2ddc99f126d813a288a74eea510333.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOfShape/Variant8d75438f83b2d337b5c29e077bfa52d70a2ddc99f126d813a288a74eea510333.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfd48ec496a635b2d1b1bf25dbcfd0dd358aa84f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
