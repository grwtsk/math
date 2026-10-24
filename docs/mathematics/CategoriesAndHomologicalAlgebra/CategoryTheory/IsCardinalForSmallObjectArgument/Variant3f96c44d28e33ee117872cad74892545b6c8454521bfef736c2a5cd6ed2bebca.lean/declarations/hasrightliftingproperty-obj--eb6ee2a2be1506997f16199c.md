# hasRightLiftingProperty_πObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a060a4b-714c-750e-ab40-df4ad9ade981",
  "kind": "lemma",
  "lexical_name": "hasRightLiftingProperty_πObj",
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
  "slug": "hasrightliftingproperty-obj--eb6ee2a2be1506997f16199c",
  "source": {
    "blob": "27e4fd0ea03d7a416ad01460a7834db2d1177245",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 393,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalForSmallObjectArgument/Variant3f96c44d28e33ee117872cad74892545b6c8454521bfef736c2a5cd6ed2bebca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb6ee2a2be1506997f16199c76cde0e8d747dd7a90a18ce90cbeabe10c498605",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalForSmallObjectArgument/Variant3f96c44d28e33ee117872cad74892545b6c8454521bfef736c2a5cd6ed2bebca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a060a4b-714c-750e-ab40-df4ad9ade981`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasRightLiftingProperty_πObj {A B : C} (i : A ⟶ B) (hi : I i) (f : X ⟶ Y) :
    HasLiftingProperty i (πObj I κ f) := ⟨by
  have := hasColimitsOfShape_discrete I κ
  have := hasPushouts I κ
  have := preservesColimit I κ i hi _ (relativeCellComplexιObj I κ f)
  intro g b sq
  obtain ⟨j, t, ht⟩ := Types.jointly_surjective _
    (isColimitOfPreserves (coyoneda.obj (Opposite.op A))
      (relativeCellComplexιObj I κ f).isColimit) g
  dsimp at g b sq t ht
  obtain ⟨l, hl₁, hl₂⟩ := ιFunctorObj_extension' I.homFamily
    ((relativeCellComplexιObj I κ f).incl.app j ≫ πObj I κ f)
    ((relativeCellComplexιObj I κ f).F.map (homOfLE (Order.le_succ j)))
    ((relativeCellComplexιObj I κ f).incl.app (Order.succ j) ≫ πObj I κ f) (by simp) (Iso.refl _)
    (iterationFunctorObjObjRightIso I κ (Arrow.mk f) j).symm
    (relativeCellComplexιObjFObjSuccIso I κ f j)
    (by dsimp; rw [ιFunctorObj_eq, id_comp])
    (by dsimp; rw [πFunctorObj_eq, assoc, Iso.hom_inv_id_assoc])
    (i := ⟨i, hi⟩) t b (by rw [reassoc_of% ht, sq.w]; dsimp)
  dsimp at hl₁
  exact ⟨⟨{
    l := l ≫ (relativeCellComplexιObj I κ f).incl.app (Order.succ j)
    fac_left := by simp [reassoc_of% hl₁, ← ht]
    fac_right := by rw [assoc, hl₂]
  }⟩⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalForSmallObjectArgument/Variant3f96c44d28e33ee117872cad74892545b6c8454521bfef736c2a5cd6ed2bebca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalForSmallObjectArgument/Variant3f96c44d28e33ee117872cad74892545b6c8454521bfef736c2a5cd6ed2bebca.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27e4fd0ea03d7a416ad01460a7834db2d1177245` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
