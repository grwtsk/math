# norm_eq_iInf_iff_real_inner_le_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2864fa7d-f8d8-b6dd-8f2e-54e6f1723868",
  "kind": "theorem",
  "lexical_name": "norm_eq_iInf_iff_real_inner_le_zero",
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
  "slug": "norm-eq-iinf-iff-real-inner-le-zero--b448a18f3c43ecf3cc156a79",
  "source": {
    "blob": "d26dfd7da00bf3f6f0cc3256bccf3676daea1856",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 189,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projection/Variantbfae44632f790418c8c66f66f37c70fb4f29e9093925824fa9017f0700abcddc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b448a18f3c43ecf3cc156a796ee2727b32fc041255968ef05bf4e1929db3d2d8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projection/Variantbfae44632f790418c8c66f66f37c70fb4f29e9093925824fa9017f0700abcddc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2864fa7d-f8d8-b6dd-8f2e-54e6f1723868`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_eq_iInf_iff_real_inner_le_zero {K : Set F} (h : Convex ℝ K) {u : F} {v : F}
    (hv : v ∈ K) : (‖u - v‖ = ⨅ w : K, ‖u - w‖) ↔ ∀ w ∈ K, ⟪u - v, w - v⟫_ℝ ≤ 0 := by
  letI : Nonempty K := ⟨⟨v, hv⟩⟩
  constructor
  · intro eq w hw
    let δ := ⨅ w : K, ‖u - w‖
    let p := ⟪u - v, w - v⟫_ℝ
    let q := ‖w - v‖ ^ 2
    have δ_le (w : K) : δ ≤ ‖u - w‖ := ciInf_le ⟨0, fun _ ⟨_, h⟩ => h ▸ norm_nonneg _⟩ _
    have δ_le' (w) (hw : w ∈ K) : δ ≤ ‖u - w‖ := δ_le ⟨w, hw⟩
    have (θ : ℝ) (hθ₁ : 0 < θ) (hθ₂ : θ ≤ 1) : 2 * p ≤ θ * q := by
      have : ‖u - v‖ ^ 2 ≤ ‖u - v‖ ^ 2 - 2 * θ * ⟪u - v, w - v⟫_ℝ + θ * θ * ‖w - v‖ ^ 2 :=
        calc ‖u - v‖ ^ 2
          _ ≤ ‖u - (θ • w + (1 - θ) • v)‖ ^ 2 := by
            simp only [sq]; apply mul_self_le_mul_self (norm_nonneg _)
            rw [eq]; apply δ_le'
            apply h hw hv
            exacts [le_of_lt hθ₁, sub_nonneg.2 hθ₂, add_sub_cancel _ _]
          _ = ‖u - v - θ • (w - v)‖ ^ 2 := by
            have : u - (θ • w + (1 - θ) • v) = u - v - θ • (w - v) := by
              rw [smul_sub, sub_smul, one_smul]
              simp only [sub_eq_add_neg, add_comm, add_left_comm, add_assoc, neg_add_rev]
            rw [this]
          _ = ‖u - v‖ ^ 2 - 2 * θ * ⟪u - v, w - v⟫_ℝ + θ * θ * ‖w - v‖ ^ 2 := by
            rw [@norm_sub_sq ℝ, inner_smul_right, norm_smul]
            simp only [sq]
            show
              ‖u - v‖ * ‖u - v‖ - 2 * (θ * ⟪u - v, w - v⟫_ℝ) +
                absR θ * ‖w - v‖ * (absR θ * ‖w - v‖) =
              ‖u - v‖ * ‖u - v‖ - 2 * θ * ⟪u - v, w - v⟫_ℝ + θ * θ * (‖w - v‖ * ‖w - v‖)
            rw [abs_of_pos hθ₁]; ring
      have eq₁ :
        ‖u - v‖ ^ 2 - 2 * θ * ⟪u - v, w - v⟫_ℝ + θ * θ * ‖w - v‖ ^ 2 =
          ‖u - v‖ ^ 2 + (θ * θ * ‖w - v‖ ^ 2 - 2 * θ * ⟪u - v, w - v⟫_ℝ) := by
        abel
      rw [eq₁, le_add_iff_nonneg_right] at this
      have eq₂ :
        θ * θ * ‖w - v‖ ^ 2 - 2 * θ * ⟪u - v, w - v⟫_ℝ =
          θ * (θ * ‖w - v‖ ^ 2 - 2 * ⟪u - v, w - v⟫_ℝ) := by ring
      rw [eq₂] at this
      exact le_of_sub_nonneg (nonneg_of_mul_nonneg_right this hθ₁)
    by_cases hq : q = 0
    · rw [hq] at this
      have : p ≤ 0 := by
        have := this (1 : ℝ) (by norm_num) (by norm_num)
        linarith
      exact this
    · have q_pos : 0 < q := lt_of_le_of_ne (sq_nonneg _) fun h ↦ hq h.symm
      by_contra hp
      rw [not_le] at hp
      let θ := min (1 : ℝ) (p / q)
      have eq₁ : θ * q ≤ p :=
        calc
          θ * q ≤ p / q * q := mul_le_mul_of_nonneg_right (min_le_right _ _) (sq_nonneg _)
          _ = p := div_mul_cancel₀ _ hq
      have : 2 * p ≤ p :=
        calc
          2 * p ≤ θ * q := by
            exact this θ (lt_min (by norm_num) (div_pos hp q_pos)) (by norm_num [θ])
          _ ≤ p := eq₁
      linarith
  · intro h
    apply le_antisymm
    · apply le_ciInf
      intro w
      apply nonneg_le_nonneg_of_sq_le_sq (norm_nonneg _)
      have := h w w.2
      calc
        ‖u - v‖ * ‖u - v‖ ≤ ‖u - v‖ * ‖u - v‖ - 2 * ⟪u - v, w - v⟫_ℝ := by linarith
        _ ≤ ‖u - v‖ ^ 2 - 2 * ⟪u - v, w - v⟫_ℝ + ‖w - v‖ ^ 2 := by
          rw [sq]
          refine le_add_of_nonneg_right ?_
          exact sq_nonneg _
        _ = ‖u - v - (w - v)‖ ^ 2 := (@norm_sub_sq ℝ _ _ _ _ _ _).symm
        _ = ‖u - w‖ * ‖u - w‖ := by
          have : u - v - (w - v) = u - w := by abel
          rw [this, sq]
    · show ⨅ w : K, ‖u - w‖ ≤ (fun w : K => ‖u - w‖) ⟨v, hv⟩
      apply ciInf_le
      use 0
      rintro y ⟨z, rfl⟩
      exact norm_nonneg _

variable (K : Submodule 𝕜 E)

namespace Submodule

/-- Existence of projections on complete subspaces.
Let `u` be a point in an inner product space, and let `K` be a nonempty complete subspace.
Then there exists a (unique) `v` in `K` that minimizes the distance `‖u - v‖` to `u`.
This point `v` is usually called the orthogonal projection of `u` onto `K`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projection/Variantbfae44632f790418c8c66f66f37c70fb4f29e9093925824fa9017f0700abcddc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projection/Variantbfae44632f790418c8c66f66f37c70fb4f29e9093925824fa9017f0700abcddc.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d26dfd7da00bf3f6f0cc3256bccf3676daea1856` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
