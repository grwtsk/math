# coneBack

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:092ae895e79b18d826dbf59bce9590e0191f698baf396e235ba76b86948054ef",
  "kind": "def",
  "lexical_name": "coneBack",
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
  "slug": "coneback--44be331db668c5674ae99d3e",
  "source": {
    "blob": "d58503898a0005754549ae145c150f1f304245b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 91,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44be331db668c5674ae99d3e5e5fae91121ff75c1f4a28729361d5b3bd8ec587",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:092ae895e79b18d826dbf59bce9590e0191f698baf396e235ba76b86948054ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def coneBack : Cone (liftFromOver.obj K) ⥤ Cone K where
  obj t := {
    pt := .mk (t.π.app star)
    π.app a := {
      left := t.π.app (of a)
      right := 𝟙 _
      w := by simpa using t.w (homFrom a)
    }
    π.naturality a b f := by ext; simpa using t.π.naturality (incl.map f)
  }
  map {t₁ t₂ f} := {
    hom := Over.homMk f.hom
  }

/-- Given a functor `K : J ⥤ Over X` and its extension `liftFromOver K : WithTerminal J ⥤ C`,
there is an obvious equivalence between cones of these two functors.
A cone of `K` is an object of `Over X`, so it has the form `t ⟶ X`.
Equivalently, a cone of `WithTerminal K` is an object `t : C`,
and we can recover the structure morphism as `π.app X : t ⟶ X`. -/
@[simps! functor_obj_pt functor_map_hom inverse_obj_pt_left inverse_obj_pt_right_as
  inverse_obj_pt_hom inverse_obj_π_app_left inverse_map_hom_left unitIso_hom_app_hom_left
  unitIso_inv_app_hom_left counitIso_hom_app_hom counitIso_inv_app_hom]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d58503898a0005754549ae145c150f1f304245b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
