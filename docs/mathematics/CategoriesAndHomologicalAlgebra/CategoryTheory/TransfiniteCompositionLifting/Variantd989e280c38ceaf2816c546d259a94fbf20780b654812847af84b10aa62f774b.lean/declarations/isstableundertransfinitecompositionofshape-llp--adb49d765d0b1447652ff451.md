# isStableUnderTransfiniteCompositionOfShape_llp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1bccf0220b96b2796571ac147f20c5743ca7d736c4e3e398eb805eeaa278b616",
  "kind": "instance",
  "lexical_name": "isStableUnderTransfiniteCompositionOfShape_llp",
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
  "slug": "isstableundertransfinitecompositionofshape-llp--adb49d765d0b1447652ff451",
  "source": {
    "blob": "1ca6bb2d5013a93e5d5126ea01115c6671db9eef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 262,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variantd989e280c38ceaf2816c546d259a94fbf20780b654812847af84b10aa62f774b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:adb49d765d0b1447652ff451bd8c462eb3f78937a0d17cf0e4b7a59b7a69bff8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variantd989e280c38ceaf2816c546d259a94fbf20780b654812847af84b10aa62f774b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1bccf0220b96b2796571ac147f20c5743ca7d736c4e3e398eb805eeaa278b616`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isStableUnderTransfiniteCompositionOfShape_llp :
    W.llp.IsStableUnderTransfiniteCompositionOfShape J := by
  rw [isStableUnderTransfiniteCompositionOfShape_iff]
  rintro X Y f ⟨h⟩
  have : W.llp (h.incl.app ⊥) := fun _ _ p hp ↦
    HasLiftingProperty.transfiniteComposition.hasLiftingProperty_ι_app_bot
      (hc := h.isColimit) (fun j hj ↦ h.map_mem j hj _ hp)
  exact (MorphismProperty.arrow_mk_iso_iff _
    (Arrow.isoMk h.isoBot.symm (Iso.refl _))).2 this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variantd989e280c38ceaf2816c546d259a94fbf20780b654812847af84b10aa62f774b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variantd989e280c38ceaf2816c546d259a94fbf20780b654812847af84b10aa62f774b.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ca6bb2d5013a93e5d5126ea01115c6671db9eef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
