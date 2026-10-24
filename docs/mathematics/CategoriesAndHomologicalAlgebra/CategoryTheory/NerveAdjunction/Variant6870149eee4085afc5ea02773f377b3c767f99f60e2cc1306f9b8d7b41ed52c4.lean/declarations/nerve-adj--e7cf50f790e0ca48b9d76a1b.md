# nerve₂Adj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b1aa3227049b520e9332078310c237259dcf461e4065c4bcd137ed073a455f1",
  "kind": "def",
  "lexical_name": "nerve₂Adj",
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
  "slug": "nerve-adj--e7cf50f790e0ca48b9d76a1b",
  "source": {
    "blob": "e824dadfad76cb70459b8b482c37ad831d1edadc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 353,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7cf50f790e0ca48b9d76a1b1e887474e0f7bb731d206030ad666714a880f280",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b1aa3227049b520e9332078310c237259dcf461e4065c4bcd137ed073a455f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec def nerve₂Adj : hoFunctor₂.{u} ⊣ nerveFunctor₂ :=
  Adjunction.mkOfUnitCounit {
    unit := nerve₂Adj.unit
    counit := nerve₂Adj.counit
    left_triangle := by
      ext X
      apply HomotopyCategory.lift_unique'
      dsimp
      rw [Cat.comp_eq_comp, ← Functor.assoc]
      dsimp only [hoFunctor₂]
      rw [← hoFunctor₂_naturality (nerve₂Adj.unit.app X)]
      dsimp
      rw [nerve₂Adj.unit.map_app_eq X, Functor.assoc, id_comp]
      show _ ⋙ (HomotopyCategory.quotientFunctor _ ⋙ nerve₂Adj.counit.app (hoFunctor₂.obj X)) = _
      rw [nerve₂Adj.counit.app_eq]
      dsimp
      rw [← Cat.comp_eq_comp, ← assoc, ← Cat.freeRefl.map_comp, ReflQuiv.comp_eq_comp,
        ReflPrefunctor.comp_assoc]
      dsimp
      rw [← ReflQuiv.comp_eq_comp, Iso.inv_hom_id_app, ReflQuiv.id_eq_id]
      dsimp
      rw [ReflPrefunctor.comp_id (V := hoFunctor₂.obj X), ← ReflQuiv.comp_eq_comp (Z := .of _),
        Cat.freeRefl.map_comp, assoc]
      have := ReflQuiv.adj.counit.naturality
        (X := Cat.freeRefl.obj (ReflQuiv.of (OneTruncation₂ X)))
        (Y := hoFunctor₂.obj X) (SSet.Truncated.HomotopyCategory.quotientFunctor X)
      dsimp at this
      rw [this]
      apply Adjunction.left_triangle_components_assoc
    right_triangle := by
      refine NatTrans.ext (funext fun C ↦ ?_)
      apply toNerve₂.ext
      dsimp
      simp only [id_comp, map_comp, oneTruncation₂_obj, map_id]
      rw [nerve₂Adj.unit.map_app_eq, ReflPrefunctor.comp_assoc]
      rw [← ReflQuiv.comp_eq_comp,
        ← ReflQuiv.comp_eq_comp (X := ReflQuiv.of _) (Y := ReflQuiv.of _),
        assoc, assoc, ← Functor.comp_map, ← OneTruncation₂.ofNerve₂.natIso.inv.naturality]
      conv => lhs; rhs; rw [← assoc]
      show _ ≫ (ReflQuiv.forget.map _ ≫ ReflQuiv.forget.map _) ≫ _ = _
      rw [← ReflQuiv.forget.map_comp]
      dsimp
      conv => lhs; rhs; lhs; rw [Cat.comp_eq_comp]
      have : HomotopyCategory.quotientFunctor (nerveFunctor₂.obj C) ⋙ _ = _ :=
        nerve₂Adj.counit.app_eq C
      rw [this]
      dsimp
      rw [← assoc, Cat.comp_eq_comp, toReflPrefunctor.map_comp]
      rw [← ReflQuiv.comp_eq_comp (X := ReflQuiv.of _) (Y := ReflQuiv.of _) (Z := ReflQuiv.of _)]
      have := ReflQuiv.adj.unit.naturality (OneTruncation₂.ofNerve₂.natIso.hom.app C)
      dsimp at this ⊢
      rw [← assoc, ← this]
      have := ReflQuiv.adj.right_triangle_components C
      dsimp [ReflQuiv.forget] at this
      simp [reassoc_of% this]
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e824dadfad76cb70459b8b482c37ad831d1edadc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
