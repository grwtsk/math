# yonedaMonFullyFaithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d6c46f99b2e751bfa4dad51215a5cb1a872cad4a8a8f15691617c9d37b4dc25",
  "kind": "def",
  "lexical_name": "yonedaMonFullyFaithful",
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
  "slug": "yonedamonfullyfaithful--619300db2a69845413b94922",
  "source": {
    "blob": "82c56728fadcc73a982db44d43a145c06eb90f84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 388,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantfb477c86f87b9a97c2d2654f2e72577efa926ae6c7249345087a76ff93dedbaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:619300db2a69845413b94922ac6e296141fa871d258fc5a78296f9ed9fc7aeeb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantfb477c86f87b9a97c2d2654f2e72577efa926ae6c7249345087a76ff93dedbaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d6c46f99b2e751bfa4dad51215a5cb1a872cad4a8a8f15691617c9d37b4dc25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def yonedaMonFullyFaithful : yonedaMon (C := C).FullyFaithful where
  preimage {M N} α :=
    { hom := α.app (op M.X) (𝟙 M.X)
      isMonHom_hom.one_hom := by
          dsimp only [yonedaMon_obj] at α ⊢
          rw [← yonedaMon_naturality, Category.comp_id,
            ← Category.id_comp η[M.X], toUnit_unique (𝟙 _) (toUnit _),
            ← Category.id_comp η[N.X], toUnit_unique (𝟙 _) (toUnit _)]
          exact (α.app _).hom.map_one
      isMonHom_hom.mul_hom := by
        dsimp only [yonedaMon_obj] at α ⊢
        rw [← yonedaMon_naturality, Category.comp_id, ← Category.id_comp μ[M.X], ← lift_fst_snd]
        refine ((α.app _).hom.map_mul _ _).trans ?_
        change lift _ _ ≫ μ[N.X] = _
        congr 1
        ext <;> simp only [lift_fst, tensorHom_fst, lift_snd, tensorHom_snd,
          ← yonedaMon_naturality, Category.comp_id] }
  map_preimage {M N} α := by
    ext Y f
    simp [← dsimp% yonedaMon_naturality]
  preimage_map φ := Mon.Hom.ext (Category.id_comp φ.hom)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantfb477c86f87b9a97c2d2654f2e72577efa926ae6c7249345087a76ff93dedbaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantfb477c86f87b9a97c2d2654f2e72577efa926ae6c7249345087a76ff93dedbaa.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82c56728fadcc73a982db44d43a145c06eb90f84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
