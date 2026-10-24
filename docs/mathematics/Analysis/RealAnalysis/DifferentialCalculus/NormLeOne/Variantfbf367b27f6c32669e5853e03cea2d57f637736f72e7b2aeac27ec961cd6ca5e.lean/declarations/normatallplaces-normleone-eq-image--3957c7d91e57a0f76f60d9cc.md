# normAtAllPlaces_normLeOne_eq_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa379f49-fce9-3cf8-db4e-bd8326584593",
  "kind": "theorem",
  "lexical_name": "normAtAllPlaces_normLeOne_eq_image",
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
  "slug": "normatallplaces-normleone-eq-image--3957c7d91e57a0f76f60d9cc",
  "source": {
    "blob": "6efea0da50e4f59970871dbfa3bfa287293218b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 687,
    "line": 669,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variantfbf367b27f6c32669e5853e03cea2d57f637736f72e7b2aeac27ec961cd6ca5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3957c7d91e57a0f76f60d9cc03abcd5d51bb47748d70b61f910118548f688188",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variantfbf367b27f6c32669e5853e03cea2d57f637736f72e7b2aeac27ec961cd6ca5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa379f49-fce9-3cf8-db4e-bd8326584593`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 669–687.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normAtAllPlaces_normLeOne_eq_image :
    normAtAllPlaces '' (normLeOne K) = expMapBasis '' (paramSet K) := by
  ext x
  by_cases hx : ∀ w, 0 < x w
  · rw [← expMapBasis.right_inv (Set.mem_univ_pi.mpr hx), (injective_expMapBasis K).mem_set_image]
    simp only [normAtAllPlaces_normLeOne, Set.mem_inter_iff, Set.mem_ofPred_eq, expMapBasis_nonneg,
      Set.mem_preimage, logMap_expMapBasis, implies_true, and_true, norm_expMapBasis,
      pow_le_one_iff_of_nonneg (Real.exp_nonneg _) Module.finrank_pos.ne', Real.exp_le_one_iff,
      ne_eq, pow_eq_zero_iff', Real.exp_ne_zero, false_and, not_false_eq_true, Set.mem_univ_pi]
    refine ⟨fun ⟨h₁, h₂⟩ w ↦ ?_, fun h ↦ ⟨fun w hw ↦ by simpa [hw] using h w, by simpa using h w₀⟩⟩
    · split_ifs with hw
      · exact hw ▸ h₂
      · exact h₁ w hw
  · refine ⟨?_, ?_⟩
    · rintro ⟨a, ⟨ha, _⟩, rfl⟩
      exact (hx fun w ↦ fundamentalCone.normAtPlace_pos_of_mem ha w).elim
    · rintro ⟨a, _, rfl⟩
      exact (hx fun w ↦ expMapBasis_pos a w).elim

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variantfbf367b27f6c32669e5853e03cea2d57f637736f72e7b2aeac27ec961cd6ca5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variantfbf367b27f6c32669e5853e03cea2d57f637736f72e7b2aeac27ec961cd6ca5e.lean#L669).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6efea0da50e4f59970871dbfa3bfa287293218b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
