# no_uniform_bounded_realization_for_scale_family

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b25fee6-9d37-9477-f9cf-9dff5e725055",
  "kind": "theorem",
  "lexical_name": "no_uniform_bounded_realization_for_scale_family",
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
  "slug": "no-uniform-bounded-realization-for-scale-family--23e8ce9e2a65cda187b8b8b9",
  "source": {
    "blob": "970397fd684e83af649d2e2dd3efe6a2fcbf9d5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 179,
    "path": "GRWTSK/Analysis/InnerProductSpace/CausalContactOperatorCost.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23e8ce9e2a65cda187b8b8b9a927f810ec8addc7bb97a3f62e3d32e1c964a240",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/CausalContactOperatorCost.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b25fee6-9d37-9477-f9cf-9dff5e725055`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_uniform_bounded_realization_for_scale_family {n : ℕ} (hn : 1 ≤ n)
    (scale : ℝ → ℝ) (positive : ∀ δ : ℝ, 0 < δ → 0 < scale δ)
    {C : ℝ} (nonnegative : 0 ≤ C) :
    ¬ ∀ δ : ℝ, ∀ gap : 0 < δ,
      ∃ map : Lp ℝ 2 (volume : Measure ℝ) →L[ℝ] Lp ℝ 2 (volume : Measure ℝ),
        ‖map‖ ≤ C ∧ map (originalWindowL2 (Real.log (n : ℝ) + δ) n) =
          prescribedSourceL2 (scale δ) (positive δ gap) n := by
  intro uniform
  let δ : ℝ := 1 / (2 * (C + 1))
  have denominator : 0 < 2 * (C + 1) := by positivity
  have gap : 0 < δ := by dsimp [δ]; positivity
  have small : δ ≤ 1 / 2 := by
    dsimp [δ]
    apply (div_le_div_iff₀ denominator (by norm_num : (0 : ℝ) < 2)).mpr
    linarith
  have identity : δ * (2 * (C + 1)) = 1 := by
    dsimp [δ]
    field_simp
  have scaled : C * δ ≤ 1 / 2 := by nlinarith
  have squareBound := (sq_le_sq₀ (mul_nonneg nonnegative gap.le)
    (by norm_num : (0 : ℝ) ≤ 1 / 2)).mpr scaled
  have cubic : C ^ 2 * δ ^ 3 ≤ 1 / 8 := by
    calc
      _ = (C * δ) ^ 2 * δ := by ring
      _ ≤ (1 / 2 : ℝ) ^ 2 * δ := mul_le_mul_of_nonneg_right squareBound gap.le
      _ ≤ (1 / 2 : ℝ) ^ 2 * (1 / 2) :=
        mul_le_mul_of_nonneg_left small (by norm_num)
      _ = 1 / 8 := by norm_num
  obtain ⟨map, normBound, realizes⟩ := uniform δ gap
  have cost := continuous_linear_realization_cubic_cost (positive δ gap) hn
    (by linarith : Real.log (n : ℝ) ≤ Real.log (n : ℝ) + δ) map realizes
  rw [add_sub_cancel_left] at cost
  have normSquare := (sq_le_sq₀ (norm_nonneg _) nonnegative).mpr normBound
  have nPositive : (0 : ℝ) < n := Nat.cast_pos.mpr (lt_of_lt_of_le Nat.zero_lt_one hn)
  have nAtLeastOne : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have oneLe : (1 : ℝ) ≤ 1 / 8 := by
    calc
      1 ≤ ‖map‖ ^ 2 * (δ ^ 3 / (n : ℝ)) := cost
      _ ≤ C ^ 2 * (δ ^ 3 / (n : ℝ)) :=
        mul_le_mul_of_nonneg_right normSquare (div_nonneg (pow_nonneg gap.le _) nPositive.le)
      _ = (C ^ 2 * δ ^ 3) / (n : ℝ) := by ring
      _ ≤ C ^ 2 * δ ^ 3 :=
        div_le_self (mul_nonneg (sq_nonneg C) (pow_nonneg gap.le _)) nAtLeastOne
      _ ≤ 1 / 8 := cubic
  norm_num at oneLe

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/CausalContactOperatorCost.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/CausalContactOperatorCost.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `970397fd684e83af649d2e2dd3efe6a2fcbf9d5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
