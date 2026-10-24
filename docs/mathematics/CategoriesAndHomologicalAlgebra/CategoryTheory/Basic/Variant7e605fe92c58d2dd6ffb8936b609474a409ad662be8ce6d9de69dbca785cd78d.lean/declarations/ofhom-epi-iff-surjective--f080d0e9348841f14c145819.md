# ofHom_epi_iff_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b765031f-8d21-9854-9f7d-09c4e1fc0bac",
  "kind": "theorem",
  "lexical_name": "ofHom_epi_iff_surjective",
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
  "slug": "ofhom-epi-iff-surjective--f080d0e9348841f14c145819",
  "source": {
    "blob": "7179f4ed651550d52230685218f1185d415fb894",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 357,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7e605fe92c58d2dd6ffb8936b609474a409ad662be8ce6d9de69dbca785cd78d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f080d0e9348841f14c1458193a9981880a4f9d9f1fa208a382e620c13f9c6f98",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7e605fe92c58d2dd6ffb8936b609474a409ad662be8ce6d9de69dbca785cd78d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b765031f-8d21-9854-9f7d-09c4e1fc0bac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofHom_epi_iff_surjective {X Y : Type u} (f : X → Y) :
    Epi (ofHom f) ↔ Function.Surjective f := by
  constructor
  · rintro ⟨H⟩
    refine Function.surjective_of_right_cancellable_Prop fun g₁ g₂ hg => ?_
    rw [← Equiv.ulift.{u}.symm.injective.comp_left.eq_iff]
    apply TypeCat.homEquiv.symm.injective
    apply H
    apply ConcreteCategory.hom_ext
    intro x
    simp [dsimp% congrFun hg x]
  · refine fun H => ⟨fun g g' h =>  ConcreteCategory.hom_ext _ _ fun x ↦
      congrFun (H.injective_comp_right ?_) x⟩
    ext y
    exact ConcreteCategory.congr_hom h y

/-- A morphism in `Type` is an epimorphism if and only if it is surjective. -/
@[stacks 003C]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7e605fe92c58d2dd6ffb8936b609474a409ad662be8ce6d9de69dbca785cd78d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7e605fe92c58d2dd6ffb8936b609474a409ad662be8ce6d9de69dbca785cd78d.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7179f4ed651550d52230685218f1185d415fb894` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
