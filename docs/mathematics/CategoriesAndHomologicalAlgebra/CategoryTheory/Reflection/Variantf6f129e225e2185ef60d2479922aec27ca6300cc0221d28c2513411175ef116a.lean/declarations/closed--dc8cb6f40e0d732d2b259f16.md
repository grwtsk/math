# closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cfdc2b26c59b5dbac42a353937441875e526dd63d3bba3de29ca67924e127050",
  "kind": "def",
  "lexical_name": "closed",
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
  "slug": "closed--dc8cb6f40e0d732d2b259f16",
  "source": {
    "blob": "9ebbe9336cadcb57ce779016a304003ce6082ec8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 228,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantf6f129e225e2185ef60d2479922aec27ca6300cc0221d28c2513411175ef116a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc8cb6f40e0d732d2b259f1693fdc647ccb88e4489b120ff06a2e52209263d79",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantf6f129e225e2185ef60d2479922aec27ca6300cc0221d28c2513411175ef116a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cfdc2b26c59b5dbac42a353937441875e526dd63d3bba3de29ca67924e127050`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def closed (c : C) : Closed c where
  rightAdj := R ⋙ (ihom (R.obj c)) ⋙ L
  adj := by
    refine ((ihom.adjunction (R.obj c)).comp adj).restrictFullyFaithful
      (FullyFaithful.ofFullyFaithful R)
      (FullyFaithful.id _) ?_ ?_
    · refine NatIso.ofComponents (fun _ ↦ (μIso L _ _).symm ≪≫
        asIso ((adj.counit.app _) ⊗ₘ (adj.counit.app _))) (fun _ ↦ ?_)
      dsimp
      rw [Category.assoc, ← δ_natural_right_assoc,
        tensorHom_def', ← MonoidalCategory.whiskerLeft_comp_assoc,
        Adjunction.counit_naturality, whisker_exchange,
        tensorHom_def_assoc, MonoidalCategory.whiskerLeft_comp]
    · exact NatIso.ofComponents (fun _ ↦ asIso (adj.unit.app ((ihom _).obj _)))

/--
Given a reflective functor `R : C ⥤ D` with a monoidal left adjoint, such that `D` is symmetric
monoidal closed, then `C` is monoidal closed.
-/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantf6f129e225e2185ef60d2479922aec27ca6300cc0221d28c2513411175ef116a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantf6f129e225e2185ef60d2479922aec27ca6300cc0221d28c2513411175ef116a.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ebbe9336cadcb57ce779016a304003ce6082ec8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
