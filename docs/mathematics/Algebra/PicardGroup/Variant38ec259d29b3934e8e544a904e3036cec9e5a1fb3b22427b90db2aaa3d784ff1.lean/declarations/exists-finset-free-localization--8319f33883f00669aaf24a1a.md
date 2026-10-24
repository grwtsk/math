# exists_finset_free_localization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb1fde9f0a17d9f5a18ceb0cb3b0f2cae433357d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 378,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd7b4b0b-0467-2326-c127-be8b8863ee60",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21c4c05c-20b6-5812-12e1-1568c72e6751",
  "kind": "theorem",
  "lexical_name": "exists_finset_free_localization",
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
  "slug": "exists-finset-free-localization--8319f33883f00669aaf24a1a",
  "source": {
    "blob": "cb1fde9f0a17d9f5a18ceb0cb3b0f2cae433357d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 378,
    "path": "GRWTSK/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8319f33883f00669aaf24a1af781b3d8fcc489798d806b1c9e0bc37035422eae",
  "verification": {
    "reference": "docs/verification/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21c4c05c-20b6-5812-12e1-1568c72e6751`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_finset_free_localization :
    ∃ s : Finset R, Ideal.span (s : Set R) = ⊤ ∧
      ∀ r ∈ s, Free (Localization.Away r) (LocalizedModule.Away r M) := by
  classical
  -- write 1 = ∑ᵢ fᵢ(mᵢ) with `mᵢ : M` and `fᵢ : Dual R M`
  obtain ⟨S, hS⟩ := ((linearEquiv R M).symm 1).exists_finset
  refine ⟨S.image fun i ↦ i.1 i.2, ?_, fun r hr ↦ ?_⟩
  -- Part 1: The evaluations fᵢ(mᵢ) generate the unit ideal
  · simpa [Ideal.eq_top_iff_one, (LinearEquiv.symm_apply_eq _).mp hS, linearEquiv]
      using Ideal.sum_mem _ fun i hi ↦ Ideal.subset_span (Finset.mem_image_of_mem _ hi)
  -- Part 2: After localizing at any f(m), the module becomes free
  obtain ⟨⟨f, m⟩, _, rfl⟩ := Finset.mem_image.mp hr
  -- Extend f to a R_{f(m)}-linear functional f' on the localized module
  let f' : Dual (Localization.Away (f m)) (LocalizedModule.Away (f m) M) :=
    .extendScalarsOfIsLocalization (.powers (f m)) _ <| IsLocalizedModule.map
      (.powers (f m)) (LocalizedModule.mkLinearMap _ M) (Algebra.linearMap R _) f
  -- f'(m/1) = f(m)/1 is a unit in R_{f(m)}, so f' is surjective and therefore bijective
  have surj : Function.Surjective f' := LinearMap.range_eq_top.mp <| Ideal.eq_top_of_isUnit_mem
    _ ⟨_, IsLocalizedModule.map_apply ..⟩ (IsLocalization.Away.algebraMap_isUnit (f m))
  exact .of_equiv <| .symm <| .ofBijective f' (bijective_of_surjective surj)

end CommSemiring

end Algebra

end Invertible

end Module

section PicardGroup

open CategoryTheory Module

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb1fde9f0a17d9f5a18ceb0cb3b0f2cae433357d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
