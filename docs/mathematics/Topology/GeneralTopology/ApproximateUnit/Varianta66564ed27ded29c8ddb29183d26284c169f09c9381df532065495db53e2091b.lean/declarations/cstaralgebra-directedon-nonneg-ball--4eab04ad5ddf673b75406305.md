# CStarAlgebra.directedOn_nonneg_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d874507c98db41ac7cc14f01676e2d6a52fdee7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:937612ce-c2a3-fc25-2fc5-bd46bc5a41ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35c7c3c8-4fcb-6f60-94a5-298a60c28149",
  "kind": "lemma",
  "lexical_name": "CStarAlgebra.directedOn_nonneg_ball",
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
  "slug": "cstaralgebra-directedon-nonneg-ball--4eab04ad5ddf673b75406305",
  "source": {
    "blob": "3d874507c98db41ac7cc14f01676e2d6a52fdee7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4eab04ad5ddf673b75406305ef971edc94c533671ad9bb0e7f78fb48659d1bf1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35c7c3c8-4fcb-6f60-94a5-298a60c28149`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CStarAlgebra.directedOn_nonneg_ball :
    DirectedOn (· ≤ ·) ({x : A | 0 ≤ x} ∩ Metric.ball 0 1) := by
  let f : ℝ≥0 → ℝ≥0 := fun x => 1 - (1 + x)⁻¹
  let g : ℝ≥0 → ℝ≥0 := fun x => x * (1 - x)⁻¹
  suffices ∀ a b : A, 0 ≤ a → 0 ≤ b → ‖a‖ < 1 → ‖b‖ < 1 →
      a ≤ cfcₙ f (cfcₙ g a + cfcₙ g b) by
    rintro a ⟨(ha₁ : 0 ≤ a), ha₂⟩ b ⟨(hb₁ : 0 ≤ b), hb₂⟩
    simp only [Metric.mem_ball, dist_zero_right] at ha₂ hb₂
    refine ⟨cfcₙ f (cfcₙ g a + cfcₙ g b), ⟨by simp, ?_⟩, ?_, ?_⟩
    · simpa only [Metric.mem_ball, dist_zero_right] using norm_cfcₙ_one_sub_one_add_inv_lt_one _
    · exact this a b ha₁ hb₁ ha₂ hb₂
    · exact add_comm (cfcₙ g a) (cfcₙ g b) ▸ this b a hb₁ ha₁ hb₂ ha₂
  rintro a b ha₁ - ha₂ -
  calc
    a = cfcₙ (f ∘ g) a := by
      conv_lhs => rw [← cfcₙ_id ℝ≥0 a]
      refine cfcₙ_congr (Set.InvOn.one_sub_one_add_inv.1.eqOn.symm.mono fun x hx ↦ ?_)
      exact lt_of_le_of_lt (le_nnnorm_of_mem_quasispectrum hx) ha₂
    _ = cfcₙ f (cfcₙ g a) := by
      rw [cfcₙ_comp f g a ?_ (by simp [f, tsub_self]) ?_ (by simp [g]) ha₁]
      · fun_prop (disch := intro _ _; positivity)
      · have (x) (hx : x ∈ σₙ ℝ≥0 a) :  1 - x ≠ 0 := by
          refine tsub_pos_of_lt ?_ |>.ne'
          exact lt_of_le_of_lt (le_nnnorm_of_mem_quasispectrum hx) ha₂
        fun_prop (disch := assumption)
    _ ≤ cfcₙ f (cfcₙ g a + cfcₙ g b) := by
      have hab' : cfcₙ g a ≤ cfcₙ g a + cfcₙ g b := le_add_of_nonneg_right cfcₙ_nonneg_of_predicate
      exact CFC.monotoneOn_one_sub_one_add_inv cfcₙ_nonneg_of_predicate
        (cfcₙ_nonneg_of_predicate.trans hab') hab'

section ApproximateUnit

open Metric Filter Topology

/-- An *increasing approximate unit* in a C⋆-algebra is an approximate unit contained in the
closed unit ball of nonnegative elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d874507c98db41ac7cc14f01676e2d6a52fdee7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
