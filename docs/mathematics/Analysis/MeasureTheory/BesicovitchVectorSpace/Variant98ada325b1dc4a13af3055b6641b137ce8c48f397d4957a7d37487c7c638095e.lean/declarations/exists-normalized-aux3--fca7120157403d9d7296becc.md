# exists_normalized_aux3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d87d340-16f8-3429-7a4c-b0958d2cb946",
  "kind": "theorem",
  "lexical_name": "exists_normalized_aux3",
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
  "slug": "exists-normalized-aux3--fca7120157403d9d7296becc",
  "source": {
    "blob": "6a0f147cc081eff8b87d2df967d8e6b76be8b601",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 403,
    "path": "GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant98ada325b1dc4a13af3055b6641b137ce8c48f397d4957a7d37487c7c638095e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fca7120157403d9d7296becc1042a5d6eb5435153705a45ac3da73e1aeeb17c4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant98ada325b1dc4a13af3055b6641b137ce8c48f397d4957a7d37487c7c638095e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d87d340-16f8-3429-7a4c-b0958d2cb946`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_normalized_aux3 {N : ℕ} {τ : ℝ} (a : SatelliteConfig E N τ)
    (lastc : a.c (last N) = 0) (lastr : a.r (last N) = 1) (hτ : 1 ≤ τ) (δ : ℝ) (hδ1 : τ ≤ 1 + δ / 4)
    (i j : Fin N.succ) (inej : i ≠ j) (hi : 2 < ‖a.c i‖) (hij : ‖a.c i‖ ≤ ‖a.c j‖) :
    1 - δ ≤ ‖(2 / ‖a.c i‖) • a.c i - (2 / ‖a.c j‖) • a.c j‖ := by
  have ah :
      Pairwise fun i j => a.r i ≤ ‖a.c i - a.c j‖ ∧ a.r j ≤ τ * a.r i ∨
        a.r j ≤ ‖a.c j - a.c i‖ ∧ a.r i ≤ τ * a.r j := by
    simpa only [dist_eq_norm] using a.h
  have δnonneg : 0 ≤ δ := by linarith only [hτ, hδ1]
  have hcrj : ‖a.c j‖ ≤ a.r j + 1 := by simpa only [lastc, lastr, dist_zero_right] using a.inter' j
  have A : a.r i ≤ ‖a.c i‖ := by
    have : i < last N := by
      apply lt_top_iff_ne_top.2
      intro iN
      change i = last N at iN
      rw [iN, lastc, norm_zero] at hi
      exact lt_irrefl _ (zero_le_two.trans_lt hi)
    convert! (a.hlast i this).1 using 1
    rw [dist_eq_norm, lastc, sub_zero]
  have hj : 2 < ‖a.c j‖ := hi.trans_le hij
  set s := ‖a.c i‖
  have spos : 0 < s := zero_lt_two.trans hi
  set d := (s / ‖a.c j‖) • a.c j with hd
  have I : ‖a.c j - a.c i‖ ≤ ‖a.c j‖ - s + ‖d - a.c i‖ :=
    calc
      ‖a.c j - a.c i‖ ≤ ‖a.c j - d‖ + ‖d - a.c i‖ := by simp [← dist_eq_norm, dist_triangle]
      _ = ‖a.c j‖ - ‖a.c i‖ + ‖d - a.c i‖ := by
        nth_rw 1 [← one_smul ℝ (a.c j)]
        rw [add_left_inj, hd, ← sub_smul, norm_smul, Real.norm_eq_abs, abs_of_nonneg, sub_mul,
          one_mul, div_mul_cancel₀ _ (zero_le_two.trans_lt hj).ne']
        rwa [sub_nonneg, div_le_iff₀ (zero_lt_two.trans hj), one_mul]
  have J : a.r j - ‖a.c j - a.c i‖ ≤ s / 2 * δ :=
    calc
      a.r j - ‖a.c j - a.c i‖ ≤ s * (τ - 1) := by
        rcases ah inej.symm with (H | H)
        · calc
            a.r j - ‖a.c j - a.c i‖ ≤ 0 := sub_nonpos.2 H.1
            _ ≤ s * (τ - 1) := mul_nonneg spos.le (sub_nonneg.2 hτ)
        · rw [norm_sub_rev] at H
          calc
            a.r j - ‖a.c j - a.c i‖ ≤ τ * a.r i - a.r i := sub_le_sub H.2 H.1
            _ = a.r i * (τ - 1) := by ring
            _ ≤ s * (τ - 1) := by gcongr
      _ ≤ s * (δ / 2) := by gcongr; linarith only [δnonneg, hδ1]
      _ = s / 2 * δ := by ring
  have invs_nonneg : 0 ≤ 2 / s := div_nonneg zero_le_two (zero_le_two.trans hi.le)
  calc
    1 - δ = 2 / s * (s / 2 - s / 2 * δ) := by field
    _ ≤ 2 / s * ‖d - a.c i‖ := by
      gcongr; linarith only [hcrj, I, J, hi]
    _ = ‖(2 / s) • a.c i - (2 / ‖a.c j‖) • a.c j‖ := by
      conv_lhs => rw [norm_sub_rev, ← abs_of_nonneg invs_nonneg]
      rw [← Real.norm_eq_abs, ← norm_smul, smul_sub, hd, smul_smul]
      congr 3
      field

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant98ada325b1dc4a13af3055b6641b137ce8c48f397d4957a7d37487c7c638095e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant98ada325b1dc4a13af3055b6641b137ce8c48f397d4957a7d37487c7c638095e.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a0f147cc081eff8b87d2df967d8e6b76be8b601` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
