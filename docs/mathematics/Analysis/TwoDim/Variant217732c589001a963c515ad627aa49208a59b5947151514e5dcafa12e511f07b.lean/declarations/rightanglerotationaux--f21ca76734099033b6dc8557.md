# rightAngleRotationAux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e660bd09a2a3ddd43627e0b1f5c2057fafe5b5527f9cbce52ac2acea24cc4380",
  "kind": "def",
  "lexical_name": "rightAngleRotationAux₂",
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
  "slug": "rightanglerotationaux--f21ca76734099033b6dc8557",
  "source": {
    "blob": "a31c3f87e7716c7cadccdd2c48dfb8d1c0174a61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 198,
    "path": "GRWTSK/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f21ca76734099033b6dc8557bd74c6f46ef854f18ff5c096f32ef8cf5b7ccc7c",
  "verification": {
    "reference": "docs/verification/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e660bd09a2a3ddd43627e0b1f5c2057fafe5b5527f9cbce52ac2acea24cc4380`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rightAngleRotationAux₂ : E →ₗᵢ[ℝ] E :=
  { o.rightAngleRotationAux₁ with
    norm_map' := fun x => by
      refine le_antisymm ?_ ?_
      · rcases eq_or_lt_of_le (norm_nonneg (o.rightAngleRotationAux₁ x)) with h | h
        · rw [← h]
          positivity
        refine le_of_mul_le_mul_right ?_ h
        rw [← real_inner_self_eq_norm_mul_norm, o.inner_rightAngleRotationAux₁_left]
        exact o.areaForm_le x (o.rightAngleRotationAux₁ x)
      · let K : Submodule ℝ E := ℝ ∙ x
        have : Nontrivial Kᗮ := by
          apply nontrivial_of_finrank_pos (R := ℝ)
          have : finrank ℝ K ≤ Finset.card {x} := by
            rw [← Set.toFinset_singleton]
            exact finrank_span_le_card ({x} : Set E)
          have : Finset.card {x} = 1 := Finset.card_singleton x
          have : finrank ℝ K + finrank ℝ Kᗮ = finrank ℝ E := K.finrank_add_finrank_orthogonal
          have : finrank ℝ E = 2 := Fact.out
          omega
        obtain ⟨w, hw₀⟩ : ∃ w : Kᗮ, w ≠ 0 := exists_ne 0
        have hw' : ⟪x, (w : E)⟫ = 0 := Submodule.mem_orthogonal_singleton_iff_inner_right.mp w.2
        have hw : (w : E) ≠ 0 := fun h => hw₀ (Submodule.coe_eq_zero.mp h)
        refine le_of_mul_le_mul_right ?_ (by rwa [norm_pos_iff] : 0 < ‖(w : E)‖)
        rw [← o.abs_areaForm_of_orthogonal hw']
        rw [← o.inner_rightAngleRotationAux₁_left x w]
        exact abs_real_inner_le_norm (o.rightAngleRotationAux₁ x) w }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a31c3f87e7716c7cadccdd2c48dfb8d1c0174a61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
