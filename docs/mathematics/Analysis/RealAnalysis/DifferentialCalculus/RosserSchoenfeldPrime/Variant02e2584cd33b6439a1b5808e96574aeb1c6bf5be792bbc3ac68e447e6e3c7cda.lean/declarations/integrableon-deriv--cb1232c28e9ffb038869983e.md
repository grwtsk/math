# integrableOn_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e73e970e4c41cfd99a78e1ae11ba7171d276a84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 679,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:092d5db9-aa05-44a0-35db-c1db0353692b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:821c47a9-be7b-c892-08ba-961845fe3d56",
  "kind": "theorem",
  "lexical_name": "integrableOn_deriv",
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
  "slug": "integrableon-deriv--cb1232c28e9ffb038869983e",
  "source": {
    "blob": "3e73e970e4c41cfd99a78e1ae11ba7171d276a84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 712,
    "line": 679,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb1232c28e9ffb038869983e3707ebce7a06d53db2137725b6138d43bee77b4b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:821c47a9-be7b-c892-08ba-961845fe3d56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 679–712.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_deriv {f : ℝ → ℝ} (hf : DifferentiableOn ℝ f (Set.Ici 2)) {C : ℝ}
    (hC : ∀ x ∈ Set.Ici 2, |f x| ≤ C / x ∧ |deriv f x| ≤ C / x ^ 2) :
    IntegrableOn (fun y ↦ (θ y - y) * deriv (fun t ↦ f t / log t) y) (Set.Ioi 2) volume
    ∧ ∀ x ≥ 2, IntervalIntegrable (fun t ↦ deriv (fun s ↦ f s / Real.log s) t) volume 2 x := by
  obtain ⟨A, hA⟩ := pnt
  refine ⟨Integrable.mono' (g := fun t => (A * C) * (1 / (t * log t ^ 3) + 1 / (t * log t ^ 4)))
    ?_ ?_ ?_, fun x hx => ?_⟩
  · refine ((ioiIntegrable_inv_log_pow ?_ ?_).add (ioiIntegrable_inv_log_pow ?_ ?_)).const_mul
      (A * C) <;> linarith
  · exact (theta_mono.measurable.aestronglyMeasurable.sub (by fun_prop)).mul
      (aestronglyMeasurable_deriv _ _)
  · filter_upwards [bound_deriv hf hC, ae_restrict_mem measurableSet_Ioi] with a ha ho
    calc
    _ = |(θ a - a)| * ‖deriv (fun t ↦ f t / log t) a‖ := by simp
    _ ≤ A * a / log a ^ 2 * (C * (1 / (a ^ 2 * log a) + 1 / (a ^ 2 * log a ^ 2))) := by
      gcongr
      · exact div_nonneg (mul_nonneg hA.1 (by grind)) (pow_nonneg (log_nonneg (by grind)) 2)
      · exact hA.2 a (Set.mem_Ioi.1 ho).le
    _ = _ := by field_simp
  · refine (intervalIntegrable_iff_integrableOn_Ioc_of_le hx).2 (Integrable.mono'
      (Integrable.const_mul (Integrable.add ?_ ?_) C) (aestronglyMeasurable_deriv _ _)
      (ae_restrict_of_ae_restrict_of_subset Set.Ioc_subset_Ioi_self (bound_deriv hf hC)))
    · simpa using intervalIntegrable_inv_log_pow 2 1 (by linarith : 1 < (2 : ℝ)) x
    · simpa using intervalIntegrable_inv_log_pow 2 2 (by linarith : 1 < (2 : ℝ)) x

@[blueprint
  "rs-415"
  (title := "RS equation (4.15)")
  (statement := /--
  $$\sum_{p \leq x} f(p) = \int_2^x \frac{f(y)\ dy}{\log y} + L_f $$
  $$ + \frac{f(x) (\vartheta(x) - x)}{\log x} + \int_x^\infty (\vartheta(y) - y) \frac{d}{dy}( \frac{f(y)}{\log y} )\ dy.$$ -/)
  (proof := /-- Follows from Sublemma \ref{rs-414} and Definition \ref{rs-416}. -/)
  (latexEnv := "sublemma")
  (discussion := 601)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean#L679).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e73e970e4c41cfd99a78e1ae11ba7171d276a84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
