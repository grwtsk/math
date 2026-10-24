# Obj.map_epi_on_summand_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71b20d8c-1394-c48d-b10c-ee678aec3c00",
  "kind": "theorem",
  "lexical_name": "Obj.map_epi_on_summand_id",
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
  "slug": "obj-map-epi-on-summand-id--9b6b32c482e08021572ff8e6",
  "source": {
    "blob": "459b6e9146bce77337c4077b6ab0a1b61c8cb795",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 271,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant6c692b947aa8535de380594eeea3e9d71b9dab9f2252d1a5480c371eda3a2be6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b6b32c482e08021572ff8e66bee8a79df7fa899d6f1f728f7f5d84784bbba50",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant6c692b947aa8535de380594eeea3e9d71b9dab9f2252d1a5480c371eda3a2be6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71b20d8c-1394-c48d-b10c-ee678aec3c00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Obj.map_epi_on_summand_id {Δ Δ' : SimplexCategory} (e : Δ' ⟶ Δ) [Epi e] :
    ((Γ₀.splitting K).cofan _).inj (Splitting.IndexSet.id (op Δ)) ≫ (Γ₀.obj K).map e.op =
      ((Γ₀.splitting K).cofan _).inj (Splitting.IndexSet.mk e) := by
  simpa only [Γ₀.Obj.map_on_summand K (Splitting.IndexSet.id (op Δ)) e.op
      (rfl : e ≫ 𝟙 Δ = e ≫ 𝟙 Δ),
    Γ₀.Obj.Termwise.mapMono_id] using id_comp _

/-- The functor `Γ₀ : ChainComplex C ℕ ⥤ SimplicialObject C`, on morphisms. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant6c692b947aa8535de380594eeea3e9d71b9dab9f2252d1a5480c371eda3a2be6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant6c692b947aa8535de380594eeea3e9d71b9dab9f2252d1a5480c371eda3a2be6.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `459b6e9146bce77337c4077b6ab0a1b61c8cb795` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
