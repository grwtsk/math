# rightDerivedZeroToSelf_natural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96594270e51832241dd47f57e03ab6af24256598",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 296,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5001d2ff-d521-204a-646a-fff7fa5a026f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e356103d-d0bd-fb45-de7c-35c6fc870954",
  "kind": "theorem",
  "lexical_name": "rightDerivedZeroToSelf_natural",
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
  "slug": "rightderivedzerotoself-natural--a4dbb15ed6df9e09db90980a",
  "source": {
    "blob": "96594270e51832241dd47f57e03ab6af24256598",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 296,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4dbb15ed6df9e09db90980a82d02f2dd07531765fc05c50d681e6663e55f3e3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e356103d-d0bd-fb45-de7c-35c6fc870954`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rightDerivedZeroToSelf_natural [EnoughInjectives C] {X : C} {Y : C} (f : X ⟶ Y)
    (P : InjectiveResolution X) (Q : InjectiveResolution Y) :
    F.map f ≫ rightDerivedZeroToSelfAppInv F Q =
      rightDerivedZeroToSelfAppInv F P ≫ (F.rightDerived 0).map f := by
  dsimp [rightDerivedZeroToSelfAppInv]
  simp only [CategoryTheory.Functor.map_id, Category.id_comp, ← Category.assoc]
  rw [Iso.comp_inv_eq, rightDerived_map_eq F 0 f (InjectiveResolution.desc f Q P) (by simp),
    Category.assoc, Category.assoc, Category.assoc, Category.assoc, Iso.inv_hom_id,
    Category.comp_id, ← Category.assoc (F.rightDerivedObjIso 0 P).inv, Iso.inv_hom_id,
    Category.id_comp]
  dsimp only [homologyFunctor_map]
  -- Porting note: broken ext
  apply homology.hom_to_ext
  rw [Category.assoc, homology.lift_ι, Category.assoc]
  erw [homology.map_ι] -- Porting note: need to insist
  rw [←Category.assoc (homology.lift _ _ _ _ _) _ _]
  erw [homology.lift_ι] -- Porting note: need to insist
  rw [Category.assoc]
  erw [cokernel.π_desc] -- Porting note: need to insist
  rw [← Category.assoc, ← Functor.map_comp, ← Category.assoc,
    HomologicalComplex.Hom.sqFrom_left, mapHomologicalComplex_map_f, ← Functor.map_comp,
    show f ≫ Q.ι.f 0 = P.ι.f 0 ≫ (InjectiveResolution.desc f Q P).f 0 from
      HomologicalComplex.congr_hom (InjectiveResolution.desc_commutes f Q P).symm 0]
  rfl -- Porting note: extra rfl
#align category_theory.abelian.functor.right_derived_zero_to_self_natural CategoryTheory.Abelian.Functor.rightDerivedZeroToSelf_natural

/-- Given `PreservesFiniteLimits F`, the natural isomorphism `(F.rightDerived 0) ≅ F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96594270e51832241dd47f57e03ab6af24256598` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
