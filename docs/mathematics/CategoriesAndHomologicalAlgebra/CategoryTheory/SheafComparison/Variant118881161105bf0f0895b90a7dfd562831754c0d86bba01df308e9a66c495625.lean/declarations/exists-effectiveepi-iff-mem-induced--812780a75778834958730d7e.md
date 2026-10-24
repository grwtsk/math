# exists_effectiveEpi_iff_mem_induced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:324570e3-c7a7-4253-d9a3-7d07b73111ae",
  "kind": "theorem",
  "lexical_name": "exists_effectiveEpi_iff_mem_induced",
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
  "slug": "exists-effectiveepi-iff-mem-induced--812780a75778834958730d7e",
  "source": {
    "blob": "1a352131e80e524e1e1e8ca276cd61a771d849dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 174,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118881161105bf0f0895b90a7dfd562831754c0d86bba01df308e9a66c495625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:812780a75778834958730d7eb4bf6bef97209f263c0d90fac80f5c781a64d219",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118881161105bf0f0895b90a7dfd562831754c0d86bba01df308e9a66c495625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:324570e3-c7a7-4253-d9a3-7d07b73111ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_effectiveEpi_iff_mem_induced (X : C) (S : Sieve X) :
    (∃ (Y : C) (π : Y ⟶ X),
      EffectiveEpi π ∧ S.arrows π) ↔
    (S ∈ F.inducedTopology (regularTopology _) X) := by
  refine ⟨fun ⟨Y, π, ⟨H₁, H₂⟩⟩ ↦ ?_, fun hS ↦ ?_⟩
  · rw [mem_inducedTopology_iff_of_isCoverDense]
    apply (mem_sieves_iff_hasEffectiveEpi (Sieve.functorPushforward _ S)).mpr
    refine ⟨F.obj Y, F.map π, ⟨?_, Sieve.image_mem_functorPushforward F S H₂⟩⟩
    exact F.map_effectiveEpi _
  · rw [mem_inducedTopology_iff_of_isCoverDense] at hS
    obtain ⟨Y, π, ⟨H₁, H₂⟩⟩ := (mem_sieves_iff_hasEffectiveEpi _).mp hS
    let g₀ := F.effectiveEpiOver Y
    refine ⟨_, F.preimage (g₀ ≫ π), ?_, (?_ : S.arrows (F.preimage _))⟩
    · refine F.effectiveEpi_of_map _ ?_
      simp only [map_preimage]
      infer_instance
    · obtain ⟨W, g₁, g₂, h₁, h₂⟩ := H₂
      rw [h₂]
      convert! S.downward_closed h₁ (F.preimage (g₀ ≫ g₂))
      exact F.map_injective (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118881161105bf0f0895b90a7dfd562831754c0d86bba01df308e9a66c495625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118881161105bf0f0895b90a7dfd562831754c0d86bba01df308e9a66c495625.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a352131e80e524e1e1e8ca276cd61a771d849dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
