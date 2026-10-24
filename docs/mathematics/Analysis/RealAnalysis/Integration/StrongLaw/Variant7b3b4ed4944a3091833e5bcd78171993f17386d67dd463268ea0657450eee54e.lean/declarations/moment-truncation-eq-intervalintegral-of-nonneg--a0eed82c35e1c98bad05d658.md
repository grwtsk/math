# moment_truncation_eq_intervalIntegral_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19f7de01-0212-5dfd-c187-9a269e1824c1",
  "kind": "theorem",
  "lexical_name": "moment_truncation_eq_intervalIntegral_of_nonneg",
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
  "slug": "moment-truncation-eq-intervalintegral-of-nonneg--a0eed82c35e1c98bad05d658",
  "source": {
    "blob": "bbf3a64c371d7e3f4c818827c1555abf63483c3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 157,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0eed82c35e1c98bad05d658883d4795433ebf8e3baa2754ad968be212845171",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19f7de01-0212-5dfd-c187-9a269e1824c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem moment_truncation_eq_intervalIntegral_of_nonneg (hf : AEStronglyMeasurable f μ) {A : ℝ}
    {n : ℕ} (hn : n ≠ 0) (h'f : 0 ≤ f) :
    ∫ x, truncation f A x ^ n ∂μ = ∫ y in (0)..A, y ^ n ∂Measure.map f μ := by
  have M : MeasurableSet (Set.Ioc 0 A) := measurableSet_Ioc
  have M' : MeasurableSet (Set.Ioc A 0) := measurableSet_Ioc
  rw [truncation_eq_of_nonneg h'f]
  change ∫ x, (fun z => indicator (Set.Ioc 0 A) id z ^ n) (f x) ∂μ = _
  rcases le_or_lt 0 A with (hA | hA)
  · rw [← integral_map (f := fun z => _ ^ n) hf.aemeasurable, intervalIntegral.integral_of_le hA,
      ← integral_indicator M]
    · simp only [indicator, zero_pow' _ hn, id.def, ite_pow]
    · exact ((measurable_id.indicator M).pow_const n).aestronglyMeasurable
  · rw [← integral_map (f := fun z => _ ^ n) hf.aemeasurable, intervalIntegral.integral_of_ge hA.le,
      ← integral_indicator M']
    · simp only [Set.Ioc_eq_empty_of_le hA.le, zero_pow' _ hn, Set.indicator_empty, integral_zero,
        zero_eq_neg]
      apply integral_eq_zero_of_ae
      have : ∀ᵐ x ∂Measure.map f μ, (0 : ℝ) ≤ x :=
        (ae_map_iff hf.aemeasurable measurableSet_Ici).2 (eventually_of_forall h'f)
      filter_upwards [this] with x hx
      simp only [indicator, Set.mem_Ioc, Pi.zero_apply, ite_eq_right_iff, and_imp]
      intro _ h''x
      have : x = 0 := by linarith
      simp [this, zero_pow' _ hn]
    · exact ((measurable_id.indicator M).pow_const n).aestronglyMeasurable
#align probability_theory.moment_truncation_eq_interval_integral_of_nonneg ProbabilityTheory.moment_truncation_eq_intervalIntegral_of_nonneg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbf3a64c371d7e3f4c818827c1555abf63483c3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
