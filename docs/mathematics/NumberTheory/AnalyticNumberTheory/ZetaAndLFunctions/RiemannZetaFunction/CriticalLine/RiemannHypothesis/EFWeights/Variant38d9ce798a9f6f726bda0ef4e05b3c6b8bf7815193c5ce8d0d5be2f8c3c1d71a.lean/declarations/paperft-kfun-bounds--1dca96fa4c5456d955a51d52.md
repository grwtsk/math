# paperFT_kfun_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46fda057-bc68-0b3b-c291-b7b0589f7d6f",
  "kind": "theorem",
  "lexical_name": "paperFT_kfun_bounds",
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
  "slug": "paperft-kfun-bounds--1dca96fa4c5456d955a51d52",
  "source": {
    "blob": "989e3cba3f152f630a41de9f9ad775f9ec0a9611",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 132,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFWeights/Variant38d9ce798a9f6f726bda0ef4e05b3c6b8bf7815193c5ce8d0d5be2f8c3c1d71a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1dca96fa4c5456d955a51d52363f83938a23f467271d64ae9d48220c0067b324",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFWeights/Variant38d9ce798a9f6f726bda0ef4e05b3c6b8bf7815193c5ce8d0d5be2f8c3c1d71a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46fda057-bc68-0b3b-c291-b7b0589f7d6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paperFT_kfun_bounds {Pf : ℝ → Params} (hPf : FamilyHyps Pf) :
    ∃ C T₁ : ℝ, 0 ≤ C ∧ ∀ T : ℝ, T₁ ≤ T → ∀ (k l : ℤ) (z : ℂ), |z.im| ≤ 3/4 →
      ‖paperFT (kfun (Pf T) T k l) z‖
          ≤ C * (Pf T).X T ^ (3/4 : ℝ) * (Pf T).L T ^ 2 *
            (cauchyK ((Pf T).tau T k) z.re * cauchyK ((Pf T).tau T l) z.re) ∧
      (|z.re - (Pf T).tau T k| + |z.re - (Pf T).tau T l|) * ‖paperFT (kfun (Pf T) T k l) z‖
          ≤ C * (Pf T).X T ^ (3/4 : ℝ) * (Pf T).L T *
            (cauchyK ((Pf T).tau T k) z.re * cauchyK ((Pf T).tau T l) z.re) := by
  obtain ⟨C, T₁, hC1, hW⟩ := hPf.windowAt
  have hC : 0 ≤ C := le_trans zero_le_one hC1
  refine ⟨4 * (1 + C) ^ 2, T₁, by positivity, fun T hT k l z hz => ?_⟩
  have w := hW T hT
  rw [w.paperFT_kfun k l z]
  obtain ⟨h1, h2⟩ := pair_bounds_le w z hz ((Pf T).tau T k) ((Pf T).tau T l)
  have hKK : 0 ≤ (Pf T).X T ^ (3/4 : ℝ) * (Pf T).L T ^ 2 *
      (cauchyK ((Pf T).tau T k) z.re * cauchyK ((Pf T).tau T l) z.re) := by
    have := cauchyK_nonneg ((Pf T).tau T k) z.re
    have := cauchyK_nonneg ((Pf T).tau T l) z.re
    have : 0 ≤ (Pf T).X T ^ (3/4 : ℝ) := Real.rpow_nonneg (Real.exp_pos _).le _
    positivity
  have hKK1 : 0 ≤ (Pf T).X T ^ (3/4 : ℝ) * (Pf T).L T *
      (cauchyK ((Pf T).tau T k) z.re * cauchyK ((Pf T).tau T l) z.re) := by
    have := cauchyK_nonneg ((Pf T).tau T k) z.re
    have := cauchyK_nonneg ((Pf T).tau T l) z.re
    have : 0 ≤ (Pf T).X T ^ (3/4 : ℝ) := Real.rpow_nonneg (Real.exp_pos _).le _
    have : 0 ≤ (Pf T).L T := le_trans zero_le_one w.one_le_L
    positivity
  have hc1 : (1 + C) ^ 2 ≤ 4 * (1 + C) ^ 2 := by nlinarith [sq_nonneg (1 + C)]
  have hc2 : 4 * C * (1 + C) ≤ 4 * (1 + C) ^ 2 := by nlinarith
  constructor
  · calc ‖(Pf T).phiHat T (z - (Pf T).tau T k) * (Pf T).phiHat T (z - (Pf T).tau T l)‖
        ≤ (1 + C) ^ 2 * ((Pf T).X T ^ (3/4 : ℝ) * (Pf T).L T ^ 2 *
            (cauchyK ((Pf T).tau T k) z.re * cauchyK ((Pf T).tau T l) z.re)) := by
          simpa only [cauchyK, mul_assoc] using h1
      _ ≤ 4 * (1 + C) ^ 2 * ((Pf T).X T ^ (3/4 : ℝ) * (Pf T).L T ^ 2 *
            (cauchyK ((Pf T).tau T k) z.re * cauchyK ((Pf T).tau T l) z.re)) :=
          mul_le_mul_of_nonneg_right hc1 hKK
      _ = _ := by ring
  · calc (|z.re - (Pf T).tau T k| + |z.re - (Pf T).tau T l|) *
          ‖(Pf T).phiHat T (z - (Pf T).tau T k) * (Pf T).phiHat T (z - (Pf T).tau T l)‖
        ≤ 4 * C * (1 + C) * ((Pf T).X T ^ (3/4 : ℝ) * (Pf T).L T *
            (cauchyK ((Pf T).tau T k) z.re * cauchyK ((Pf T).tau T l) z.re)) := by
          simpa only [cauchyK, mul_assoc] using h2
      _ ≤ 4 * (1 + C) ^ 2 * ((Pf T).X T ^ (3/4 : ℝ) * (Pf T).L T *
            (cauchyK ((Pf T).tau T k) z.re * cauchyK ((Pf T).tau T l) z.re)) :=
          mul_le_mul_of_nonneg_right hc2 hKK1
      _ = _ := by ring

/-- ĥ for the mirrored pair test function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFWeights/Variant38d9ce798a9f6f726bda0ef4e05b3c6b8bf7815193c5ce8d0d5be2f8c3c1d71a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFWeights/Variant38d9ce798a9f6f726bda0ef4e05b3c6b8bf7815193c5ce8d0d5be2f8c3c1d71a.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `989e3cba3f152f630a41de9f9ad775f9ec0a9611` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
