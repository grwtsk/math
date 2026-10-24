# quotientPathsEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c5337b17e01a6ba14ff735049044012e379ede52201b98b860f6ff8a81131a9",
  "kind": "def",
  "lexical_name": "quotientPathsEquiv",
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
  "slug": "quotientpathsequiv--7d8c5c72f60a19f912764c9d",
  "source": {
    "blob": "2b530deff283762ef6cca417f1b6be76d626506a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 264,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2c9dba59b33e89a3537778ceaa0c47343d77e793861f0b905d28e0fd2bae1ddd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d8c5c72f60a19f912764c9d5c7e26f50d8ae34bb2a4191ed10b6f6625301b18",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2c9dba59b33e89a3537778ceaa0c47343d77e793861f0b905d28e0fd2bae1ddd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c5337b17e01a6ba14ff735049044012e379ede52201b98b860f6ff8a81131a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotientPathsEquiv : Quotient (pathsHomRel C) ≌ C where
  functor := quotientPathsTo C
  inverse := toQuotientPaths C
  unitIso :=
    NatIso.ofComponents
      (fun X => by cases X; rfl)
      (Quot.ind fun f => by
        apply Quot.sound
        apply Quotient.CompClosure.of
        simp [Category.comp_id, Category.id_comp, pathsHomRel])
  counitIso := NatIso.ofComponents (fun _ => Iso.refl _) (fun f => by simp [Quot.liftOn_mk])
  functor_unitIso_comp X := by
    cases X
    simp only [pathsHomRel, pathComposition_obj, pathComposition_map, Functor.id_obj,
               quotientPathsTo_obj, Functor.comp_obj, toQuotientPaths_obj_as,
               NatIso.ofComponents_hom_app, Iso.refl_hom, quotientPathsTo_map, Category.comp_id]
    rfl

end

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2c9dba59b33e89a3537778ceaa0c47343d77e793861f0b905d28e0fd2bae1ddd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2c9dba59b33e89a3537778ceaa0c47343d77e793861f0b905d28e0fd2bae1ddd.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b530deff283762ef6cca417f1b6be76d626506a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
