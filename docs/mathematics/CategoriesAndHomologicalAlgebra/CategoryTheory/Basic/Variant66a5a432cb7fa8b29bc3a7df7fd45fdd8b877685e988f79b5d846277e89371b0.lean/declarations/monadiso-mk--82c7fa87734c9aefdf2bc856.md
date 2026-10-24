# MonadIso.mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea4e5cc87c661626111d2f8828e624b0ed8c4ba86ed74613d6b9e550c609d1cb",
  "kind": "def",
  "lexical_name": "MonadIso.mk",
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
  "slug": "monadiso-mk--82c7fa87734c9aefdf2bc856",
  "source": {
    "blob": "b0c372a13d0979bbd65169f0af401c3cec174568",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 188,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82c7fa87734c9aefdf2bc8567c86b9fdc76f553424bc956953b36b2ebe9f8df2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea4e5cc87c661626111d2f8828e624b0ed8c4ba86ed74613d6b9e550c609d1cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MonadIso.mk {M N : Monad C} (f : (M : C ⥤ C) ≅ N)
    (f_η : ∀ (X : C), M.η.app X ≫ f.hom.app X = N.η.app X := by cat_disch)
    (f_μ : ∀ (X : C), M.μ.app X ≫ f.hom.app X =
    (M.map (f.hom.app X) ≫ f.hom.app (N.obj X)) ≫ N.μ.app X := by cat_disch) : M ≅ N where
  hom :=
    { toNatTrans := f.hom
      app_η := f_η
      app_μ := f_μ }
  inv :=
    { toNatTrans := f.inv
      app_η := fun X => by simp [← f_η]
      app_μ := fun X => by
        rw [← NatIso.cancel_natIso_hom_right f]
        simp only [NatTrans.naturality, Iso.inv_hom_id_app, assoc, comp_id, f_μ,
          NatTrans.naturality_assoc, Iso.inv_hom_id_app_assoc, ← Functor.map_comp_assoc]
        simp }

/-- Construct a comonad isomorphism from a natural isomorphism of functors where the forward
direction is a comonad morphism. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0c372a13d0979bbd65169f0af401c3cec174568` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
