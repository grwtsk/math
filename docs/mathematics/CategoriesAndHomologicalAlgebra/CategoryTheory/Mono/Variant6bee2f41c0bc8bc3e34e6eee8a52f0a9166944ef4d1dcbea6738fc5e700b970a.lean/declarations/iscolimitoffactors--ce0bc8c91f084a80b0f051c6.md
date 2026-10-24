# isColimitOfFactors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d01925e19728ee43b9487109aa5962bb40d07c8bd90ece1f505eec0dd2f104af",
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
  "slug": "iscolimitoffactors--ce0bc8c91f084a80b0f051c6",
  "source": {
    "blob": "7ae2ce57e799631114339634673766eacfaeff15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 270,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Variant6bee2f41c0bc8bc3e34e6eee8a52f0a9166944ef4d1dcbea6738fc5e700b970a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce0bc8c91f084a80b0f051c68b8a2b04c30b495150a03559a0ea59632b632c25",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Variant6bee2f41c0bc8bc3e34e6eee8a52f0a9166944ef4d1dcbea6738fc5e700b970a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d01925e19728ee43b9487109aa5962bb40d07c8bd90ece1f505eec0dd2f104af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–292.

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
        apply PushoutCocone.IsColimit.hom_ext hs
        · simp only [PushoutCocone.mk_inl, PushoutCocone.mk_inr] at hr hr' ⊢
          simp only [hr]
          symm
          exact hs.fac _ WalkingSpan.left
        · simp only [PushoutCocone.mk_inl, PushoutCocone.mk_inr] at hr hr' ⊢
          simp only [hr']
          symm
          exact hs.fac _ WalkingSpan.right⟩⟩

/-- If `W` is the pushout of `f, g`,
it is also the pushout of `h ≫ f, h ≫ g` for any epi `h`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Variant6bee2f41c0bc8bc3e34e6eee8a52f0a9166944ef4d1dcbea6738fc5e700b970a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Variant6bee2f41c0bc8bc3e34e6eee8a52f0a9166944ef4d1dcbea6738fc5e700b970a.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ae2ce57e799631114339634673766eacfaeff15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
