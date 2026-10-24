# density_half_factored_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3f5c204-3911-1e27-f95b-fc72c0bad8bd",
  "kind": "theorem",
  "lexical_name": "density_half_factored_bound",
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
  "slug": "density-half-factored-bound--88714625c9d4d68b5867636b",
  "source": {
    "blob": "6ae8ef5cf24176a8a9c4f6fa48b4e1e9775f8337",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 96,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/DensityHalfMoment.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88714625c9d4d68b5867636b4395dca04ab81d9b23d18dcb918eb3ee5d67165d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3f5c204-3911-1e27-f95b-fc72c0bad8bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_half_factored_bound (s : Finset ℕ) :
    (∑' n : Nat.factoredNumbers s, densityCorrectionHalf n) ≤
      Real.exp (4 * ∑' n : ℕ, reciprocalThreeHalf n) := by
  rw [(density_half_factored_hasSum s).tsum_eq]
  calc
    _ ≤ ∏ p ∈ s with p.Prime, Real.exp (4 * reciprocalThreeHalf p) := by
      apply Finset.prod_le_prod
      · intro p hp
        have hp1 : (1 : ℝ) < p := by exact_mod_cast (Finset.mem_filter.mp hp).2.one_lt
        have hs1 : 1 < Real.sqrt (p : ℝ) := by
          simpa only [Real.sqrt_one] using
            (Real.sqrt_lt_sqrt_iff (show 0 ≤ (1 : ℝ) by norm_num)).mpr hp1
        exact add_nonneg (by norm_num) (one_div_nonneg.mpr
          (mul_nonneg (by positivity) (by linarith)))
      · intro p hp
        exact (add_le_add (le_refl 1) (density_half_prime_mass_le (Finset.mem_filter.mp hp).2)).trans
          (by simpa only [add_comm] using Real.add_one_le_exp (4 * reciprocalThreeHalf p))
    _ = Real.exp (4 * ∑ p ∈ s with p.Prime, reciprocalThreeHalf p) := by
      rw [← Real.exp_sum, Finset.mul_sum]
    _ ≤ Real.exp (4 * ∑' n : ℕ, reciprocalThreeHalf n) := by
      apply Real.exp_le_exp.mpr
      exact mul_le_mul_of_nonneg_left
        (reciprocal_three_half_summable.sum_le_tsum _ (fun _ _ => by unfold reciprocalThreeHalf; positivity))
        (by norm_num)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/DensityHalfMoment.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ae8ef5cf24176a8a9c4f6fa48b4e1e9775f8337` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
