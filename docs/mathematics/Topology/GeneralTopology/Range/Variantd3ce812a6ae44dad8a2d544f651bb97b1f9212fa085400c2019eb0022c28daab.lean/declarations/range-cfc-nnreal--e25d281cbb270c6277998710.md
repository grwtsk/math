# range_cfcₙ_nnreal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa02749b-cbe7-0b6a-de60-ea68486ce21b",
  "kind": "lemma",
  "lexical_name": "range_cfcₙ_nnreal",
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
  "slug": "range-cfc-nnreal--e25d281cbb270c6277998710",
  "source": {
    "blob": "436c8ca481110b3a1d8f2a50e84542d25390af67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 262,
    "path": "GRWTSK/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e25d281cbb270c627799871029cbe43c24fd3895dd750fe181d5f090c0361e6e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa02749b-cbe7-0b6a-de60-ea68486ce21b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma range_cfcₙ_nnreal [NonUnitalClosedEmbeddingContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
    (a : A) (ha : 0 ≤ a := by cfc_tac) :
    Set.range (cfcₙ (R := ℝ≥0) · a) = {x | x ∈ NonUnitalStarAlgebra.elemental ℝ a ∧ 0 ≤ x} := by
  rw [range_cfcₙ_nnreal_eq_image_cfcₙ_real a ha, Set.ofPred_and, SetLike.setOfPred_mem_eq,
    ← range_cfcₙ _ ha.isSelfAdjoint, Set.inter_comm, ← Set.image_preimage_eq_inter_range]
  refine Set.Subset.antisymm (Set.image_mono (fun _ ↦ cfcₙ_nonneg)) ?_
  rintro _ ⟨f, hf, rfl⟩
  simp only [Set.preimage_ofPred_eq, Set.mem_ofPred_eq, Set.mem_image] at hf ⊢
  obtain (⟨h₁, h₂, h₃⟩ | h | h | h) := by
    simpa only [not_and_or] using
      em (ContinuousOn f (quasispectrum ℝ a) ∧ f 0 = 0 ∧ IsSelfAdjoint a)
  · refine ⟨f, ?_, rfl⟩
    rwa [cfcₙ_nonneg_iff f a] at hf
  · exact ⟨0, by simp, by simp [cfcₙ_apply_of_not_continuousOn a h]⟩
  · exact ⟨0, by simp, by simp [cfcₙ_apply_of_not_map_zero a h]⟩
  · exact ⟨0, by simp, by simp [cfcₙ_apply_of_not_predicate a h]⟩

open NNReal in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `436c8ca481110b3a1d8f2a50e84542d25390af67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
