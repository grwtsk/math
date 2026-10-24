# limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fbfc4a5b0c1ba00f67a669bcbb5b87ccda801af5734eead82a2ca83d358e0101",
  "kind": "def",
  "lexical_name": "limit",
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
  "slug": "limit--86fb1b99e56a71b2a5d5cdc7",
  "source": {
    "blob": "56880b332e2d7af821e34f8f3da5fbebedd5d1fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 53,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0834413e76882a314abcdd84de1eb074df6e5f425ee4b239f1a3c9cf6501d6bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86fb1b99e56a71b2a5d5cdc71047d9c405154e3b270cc5ea47431c61d8d0a13d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0834413e76882a314abcdd84de1eb074df6e5f425ee4b239f1a3c9cf6501d6bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fbfc4a5b0c1ba00f67a669bcbb5b87ccda801af5734eead82a2ca83d358e0101`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def limit (F : J ⥤ Mon C) (c : Cone (F ⋙ Mon.forget C)) (hc : IsLimit c) :
    Mon C where
  X := c.pt
  mon.one := hc.lift
    { pt := _
      π.app X := η[(F.obj X).X] }
  mon.mul := hc.lift
    { pt := _
      π.app X := (c.π.app X ⊗ₘ c.π.app X) ≫ μ[(F.obj X).X]
      π.naturality i j f := by have := c.π.naturality f; simp_all }
  mon.one_mul := hc.hom_ext <| by simp [whiskerRight_comp_tensorHom_assoc]
  mon.mul_one := hc.hom_ext <| by simp [whiskerLeft_comp_tensorHom_assoc]
  mon.mul_assoc := by
    apply hc.hom_ext
    simp only [Functor.comp_obj, forget_obj, Functor.const_obj_obj, IsLimit.fac,
      mon_tauto, implies_true]

set_option backward.isDefEq.respectTransparency false in
/-- Implementation of `Mon.hasLimits`: a limiting cone over a functor `F : J ⥤ Mon C`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0834413e76882a314abcdd84de1eb074df6e5f425ee4b239f1a3c9cf6501d6bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0834413e76882a314abcdd84de1eb074df6e5f425ee4b239f1a3c9cf6501d6bc.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56880b332e2d7af821e34f8f3da5fbebedd5d1fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
