# corepresentableByCompCoyonedaObjOfIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cab7504596bdd2292d6575e12919b995f290da82a2a0f9a4e21ece6f1d2c4563",
  "kind": "def",
  "lexical_name": "corepresentableByCompCoyonedaObjOfIsColimit",
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
  "slug": "corepresentablebycompcoyonedaobjofiscolimit--da2d61569ebccaeb5a917424",
  "source": {
    "blob": "9c48222f674f41826200847952192444df7c07e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 143,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantdffa1c65f7fc1847e1705015f21e8325d463ba8313b638637a2e51b820c48e7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da2d61569ebccaeb5a917424223c3065fbb0c933c6ac12f582eeebc2b082c6ba",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantdffa1c65f7fc1847e1705015f21e8325d463ba8313b638637a2e51b820c48e7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cab7504596bdd2292d6575e12919b995f290da82a2a0f9a4e21ece6f1d2c4563`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def corepresentableByCompCoyonedaObjOfIsColimit {J : Type*} [Category J]
    {R : J ⥤ F.PartialLeftAdjointSource}
    {c : Cocone (R ⋙ ObjectProperty.ι _)} (hc : IsColimit c)
    {c' : Cocone (R ⋙ F.partialLeftAdjoint)} (hc' : IsColimit c') :
    (F ⋙ coyoneda.obj (op c.pt)).CorepresentableBy c'.pt where
  homEquiv {Y} :=
    { toFun := fun f ↦ hc.desc (Cocone.mk _
        { app := fun j ↦ F.partialLeftAdjointHomEquiv (c'.ι.app j ≫ f)
          naturality := fun j j' φ ↦ by
            dsimp
            rw [comp_id, ← c'.w φ, ← partialLeftAdjointHomEquiv_map_comp, assoc]
            dsimp })
      invFun := fun g ↦ hc'.desc (Cocone.mk _
        { app := fun j ↦ F.partialLeftAdjointHomEquiv.symm (c.ι.app j ≫ g)
          naturality := fun j j' φ ↦ by
            apply F.partialLeftAdjointHomEquiv.injective
            have := c.w φ
            dsimp at this ⊢
            rw [comp_id, Equiv.apply_symm_apply, partialLeftAdjointHomEquiv_map_comp,
              Equiv.apply_symm_apply, reassoc_of% this] })
      left_inv := fun f ↦ hc'.hom_ext (fun j ↦ by simp)
      right_inv := fun g ↦ hc.hom_ext (fun j ↦ by simp) }
  homEquiv_comp {Y Y'} g f := hc.hom_ext (fun j ↦ by
    dsimp
    simp only [IsColimit.fac, IsColimit.fac_assoc, partialLeftAdjointHomEquiv_comp,
      F.map_comp, assoc] )

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantdffa1c65f7fc1847e1705015f21e8325d463ba8313b638637a2e51b820c48e7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantdffa1c65f7fc1847e1705015f21e8325d463ba8313b638637a2e51b820c48e7e.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c48222f674f41826200847952192444df7c07e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
