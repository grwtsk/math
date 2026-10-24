# source_hyperbola_integral_eq_rows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d3021f74f32433d21f4bd0b5526556bb0580cc2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9a334548-6410-bd82-fefc-b24ee1170a7c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22ed0184-df9f-b634-1ab8-8d894c55538d",
  "kind": "theorem",
  "lexical_name": "source_hyperbola_integral_eq_rows",
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
  "slug": "source-hyperbola-integral-eq-rows--a121c7a8b9f7f73e674b41bc",
  "source": {
    "blob": "7d3021f74f32433d21f4bd0b5526556bb0580cc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a121c7a8b9f7f73e674b41bc9f740be40aff172175c009e914f1959fcfc5d7d5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22ed0184-df9f-b634-1ab8-8d894c55538d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_hyperbola_integral_eq_rows (A : ℝ) (hA : 1 ≤ A) :
    (∫ x in 1..Real.exp (2 * A), upperHyperbola ⌊Real.exp A⌋₊ x *
      deriv (SourceSampling.sourceSamplingKernel A) x) =
      -∑ i ∈ Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊,
        ∑ j ∈ Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊,
          (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) *
            SourceSampling.sourceSamplingKernel A ((i * max i j : ℕ) : ℝ) := by
  classical
  let H : Finset ℕ := Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊
  let W (i j : ℕ) : ℝ :=
    (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ)
  let f (i j : ℕ) (x : ℝ) : ℝ := W i j *
    (if ((i * max i j : ℕ) : ℝ) ≤ x then
      deriv (SourceSampling.sourceSamplingKernel A) x else 0)
  have hint (i j : ℕ) : IntervalIntegrable (f i j) volume 1 (Real.exp (2 * A)) :=
    source_weighted_tail_intervalIntegrable A _ _ hA
  have hsum (i : ℕ) : IntervalIntegrable
      (fun x ↦ ∑ j ∈ H, f i j x) volume 1 (Real.exp (2 * A)) := by
    have he : (∑ j ∈ H, f i j) = (fun x ↦ ∑ j ∈ H, f i j x) := by
      funext x
      exact Finset.sum_apply x H (f i)
    rw [← he]
    exact IntervalIntegrable.sum H (fun j _ ↦ hint i j)
  have hpoint (x : ℝ) : upperHyperbola ⌊Real.exp A⌋₊ x *
      deriv (SourceSampling.sourceSamplingKernel A) x = ∑ i ∈ H, ∑ j ∈ H, f i j x := by
    rw [upperHyperbola_eq_threshold_sum]
    simp only [sum_mul]
    apply sum_congr rfl
    intro i _
    apply sum_congr rfl
    intro j _
    dsimp only [f, W]
    split_ifs <;> simp
  have hval (i : ℕ) (hi : i ∈ H) (j : ℕ) (hj : j ∈ H) :
      (∫ x in 1..Real.exp (2 * A), f i j x) =
        -(W i j * SourceSampling.sourceSamplingKernel A ((i * max i j : ℕ) : ℝ)) := by
    dsimp only [f]
    rw [intervalIntegral.integral_const_mul,
      source_closed_tail_integral A _ hA (upper_threshold_mem_source_interval A i j hi hj)]
    ring
  calc
    _ = ∫ x in 1..Real.exp (2 * A), ∑ i ∈ H, ∑ j ∈ H, f i j x := by
      apply intervalIntegral.integral_congr_ae
      filter_upwards [] with x _
      exact hpoint x
    _ = ∑ i ∈ H, ∑ j ∈ H, ∫ x in 1..Real.exp (2 * A), f i j x := by
      rw [intervalIntegral.integral_finsetSum (fun i _ ↦ hsum i)]
      apply sum_congr rfl
      intro i _
      exact intervalIntegral.integral_finsetSum (fun j _ ↦ hint i j)
    _ = ∑ i ∈ H, ∑ j ∈ H,
        -(W i j * SourceSampling.sourceSamplingKernel A ((i * max i j : ℕ) : ℝ)) := by
      apply sum_congr rfl
      intro i hi
      apply sum_congr rfl
      intro j hj
      exact hval i hi j hj
    _ = _ := by simp only [sum_neg_distrib, H, W]

/-- The complete weighted row retains its diagonal partial sum and every strictly upper column. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d3021f74f32433d21f4bd0b5526556bb0580cc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
