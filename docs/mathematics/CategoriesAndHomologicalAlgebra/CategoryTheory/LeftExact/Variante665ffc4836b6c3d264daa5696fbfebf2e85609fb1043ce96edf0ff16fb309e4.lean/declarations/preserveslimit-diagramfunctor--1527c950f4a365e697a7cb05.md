# preservesLimit_diagramFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21cef19e51023d84612595bab0970e0a291f28dfa4e214c1845b4c2e1e50525d",
  "kind": "instance",
  "lexical_name": "preservesLimit_diagramFunctor",
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
  "slug": "preserveslimit-diagramfunctor--1527c950f4a365e697a7cb05",
  "source": {
    "blob": "a1618a90f77d79d473a4af6ee4f50fd78abaea20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 99,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante665ffc4836b6c3d264daa5696fbfebf2e85609fb1043ce96edf0ff16fb309e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1527c950f4a365e697a7cb05ed62c8d50a8bb50967d5f4670d32e7f86102ff00",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante665ffc4836b6c3d264daa5696fbfebf2e85609fb1043ce96edf0ff16fb309e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21cef19e51023d84612595bab0970e0a291f28dfa4e214c1845b4c2e1e50525d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance preservesLimit_diagramFunctor
    (X : C) (K : Type s) [SmallCategory K] [HasLimitsOfShape K D] (F : K ⥤ Cᵒᵖ ⥤ D) :
    PreservesLimit F (J.diagramFunctor D X) :=
  preservesLimit_of_evaluation _ _ fun W =>
    preservesLimit_of_preserves_limit_cone (limit.isLimit _)
      { lift := fun E => liftToDiagramLimitObj.{_, t, w, v, u} F E
        fac := by
          intro E k
          dsimp [diagramNatTrans]
          refine Multiequalizer.hom_ext _ _ _ (fun a => ?_)
          simp only [Multiequalizer.lift_ι, Multiequalizer.lift_ι_assoc, Category.assoc,
            liftToDiagramLimitObjAux_fac]
        uniq := by
          intro E m hm
          refine Multiequalizer.hom_ext _ _ _ (fun a => limit_obj_ext (fun j => ?_))
          dsimp [liftToDiagramLimitObj]
          rw [Multiequalizer.lift_ι, Category.assoc, liftToDiagramLimitObjAux_fac, ← hm,
            Category.assoc]
          dsimp
          rw [limit.lift_π]
          dsimp }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante665ffc4836b6c3d264daa5696fbfebf2e85609fb1043ce96edf0ff16fb309e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante665ffc4836b6c3d264daa5696fbfebf2e85609fb1043ce96edf0ff16fb309e4.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1618a90f77d79d473a4af6ee4f50fd78abaea20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
