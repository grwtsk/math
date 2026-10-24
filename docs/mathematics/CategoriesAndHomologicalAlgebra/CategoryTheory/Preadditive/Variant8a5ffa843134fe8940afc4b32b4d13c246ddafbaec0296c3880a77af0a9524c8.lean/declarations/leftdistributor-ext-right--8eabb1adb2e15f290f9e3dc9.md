# leftDistributor_ext_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f84de4e5-f7f8-631e-49ce-98c9ebbb3ef7",
  "kind": "theorem",
  "lexical_name": "leftDistributor_ext_right",
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
  "slug": "leftdistributor-ext-right--8eabb1adb2e15f290f9e3dc9",
  "source": {
    "blob": "dc2093d709c80399a0706fd89dfc401b67d3a430",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 312,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8eabb1adb2e15f290f9e3dc99d20f09ab1cc5f9b8fe65b9a73b941c9ea594cd2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f84de4e5-f7f8-631e-49ce-98c9ebbb3ef7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leftDistributor_ext_right {J : Type} [Finite J] {X Y : C} {f : J → C} {g h : X ⟶ Y ⊗ ⨁ f}
    (w : ∀ j, g ≫ (Y ◁ biproduct.π f j) = h ≫ (Y ◁ biproduct.π f j)) : g = h := by
  classical
  cases nonempty_fintype J
  apply (cancel_mono (leftDistributor Y f).hom).mp
  ext
  simp? [leftDistributor_hom, Preadditive.sum_comp, Preadditive.comp_sum_assoc, biproduct.ι_π,
      comp_dite] says
    simp only [leftDistributor_hom, Category.assoc, Preadditive.sum_comp, biproduct.ι_π, comp_dite,
      comp_zero, Finset.sum_dite_eq', Finset.mem_univ, ↓reduceIte, eqToHom_refl, Category.comp_id]
  apply w

-- One might wonder how many iterated tensor products we need simp lemmas for.
-- The answer is two: this lemma is needed to verify the pentagon identity.
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc2093d709c80399a0706fd89dfc401b67d3a430` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
