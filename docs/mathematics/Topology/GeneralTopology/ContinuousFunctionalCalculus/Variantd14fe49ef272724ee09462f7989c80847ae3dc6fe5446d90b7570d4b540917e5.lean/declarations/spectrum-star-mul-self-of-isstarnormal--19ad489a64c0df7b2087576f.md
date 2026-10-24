# spectrum_star_mul_self_of_isStarNormal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:471782dc-9fdd-fa9d-4885-59dc7209116d",
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
  "slug": "spectrum-star-mul-self-of-isstarnormal--19ad489a64c0df7b2087576f",
  "source": {
    "blob": "cc545264d40716b7a34d7f75c903fec0ec1749c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 90,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantd14fe49ef272724ee09462f7989c80847ae3dc6fe5446d90b7570d4b540917e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19ad489a64c0df7b2087576f7a0e86a7ee5834699f20e31ba3044d1e1ee402f9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantd14fe49ef272724ee09462f7989c80847ae3dc6fe5446d90b7570d4b540917e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:471782dc-9fdd-fa9d-4885-59dc7209116d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–113.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantd14fe49ef272724ee09462f7989c80847ae3dc6fe5446d90b7570d4b540917e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantd14fe49ef272724ee09462f7989c80847ae3dc6fe5446d90b7570d4b540917e5.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc545264d40716b7a34d7f75c903fec0ec1749c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
