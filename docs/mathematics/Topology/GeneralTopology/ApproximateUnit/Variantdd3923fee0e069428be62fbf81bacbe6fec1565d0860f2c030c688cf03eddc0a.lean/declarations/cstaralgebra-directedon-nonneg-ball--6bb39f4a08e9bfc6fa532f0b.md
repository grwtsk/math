# CStarAlgebra.directedOn_nonneg_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92139b61-de7b-47b2-d36c-b25a17df173f",
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
  "slug": "cstaralgebra-directedon-nonneg-ball--6bb39f4a08e9bfc6fa532f0b",
  "source": {
    "blob": "a7079e5c938c4b3f83afc3f8d2e98f25bc8623d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bb39f4a08e9bfc6fa532f0b09f40fcb08b913b080e2d25d4fe78252f79f2668",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92139b61-de7b-47b2-d36c-b25a17df173f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–128.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7079e5c938c4b3f83afc3f8d2e98f25bc8623d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
