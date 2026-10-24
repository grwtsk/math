# perron_line_integral_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6bf6d60-3189-ba40-e10a-736efe45bd74",
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
  "slug": "perron-line-integral-swap--0c3bf52190086f6a2da2f246",
  "source": {
    "blob": "c9bc39a09c98479ee5189965ddd77a914a1ef502",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 501,
    "path": "GRWTSK/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant2144586cf608775f0afc69142afff56c652e5fe5b83ccc78ab9bcd4368bf2707.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c3bf52190086f6a2da2f24681c8fa1f7d172c7e94f6e35a47b387f18366d6f8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant2144586cf608775f0afc69142afff56c652e5fe5b83ccc78ab9bcd4368bf2707.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6bf6d60-3189-ba40-e10a-736efe45bd74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 501–558.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant2144586cf608775f0afc69142afff56c652e5fe5b83ccc78ab9bcd4368bf2707.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant2144586cf608775f0afc69142afff56c652e5fe5b83ccc78ab9bcd4368bf2707.lean#L501).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9bc39a09c98479ee5189965ddd77a914a1ef502` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
