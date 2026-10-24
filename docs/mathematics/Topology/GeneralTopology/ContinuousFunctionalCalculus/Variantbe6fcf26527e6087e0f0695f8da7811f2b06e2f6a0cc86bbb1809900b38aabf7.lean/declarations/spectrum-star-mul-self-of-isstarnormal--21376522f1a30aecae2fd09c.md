# spectrum_star_mul_self_of_isStarNormal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "717d9efdd9fa976837df0f4a34f7e472a6b41d9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3dc7eced-5d9e-6c42-cd32-b90c381f4404",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79a1d36d-d594-61d8-0876-1aedc019dbab",
  "kind": "theorem",
  "lexical_name": "spectrum_star_mul_self_of_isStarNormal",
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
  "slug": "spectrum-star-mul-self-of-isstarnormal--21376522f1a30aecae2fd09c",
  "source": {
    "blob": "717d9efdd9fa976837df0f4a34f7e472a6b41d9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 82,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21376522f1a30aecae2fd09c4d222483ecda11d573706ba71a61b6adf7b6371d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79a1d36d-d594-61d8-0876-1aedc019dbab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectrum_star_mul_self_of_isStarNormal :
    spectrum ℂ (star a * a) ⊆ Set.Icc (0 : ℂ) ‖star a * a‖ := by
  -- this instance should be found automatically, but without providing it Lean goes on a wild
  -- goose chase when trying to apply `spectrum.gelfandTransform_eq`.
  --letI := elementalStarAlgebra.Complex.normedAlgebra a
  rcases subsingleton_or_nontrivial A with ⟨⟩
  · simp only [spectrum.of_subsingleton, Set.empty_subset]
  · set a' : elementalStarAlgebra ℂ a := ⟨a, self_mem ℂ a⟩
    refine' (spectrum.subset_starSubalgebra (star a' * a')).trans _
    rw [← spectrum.gelfandTransform_eq (star a' * a'), ContinuousMap.spectrum_eq_range]
    rintro - ⟨φ, rfl⟩
    rw [gelfandTransform_apply_apply ℂ _ (star a' * a') φ, map_mul φ, map_star φ]
    rw [Complex.eq_coe_norm_of_nonneg (star_mul_self_nonneg _), ← map_star, ← map_mul]
    exact
      ⟨Complex.zero_le_real.2 (norm_nonneg _),
        Complex.real_le_real.2 (AlgHom.norm_apply_le_self φ (star a' * a'))⟩
#align spectrum_star_mul_self_of_is_star_normal spectrum_star_mul_self_of_isStarNormal

variable {a}

/-- This is the key lemma on the way to establishing spectral permanence for C⋆-algebras, which is
established in `StarSubalgebra.spectrum_eq`. This lemma is superseded by
`StarSubalgebra.coe_isUnit`, which does not require an `IsStarNormal` hypothesis and holds for
any closed star subalgebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `717d9efdd9fa976837df0f4a34f7e472a6b41d9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
