# coev_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2890c0c4074f1568befdfc962914cf1c95ad261ebbd491d95b276ecd964060e8",
  "kind": "def",
  "lexical_name": "coev_app",
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
  "slug": "coev-app--d2ea621fcac1fa765d46c24e",
  "source": {
    "blob": "56704e6e0b4b4cf54a67f0718484f729a7cb5c3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 211,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant7bdbbf1faf75059349258b27860c3a55e74e375432c29edc9c8527246d7fc466.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2ea621fcac1fa765d46c24e65ef7afe3ff1e4fec01615c491462d056c412562",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant7bdbbf1faf75059349258b27860c3a55e74e375432c29edc9c8527246d7fc466.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2890c0c4074f1568befdfc962914cf1c95ad261ebbd491d95b276ecd964060e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coev_app : G ⟶ H where
  app c :=
    Wedge.IsLimit.lift (ℌ.isLimitWedge c)
      (fun c' => MonoidalClosed.curry <|
        (DayConvolution.unit F G).app (c', c))
        (fun {c' c''} f => by
          have := DayConvolution.unit_naturality F G f (𝟙 c)
          simp only [Functor.map_id, tensorHom_id] at this
          replace this := congrArg MonoidalClosed.curry this
          simp only [MonoidalClosed.curry_natural_right] at this
          dsimp
          rw [← this]
          simp [MonoidalClosed.curry_eq])
  naturality {c c'} f := by
    dsimp
    apply Wedge.IsLimit.hom_ext <| ℌ.isLimitWedge c'
    intro (j : C)
    simp only [multicospanIndexEnd_left,
      dayConvolutionInternalHomDiagramFunctor_obj_obj_obj_obj, Multifork.ofι_pt,
      Wedge.mk_ι, Category.assoc, map_comp_π]
    rw [← Wedge.mk_ι
        (F := dayConvolutionInternalHomDiagramFunctor F |>.obj _ |>.obj c)
        (H.obj c) (ℌ.π c) (ℌ.hπ c),
      ← Wedge.mk_ι
        (F := dayConvolutionInternalHomDiagramFunctor F |>.obj _ |>.obj c')
        (H.obj c') (ℌ.π c') (ℌ.hπ c'),
      Wedge.IsLimit.lift_ι_assoc, Wedge.IsLimit.lift_ι]
    have := DayConvolution.unit_naturality F G (𝟙 j) f
    simp only [Functor.map_id, id_tensorHom] at this
    replace this := congrArg MonoidalClosed.curry this
    simp only [MonoidalClosed.curry_natural_right] at this
    rw [← this]
    simp [MonoidalClosed.curry_eq]

set_option backward.isDefEq.respectTransparency false in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant7bdbbf1faf75059349258b27860c3a55e74e375432c29edc9c8527246d7fc466.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant7bdbbf1faf75059349258b27860c3a55e74e375432c29edc9c8527246d7fc466.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56704e6e0b4b4cf54a67f0718484f729a7cb5c3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
