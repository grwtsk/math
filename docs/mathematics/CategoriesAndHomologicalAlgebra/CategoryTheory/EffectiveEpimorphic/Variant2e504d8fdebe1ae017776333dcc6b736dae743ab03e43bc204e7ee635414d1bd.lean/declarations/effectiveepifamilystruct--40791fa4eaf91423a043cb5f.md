# EffectiveEpiFamilyStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd6c9cbf06904641c6d133c45fdbc794a456b4795c367b6219f56690b517b716",
  "kind": "structure",
  "lexical_name": "EffectiveEpiFamilyStruct",
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
  "slug": "effectiveepifamilystruct--40791fa4eaf91423a043cb5f",
  "source": {
    "blob": "73e9cc312d21648807dca50b644523255992edb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 251,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40791fa4eaf91423a043cb5f56a5c5740e083a71a85d6c49ce3d5a23c112cd42",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd6c9cbf06904641c6d133c45fdbc794a456b4795c367b6219f56690b517b716`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure EffectiveEpiFamilyStruct {B : C} {α : Type*}
    (X : α → C) (π : (a : α) → (X a ⟶ B)) where
  desc : ∀ {W} (e : (a : α) → (X a ⟶ W)),
          (∀ {Z : C} (a₁ a₂ : α) (g₁ : Z ⟶ X a₁) (g₂ : Z ⟶ X a₂),
      g₁ ≫ π _ = g₂ ≫ π _ → g₁ ≫ e _ = g₂ ≫ e _) → (B ⟶ W)
  fac : ∀ {W} (e : (a : α) → (X a ⟶ W))
          (h : ∀ {Z : C} (a₁ a₂ : α) (g₁ : Z ⟶ X a₁) (g₂ : Z ⟶ X a₂),
            g₁ ≫ π _ = g₂ ≫ π _ → g₁ ≫ e _ = g₂ ≫ e _)
          (a : α), π a ≫ desc e h = e a
  uniq : ∀ {W} (e : (a : α) → (X a ⟶ W))
          (h : ∀ {Z : C} (a₁ a₂ : α) (g₁ : Z ⟶ X a₁) (g₂ : Z ⟶ X a₂),
            g₁ ≫ π _ = g₂ ≫ π _ → g₁ ≫ e _ = g₂ ≫ e _)
          (m : B ⟶ W), (∀ (a : α), π a ≫ m = e a) → m = desc e h

attribute [nolint docBlame]
  EffectiveEpiFamilyStruct.desc
  EffectiveEpiFamilyStruct.fac
  EffectiveEpiFamilyStruct.uniq

/--
A family of morphisms `f a : X a ⟶ B` indexed by `α` is effective epimorphic
provided that the `f a` exhibit `B` as a colimit of the diagram of all "relations"
`R → X a₁`, `R ⟶ X a₂` for all `a₁ a₂ : α`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73e9cc312d21648807dca50b644523255992edb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
