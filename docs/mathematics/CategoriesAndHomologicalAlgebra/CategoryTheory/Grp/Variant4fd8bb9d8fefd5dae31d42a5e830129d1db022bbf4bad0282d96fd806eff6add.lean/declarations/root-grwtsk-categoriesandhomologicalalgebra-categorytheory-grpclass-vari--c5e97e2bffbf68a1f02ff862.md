# _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GrpClass.Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.Grp_Class.toMon_Class_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f7d742d-5286-d8c8-4852-c4bfee80b9e0",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GrpClass.Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.Grp_Class.toMon_Class_injective",
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
  "slug": "root-grwtsk-categoriesandhomologicalalgebra-categorytheory-grpclass-vari--c5e97e2bffbf68a1f02ff862",
  "source": {
    "blob": "7701589327b790f1585c3b1bc755917acd15b25f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 257,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant4fd8bb9d8fefd5dae31d42a5e830129d1db022bbf4bad0282d96fd806eff6add.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5e97e2bffbf68a1f02ff862ab4c1eb99b1a7b9a461e7ad4b13add76d41c2307",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant4fd8bb9d8fefd5dae31d42a5e830129d1db022bbf4bad0282d96fd806eff6add.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f7d742d-5286-d8c8-4852-c4bfee80b9e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GrpClass.Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.Grp_Class.toMon_Class_injective {X : C} :
    Function.Injective (@Grp_Class.toMon_Class C ‹_› ‹_› X) := by
  intro h₁ h₂ e
  let X₁ : Grp_ C := @Grp_.mk' _ _ _ X h₁
  let X₂ : Grp_ C := @Grp_.mk' _ _ _ X h₂
  suffices X₁.inv = X₂.inv by cases h₁; cases h₂; subst e this; rfl
  apply lift_left_mul_ext (𝟙 _)
  rw [left_inv, show X₁.mul = X₂.mul from congr(($e).mul),
    show X₁.one = X₂.one from congr(($e).one)]
  exact X₂.left_inv.symm

@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant4fd8bb9d8fefd5dae31d42a5e830129d1db022bbf4bad0282d96fd806eff6add.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant4fd8bb9d8fefd5dae31d42a5e830129d1db022bbf4bad0282d96fd806eff6add.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7701589327b790f1585c3b1bc755917acd15b25f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
