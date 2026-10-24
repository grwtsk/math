# comp_ring_hom_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e27c124ffe9f840246509ed8a01c196966fa1fbc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 258,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2243060b4518fcf2dab0189035b6e73876246d4f3b90a122021ef9644ee25d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1bb7f45-31a9-1f8b-4629-d3cb6ca007f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b774bd75-5d23-c97c-2989-51c00ea7ea27",
  "kind": "theorem",
  "lexical_name": "comp_ring_hom_ext",
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
  "slug": "comp-ring-hom-ext--348ef3f069034e5351a6300a",
  "source": {
    "blob": "e27c124ffe9f840246509ed8a01c196966fa1fbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 258,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantc2243060b4518fcf2dab0189035b6e73876246d4f3b90a122021ef9644ee25d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:348ef3f069034e5351a6300af9f32ebd93d042a13d98c8dc007aa0b5364fcf2d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantc2243060b4518fcf2dab0189035b6e73876246d4f3b90a122021ef9644ee25d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b774bd75-5d23-c97c-2989-51c00ea7ea27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_ring_hom_ext {X : LocallyRingedSpace.{u}} {R : CommRingCat.{u}} {f : R ⟶ Γ.obj (op X)}
    {β : X ⟶ Spec.locallyRingedSpaceObj R}
    (w : X.toΓSpec.base ≫ (Spec.locallyRingedSpaceMap f).base = β.base)
    (h :
      ∀ r : R,
        f ≫ X.presheaf.map (homOfLE le_top : (Opens.map β.base).obj (basicOpen r) ⟶ _).op =
          CommRingCat.ofHom (algebraMap _ _) ≫ β.c.app (op (basicOpen r))) :
    X.toΓSpec ≫ Spec.locallyRingedSpaceMap f = β := by
  refine LocallyRingedSpace.forgetToSheafedSpace.map_injective
    (Spec.basicOpen_hom_ext w ?_)
  intro r U
  erw [SheafedSpace.comp_hom_c_app, toOpen_comp_comap_assoc]
  dsimp
  rw [Category.assoc]
  erw [toΓSpecSheafedSpace_app_spec, ← X.presheaf.map_comp]
  exact h r

set_option backward.isDefEq.respectTransparency.types false in
/-- `toSpecΓ _` is an isomorphism so these are mutually two-sided inverses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantc2243060b4518fcf2dab0189035b6e73876246d4f3b90a122021ef9644ee25d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantc2243060b4518fcf2dab0189035b6e73876246d4f3b90a122021ef9644ee25d3.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e27c124ffe9f840246509ed8a01c196966fa1fbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
