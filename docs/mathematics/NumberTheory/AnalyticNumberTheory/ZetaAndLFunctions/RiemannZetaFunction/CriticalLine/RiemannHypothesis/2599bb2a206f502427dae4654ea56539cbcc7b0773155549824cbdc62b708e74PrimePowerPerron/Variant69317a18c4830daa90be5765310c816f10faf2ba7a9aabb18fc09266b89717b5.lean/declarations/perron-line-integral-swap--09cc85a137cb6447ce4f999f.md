# perron_line_integral_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a562598-4d41-5b10-e08d-2b37646769f8",
  "kind": "theorem",
  "lexical_name": "perron_line_integral_swap",
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
  "slug": "perron-line-integral-swap--09cc85a137cb6447ce4f999f",
  "source": {
    "blob": "f516da3b600b546897afdb60b8e32f199d01406d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 488,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2599bb2a206f502427dae4654ea56539cbcc7b0773155549824cbdc62b708e74PrimePowerPerron/Variant69317a18c4830daa90be5765310c816f10faf2ba7a9aabb18fc09266b89717b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09cc85a137cb6447ce4f999fc36763e1bf0f8588b903e6fd3fe4d35756a7e36b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2599bb2a206f502427dae4654ea56539cbcc7b0773155549824cbdc62b708e74PrimePowerPerron/Variant69317a18c4830daa90be5765310c816f10faf2ba7a9aabb18fc09266b89717b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a562598-4d41-5b10-e08d-2b37646769f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 488–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem perron_line_integral_swap (φ : ℝ → ℂ) (hφ : Integrable φ)
    {c : ℝ} (hc1 : 1 < c) :
    ∫ t : ℝ, (∑' n : ℕ, φ t *
      LSeries.term (fun n ↦ (ArithmeticFunction.vonMangoldt n : ℂ))
        ((c : ℂ) + (t : ℂ) * Complex.I) n) =
          ∑' n : ℕ, ∫ t : ℝ, φ t *
            LSeries.term (fun n ↦ (ArithmeticFunction.vonMangoldt n : ℂ))
              ((c : ℂ) + (t : ℂ) * Complex.I) n := by
  have hpfi := hφ
  have hre : ∀ t : ℝ, ((c:ℂ) + t * I).re = c := by
    intro t
    simp
  have hnorm : ∀ (n : ℕ) (t : ℝ), ‖LSeries.term (fun n => (Λ n : ℂ)) ((c:ℂ) + t * I) n‖
      = if n = 0 then (0:ℝ) else (Λ n : ℝ) * ((n:ℝ) ^ (-c)) := by
    intro n t
    rw [LSeries.norm_term_eq, hre, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg, Real.rpow_neg (Nat.cast_nonneg n),
      div_eq_mul_inv]
  have hcont : ∀ n : ℕ, Continuous (fun t : ℝ =>
      LSeries.term (fun n => (Λ n : ℂ)) ((c:ℂ) + t * I) n) := by
    intro n
    rcases eq_or_ne n 0 with rfl | hn
    · simpa [LSeries.term_zero] using continuous_const
    · simp only [LSeries.term_of_ne_zero hn]
      refine continuous_const.div ?_ (fun t => ?_)
      · refine Continuous.const_cpow (by fun_prop) (Or.inl ?_)
        exact_mod_cast hn
      · exact cpow_ne_zero_iff.mpr (Or.inl (by exact_mod_cast hn))
  have hint : ∀ n : ℕ, Integrable (fun t : ℝ => φ t
      * LSeries.term (fun n => (Λ n : ℂ)) ((c:ℂ) + t * I) n) := by
    intro n
    refine hpfi.mul_bdd (c := if n = 0 then (0:ℝ) else (Λ n : ℝ) * ((n:ℝ) ^ (-c)))
      (hcont n).aestronglyMeasurable ?_
    filter_upwards with t
    rw [hnorm n t]
  have heval : ∀ n : ℕ, (∫ t : ℝ, ‖φ t
      * LSeries.term (fun n => (Λ n : ℂ)) ((c:ℂ) + t * I) n‖)
      = (∫ t : ℝ, ‖φ t‖)
        * (if n = 0 then (0:ℝ) else (Λ n : ℝ) * ((n:ℝ) ^ (-c))) := by
    intro n
    rw [← integral_mul_const]
    refine integral_congr_ae (Filter.Eventually.of_forall fun t => ?_)
    simp only
    rw [norm_mul, hnorm n t]
  have hcn : Summable (fun n : ℕ => if n = 0 then (0:ℝ) else (Λ n : ℝ) * ((n:ℝ) ^ (-c))) := by
    have hs : LSeriesSummable (fun n => (Λ n : ℂ)) (c : ℂ) :=
      ArithmeticFunction.LSeriesSummable_vonMangoldt (by simpa using hc1)
    have hns : Summable (fun n : ℕ => ‖LSeries.term (fun n => (Λ n : ℂ)) (c : ℂ) n‖) :=
      summable_norm_iff.mpr hs
    refine hns.congr fun n => ?_
    simpa using hnorm n 0
  have hsum : Summable (fun n : ℕ => ∫ t : ℝ, ‖φ t
      * LSeries.term (fun n => (Λ n : ℂ)) ((c:ℂ) + t * I) n‖) := by
    refine ((hcn.mul_left (∫ t : ℝ, ‖φ t‖)).congr fun n => ?_)
    rw [heval n]
  exact (MeasureTheory.hasSum_integral_of_summable_integral_norm hint hsum).tsum_eq.symm


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2599bb2a206f502427dae4654ea56539cbcc7b0773155549824cbdc62b708e74PrimePowerPerron/Variant69317a18c4830daa90be5765310c816f10faf2ba7a9aabb18fc09266b89717b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2599bb2a206f502427dae4654ea56539cbcc7b0773155549824cbdc62b708e74PrimePowerPerron/Variant69317a18c4830daa90be5765310c816f10faf2ba7a9aabb18fc09266b89717b5.lean#L488).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f516da3b600b546897afdb60b8e32f199d01406d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
