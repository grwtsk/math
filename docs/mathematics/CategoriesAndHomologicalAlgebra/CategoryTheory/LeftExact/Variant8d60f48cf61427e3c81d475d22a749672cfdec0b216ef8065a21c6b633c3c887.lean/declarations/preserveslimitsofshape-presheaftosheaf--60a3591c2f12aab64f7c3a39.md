# preservesLimitsOfShape_presheafToSheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f0d7f4fa9133cf8d0b36d9f67703f9f5bb9d9833b187d0744bd30b66302b13e",
  "kind": "instance",
  "lexical_name": "preservesLimitsOfShape_presheafToSheaf",
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
  "slug": "preserveslimitsofshape-presheaftosheaf--60a3591c2f12aab64f7c3a39",
  "source": {
    "blob": "974f03f153f07b594a2a194d7ee1b5ea0598d529",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 255,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant8d60f48cf61427e3c81d475d22a749672cfdec0b216ef8065a21c6b633c3c887.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60a3591c2f12aab64f7c3a3942aab04bfbc215a5e115ae1ee905e3f8ea7185eb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant8d60f48cf61427e3c81d475d22a749672cfdec0b216ef8065a21c6b633c3c887.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f0d7f4fa9133cf8d0b36d9f67703f9f5bb9d9833b187d0744bd30b66302b13e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance preservesLimitsOfShape_presheafToSheaf
    [PreservesLimits (forget D)] [∀ X : C, Small.{t, max u v} (J.Cover X)ᵒᵖ] :
    PreservesLimitsOfShape K (plusPlusSheaf J D) := by
  let e := (FinCategory.equivAsType K).symm.trans (AsSmall.equiv.{0, 0, t})
  have : HasLimitsOfShape (AsSmall.{t} (FinCategory.AsType K)) D :=
    Limits.hasLimitsOfShape_of_equivalence e
  have : FinCategory (AsSmall.{t} (FinCategory.AsType K)) := by
    constructor
    · change Fintype (ULift _)
      infer_instance
    · intro j j'
      change Fintype (ULift _)
      infer_instance
  refine @preservesLimitsOfShape_of_equiv _ _ _ _ _ _ _ _ e.symm _ (show _ from ?_)
  constructor; intro F; constructor; intro S hS; constructor
  apply isLimitOfReflects (sheafToPresheaf J D)
  have : ReflectsLimitsOfShape (AsSmall.{t} (FinCategory.AsType K)) (forget D) :=
    reflectsLimitsOfShape_of_reflectsIsomorphisms
  apply isLimitOfPreserves (J.sheafification D) hS

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant8d60f48cf61427e3c81d475d22a749672cfdec0b216ef8065a21c6b633c3c887.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant8d60f48cf61427e3c81d475d22a749672cfdec0b216ef8065a21c6b633c3c887.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `974f03f153f07b594a2a194d7ee1b5ea0598d529` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
