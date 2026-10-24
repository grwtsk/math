# isColimitOfFactors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a04773bf94a5e6afd54f74527bb536fafa33e1f0e649b5cee0279d3404e0660f",
  "kind": "def",
  "lexical_name": "isColimitOfFactors",
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
  "slug": "iscolimitoffactors--244220a7b23a2ccbac524591",
  "source": {
    "blob": "491c5ad64b6bb8914918c2875cb764857511420e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 997,
    "line": 974,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant134ebd9f1e592aaf50d2da20256ec7824cd7af50202a5cad367f441ef618d3ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:244220a7b23a2ccbac524591140d3f37930d226ec4652838dd27a362d28d7e46",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant134ebd9f1e592aaf50d2da20256ec7824cd7af50202a5cad367f441ef618d3ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a04773bf94a5e6afd54f74527bb536fafa33e1f0e649b5cee0279d3404e0660f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 974–997.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitOfFactors (f : X ⟶ Y) (g : X ⟶ Z) (h : X ⟶ W) [Epi h] (x : W ⟶ Y) (y : W ⟶ Z)
    (hhx : h ≫ x = f) (hhy : h ≫ y = g) (s : PushoutCocone f g) (hs : IsColimit s) :
    have reassoc₁ : h ≫ x ≫ inl s = f ≫ inl s := by  -- Porting note: working around reassoc
      rw [← Category.assoc]; apply congrArg (· ≫ inl s) hhx
    have reassoc₂ : h ≫ y ≫ inr s = g ≫ inr s := by
      rw [← Category.assoc]; apply congrArg (· ≫ inr s) hhy
    IsColimit (PushoutCocone.mk _ _ (show x ≫ s.inl = y ≫ s.inr from
          (cancel_epi h).1 <| by rw [reassoc₁, reassoc₂, s.condition])) :=
  PushoutCocone.isColimitAux' _ fun t => ⟨hs.desc (PushoutCocone.mk t.inl t.inr <| by
    rw [← hhx, ← hhy, Category.assoc, Category.assoc, t.condition]),
      ⟨hs.fac _ WalkingSpan.left, hs.fac _ WalkingSpan.right, fun hr hr' => by
        apply PushoutCocone.IsColimit.hom_ext hs;
        · simp only [PushoutCocone.mk_inl, PushoutCocone.mk_inr] at hr hr' ⊢
          simp only [hr, hr']
          symm
          exact hs.fac _ WalkingSpan.left
        · simp only [PushoutCocone.mk_inl, PushoutCocone.mk_inr] at hr hr' ⊢
          simp only [hr, hr']
          symm
          exact hs.fac _ WalkingSpan.right⟩⟩
#align category_theory.limits.pushout_cocone.is_colimit_of_factors CategoryTheory.Limits.PushoutCocone.isColimitOfFactors

/-- If `W` is the pushout of `f, g`,
it is also the pushout of `h ≫ f, h ≫ g` for any epi `h`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant134ebd9f1e592aaf50d2da20256ec7824cd7af50202a5cad367f441ef618d3ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant134ebd9f1e592aaf50d2da20256ec7824cd7af50202a5cad367f441ef618d3ec.lean#L974).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `491c5ad64b6bb8914918c2875cb764857511420e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
