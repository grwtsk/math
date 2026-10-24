# corepresentableByCompCoyonedaObjOfIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7234fca265f2ea2af26638a11ef668516463f00fc95de6c076c48519ad3a934a",
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
  "slug": "corepresentablebycompcoyonedaobjofiscolimit--56c0ae03f15c698079413060",
  "source": {
    "blob": "ffd9c0b46dad347b16756d52516aa8283fbbdf3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 151,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56c0ae03f15c698079413060f12bad3ccaa34984a8a4ff658bd930310825e69f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7234fca265f2ea2af26638a11ef668516463f00fc95de6c076c48519ad3a934a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–177.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffd9c0b46dad347b16756d52516aa8283fbbdf3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
