# pullback_fst_map_snd_isPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "243bc397d4264f483462c84b7c2cd3174f6fc42b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5a71334-ba7a-359e-a4ab-315082c31974",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df0c54b4-d926-3c71-57d8-425d6c984464",
  "kind": "theorem",
  "lexical_name": "pullback_fst_map_snd_isPullback",
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
  "slug": "pullback-fst-map-snd-ispullback--abbcca38e5d6da9b7ce5759a",
  "source": {
    "blob": "243bc397d4264f483462c84b7c2cd3174f6fc42b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 192,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abbcca38e5d6da9b7ce5759ae50817a6b45e270c566ccb821abfcd38d9e8f255",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df0c54b4-d926-3c71-57d8-425d6c984464`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem pullback_fst_map_snd_isPullback :
    IsPullback (fst _ _ ≫ i₁ ≫ fst _ _)
      (map i₁ i₂ (i₁ ≫ snd _ _) (i₂ ≫ snd _ _) _ _ _
        (Category.id_comp _).symm (Category.id_comp _).symm)
      (diagonal f)
      (map (i₁ ≫ snd _ _) (i₂ ≫ snd _ _) f f (i₁ ≫ fst _ _) (i₂ ≫ fst _ _) i (by simp [condition])
        (by simp [condition])) :=
  IsPullback.of_iso_pullback ⟨by ext <;> simp [condition_assoc]⟩
    (pullbackDiagonalMapIso f i i₁ i₂).symm (pullbackDiagonalMapIso.inv_fst f i i₁ i₂)
    (by aesop_cat)

end

section

variable {S T : C} (f : X ⟶ T) (g : Y ⟶ T) (i : T ⟶ S)
variable [HasPullback i i] [HasPullback f g] [HasPullback (f ≫ i) (g ≫ i)]
variable
  [HasPullback (diagonal i)
      (pullback.map (f ≫ i) (g ≫ i) i i f g (𝟙 _) (Category.comp_id _) (Category.comp_id _))]

/-- This iso witnesses the fact that
given `f : X ⟶ T`, `g : Y ⟶ T`, and `i : T ⟶ S`, the diagram

```
X ×ₜ Y ⟶ X ×ₛ Y
  |         |
  |         |
  ↓         ↓
  T    ⟶  T ×ₛ T
```

is a pullback square.
Also see `pullback_map_diagonal_isPullback`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `243bc397d4264f483462c84b7c2cd3174f6fc42b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
