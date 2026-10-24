# leftDerivedZeroToSelfApp_comp_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d8e472f-f542-8e49-f69d-47e7565ddd86",
  "kind": "theorem",
  "lexical_name": "leftDerivedZeroToSelfApp_comp_inv",
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
  "slug": "leftderivedzerotoselfapp-comp-inv--c405a218aacbb86f2aad7166",
  "source": {
    "blob": "fe70ed66f53043ffb7948e6658cf68da14290356",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 103,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant17e191ac6d28a2f775fbb023101a261e401148f6b375a8159b228191e9923ba8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c405a218aacbb86f2aad71667b0396e2e61eb54acbd0f4b3e48369922c2d6612",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant17e191ac6d28a2f775fbb023101a261e401148f6b375a8159b228191e9923ba8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d8e472f-f542-8e49-f69d-47e7565ddd86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leftDerivedZeroToSelfApp_comp_inv [EnoughProjectives C] [PreservesFiniteColimits F] {X : C}
    (P : ProjectiveResolution X) :
    leftDerivedZeroToSelfApp F P ≫ leftDerivedZeroToSelfAppInv F P = 𝟙 _ := by
  dsimp [leftDerivedZeroToSelfApp, leftDerivedZeroToSelfAppInv]
  rw [← Category.assoc, ← Category.assoc, ← Category.assoc, Iso.comp_inv_eq]
  -- Porting note: working around 'motive is not type correct'
  simp only [Category.id_comp]
  rw [Category.assoc, Category.assoc, Category.assoc]
  convert Category.comp_id (leftDerivedObjIso F 0 P).hom
  rw [← Category.assoc, ← Category.assoc, Iso.comp_inv_eq]
  -- Porting note: broken ext
  apply homology.hom_from_ext
  simp only [← Category.assoc]
  erw [homology.π'_desc', Category.assoc, Category.assoc, ←
    Category.assoc (F.map _), Abelian.cokernel.desc.inv _ _ (exact_of_map_projectiveResolution F P),
    cokernel.π_desc, homology.π', Category.comp_id, Category.assoc (cokernel.π _), Iso.inv_hom_id,
    Category.comp_id, ← Category.assoc]
  -- Porting note: restructured proof to avoid `convert`
  conv_rhs => rw [← Category.id_comp (cokernel.π _)]
  congr
  ext
  -- Porting note: working around 'motive is not type correct'
  simp only [Category.id_comp]
  rw [Category.assoc, equalizer_as_kernel, kernel.lift_ι]
  simp only [Category.comp_id]
#align category_theory.abelian.functor.left_derived_zero_to_self_app_comp_inv CategoryTheory.Abelian.Functor.leftDerivedZeroToSelfApp_comp_inv

-- Porting note: linter thinks the `have` below is unused, but removing it makes a typeclass
-- search fail
@[nolint unusedHavesSuffices]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant17e191ac6d28a2f775fbb023101a261e401148f6b375a8159b228191e9923ba8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant17e191ac6d28a2f775fbb023101a261e401148f6b375a8159b228191e9923ba8.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe70ed66f53043ffb7948e6658cf68da14290356` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
