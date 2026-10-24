# exists_effectiveEpi_iff_mem_induced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b3d0afdf47f80c44d743829410cb7943d047b4aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e1482e1b29048ac8c34a449591e5d56a36be4a18c9997e3bb24b79d24862283.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4dd9212a-ccc3-1674-a0ae-492b01929de4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:caaff067-ef8b-bec0-7311-f2b8e7368c55",
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
  "slug": "exists-effectiveepi-iff-mem-induced--aa8743bdae19e4240b9d73c7",
  "source": {
    "blob": "b3d0afdf47f80c44d743829410cb7943d047b4aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 166,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant1e1482e1b29048ac8c34a449591e5d56a36be4a18c9997e3bb24b79d24862283.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa8743bdae19e4240b9d73c70b4016fb7e962a7cc64b996835076ad81687b7e3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant1e1482e1b29048ac8c34a449591e5d56a36be4a18c9997e3bb24b79d24862283.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:caaff067-ef8b-bec0-7311-f2b8e7368c55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–186.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant1e1482e1b29048ac8c34a449591e5d56a36be4a18c9997e3bb24b79d24862283.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant1e1482e1b29048ac8c34a449591e5d56a36be4a18c9997e3bb24b79d24862283.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3d0afdf47f80c44d743829410cb7943d047b4aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
