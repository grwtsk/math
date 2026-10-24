# σ_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af01da4f-f488-d4f9-2507-3b02e1e1199e",
  "kind": "theorem",
  "lexical_name": "σ_comp",
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
  "slug": "comp--d6f2066c3fd97c1ffe33ca2f",
  "source": {
    "blob": "ca060a74999a97976bf0b97eedb839c72f5f6827",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 311,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantd0c26d92a63ecb944ac476e0cec0b6ca0ac9965cf4b9d9ba723fb182ca2253de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6f2066c3fd97c1ffe33ca2f0ead57b20ddf82005c5674b14ab6fbaa81fc1e6c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantd0c26d92a63ecb944ac476e0cec0b6ca0ac9965cf4b9d9ba723fb182ca2253de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af01da4f-f488-d4f9-2507-3b02e1e1199e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem σ_comp {X Y : C} (f : X ⟶ Y) : σ ≫ f = Limits.prod.map f f ≫ σ := by
  obtain ⟨g, hg⟩ :=
    CokernelCofork.IsColimit.desc' isColimitσ (Limits.prod.map f f ≫ σ) (by
      rw [prod.diag_map_assoc, diag_σ, comp_zero])
  suffices hfg : f = g
  · rw [← hg, Cofork.π_ofπ, hfg]
  calc
    f = f ≫ prod.lift (𝟙 Y) 0 ≫ σ := by rw [lift_σ, Category.comp_id]
    _ = prod.lift (𝟙 X) 0 ≫ Limits.prod.map f f ≫ σ := by rw [lift_map_assoc]
    _ = prod.lift (𝟙 X) 0 ≫ σ ≫ g := by rw [← hg, CokernelCofork.π_ofπ]
    _ = g := by rw [← Category.assoc, lift_σ, Category.id_comp]
#align category_theory.non_preadditive_abelian.σ_comp CategoryTheory.NonPreadditiveAbelian.σ_comp

section

-- We write `f - g` for `prod.lift f g ≫ σ`.
/-- Subtraction of morphisms in a `NonPreadditiveAbelian` category. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantd0c26d92a63ecb944ac476e0cec0b6ca0ac9965cf4b9d9ba723fb182ca2253de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantd0c26d92a63ecb944ac476e0cec0b6ca0ac9965cf4b9d9ba723fb182ca2253de.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca060a74999a97976bf0b97eedb839c72f5f6827` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
