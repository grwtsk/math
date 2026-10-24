# pushforwardFamily_compatible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:495115fd-72b6-6aa8-9e0d-69bb7d89245a",
  "kind": "theorem",
  "lexical_name": "pushforwardFamily_compatible",
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
  "slug": "pushforwardfamily-compatible--b2decd16e60f0342d014eea5",
  "source": {
    "blob": "c35cb0b2b6f6938685785b2638dca2c1b0b3ada7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 183,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2decd16e60f0342d014eea59ba3360d51a967f959f3a0f09bb17e39327d5161",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:495115fd-72b6-6aa8-9e0d-69bb7d89245a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pushforwardFamily_compatible {X} (x : ℱ.obj (op X)) :
    (pushforwardFamily α x).Compatible := by
  intro Y₁ Y₂ Z g₁ g₂ f₁ f₂ h₁ h₂ e
  apply H.ext
  intro Y f
  simp only [pushforwardFamily, ← FunctorToTypes.map_comp_apply, ← op_comp]
  change (ℱ.map _ ≫ α.app (op _) ≫ ℱ'.val.map _) _ = (ℱ.map _ ≫ α.app (op _) ≫ ℱ'.val.map _) _
  rw [← G.image_preimage (f ≫ g₁ ≫ _)]
  rw [← G.image_preimage (f ≫ g₂ ≫ _)]
  erw [← α.naturality (G.preimage _).op]
  erw [← α.naturality (G.preimage _).op]
  refine' congr_fun _ x
  -- porting note: these next 3 tactics (simp, rw, simp) were just one big `simp only` in Lean 3
  -- but I can't get `simp` to do the `rw` line.
  simp only [Functor.comp_map, ← Category.assoc, Functor.op_map, Quiver.Hom.unop_op]
  rw [← ℱ.map_comp, ← ℱ.map_comp] -- `simp only [← ℱ.map_comp]` does nothing, even if I add
  -- the relevant explicit inputs
  simp only [← op_comp, G.image_preimage]
  congr 3
  simp [e]
#align category_theory.cover_dense.types.pushforward_family_compatible CategoryTheory.CoverDense.Types.pushforwardFamily_compatible

/-- (Implementation). The morphism `ℱ(X) ⟶ ℱ'(X)` given by gluing the `pushforwardFamily`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c35cb0b2b6f6938685785b2638dca2c1b0b3ada7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
