# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63e26199a7ab642ca6b840186bd7e273634776d8f4b4f947a7b5268cb917dcdc",
  "kind": "def",
  "lexical_name": "map",
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
  "slug": "map--d7f20ccbb1db146aa341b6e5",
  "source": {
    "blob": "088b1d6175c03611a2b0d71f743fa506b25ae7d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 182,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variant5a4f0b3dbd93e21b1644e72f5c6e868b0d696903e51f6e01d35e0fbe5eace037.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7f20ccbb1db146aa341b6e5e69e8a092d4c4f5f3274ffe8ccc6b7aa12d30c04",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variant5a4f0b3dbd93e21b1644e72f5c6e868b0d696903e51f6e01d35e0fbe5eace037.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63e26199a7ab642ca6b840186bd7e273634776d8f4b4f947a7b5268cb917dcdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def map : (S.map F).RightHomologyData := by
  have := IsPreservedBy.hf h F
  have := IsPreservedBy.hg' h F
  have wp : F.map S.f ≫ F.map h.p = 0 := by rw [← F.map_comp, h.wp, F.map_zero]
  have hp := CokernelCofork.mapIsColimit _ h.hp F
  let g' : F.obj h.Q ⟶ F.obj S.X₃ := hp.desc (CokernelCofork.ofπ (S.map F).g (S.map F).zero)
  have hg' : g' = F.map h.g' := by
    apply Cofork.IsColimit.hom_ext hp
    rw [Cofork.IsColimit.π_desc hp]
    simp only [Cofork.π_ofπ, CokernelCofork.map_π, map_g, ← F.map_comp, p_g']
  have wι : F.map h.ι ≫ g' = 0 := by rw [hg', ← F.map_comp, ι_g', F.map_zero]
  have hι : IsLimit (KernelFork.ofι (F.map h.ι) wι) := by
    let e : parallelPair g' 0 ≅ parallelPair (F.map h.g') 0 :=
      parallelPair.ext (Iso.refl _) (Iso.refl _) (by simpa using hg') (by simp)
    refine IsLimit.postcomposeHomEquiv e _
      (IsLimit.ofIsoLimit (KernelFork.mapIsLimit _ h.hι' F) ?_)
    exact Fork.ext (Iso.refl _) (by simp [e])
  exact
    { Q := F.obj h.Q
      H := F.obj h.H
      p := F.map h.p
      ι := F.map h.ι
      wp := wp
      hp := hp
      wι := wι
      hι := hι }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variant5a4f0b3dbd93e21b1644e72f5c6e868b0d696903e51f6e01d35e0fbe5eace037.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variant5a4f0b3dbd93e21b1644e72f5c6e868b0d696903e51f6e01d35e0fbe5eace037.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `088b1d6175c03611a2b0d71f743fa506b25ae7d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
