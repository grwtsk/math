# sourceKernelTerm_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c5564dcec3c4adff94801340a9b6fabcc66f5f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b81c745f97d76f92d7a2f6bbc27c128b004ffd7ad13b325c1623aed012ad0ae8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0e48497-a37b-c7ee-ab36-c2d06ed6de8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f318b65a-48cb-bd52-f3a8-4523e4689733",
  "kind": "theorem",
  "lexical_name": "sourceKernelTerm_hasDerivAt",
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
  "slug": "sourcekernelterm-hasderivat--d7de60fca57f37e3dbec420d",
  "source": {
    "blob": "1c5564dcec3c4adff94801340a9b6fabcc66f5f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusDerivative/Variantb81c745f97d76f92d7a2f6bbc27c128b004ffd7ad13b325c1623aed012ad0ae8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7de60fca57f37e3dbec420d5df5550d59476f4d3190171c27a7cdc99c35a31c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusDerivative/Variantb81c745f97d76f92d7a2f6bbc27c128b004ffd7ad13b325c1623aed012ad0ae8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f318b65a-48cb-bd52-f3a8-4523e4689733`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceKernelTerm_hasDerivAt
    (A x : ℝ) (k : ℕ) (hA : 0 < A) (hx : 0 < x) (hk : 1 ≤ k) :
    HasDerivAt (sourceKernelTerm A k)
      (Real.log (k : ℝ) / (x * Real.sqrt (x * (k : ℝ))) *
        (deriv (sourceCorrelation Realization.explicitSecondDerivative A)
            (Real.log (x * (k : ℝ))) -
          sourceCorrelation Realization.explicitSecondDerivative A
            (Real.log (x * (k : ℝ))) / 2)) x := by
  have hkpos : 0 < (k : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hk)
  have hy : 0 < x * (k : ℝ) := mul_pos hx hkpos
  have hC := CorrelationRegularity.sourceCorrelation_contDiff A hA
  have hF := exponentialTest_contDiff _ hC
  have hdF := ((contDiff_one_iff_deriv.mp hF).1
    (Real.log (x * (k : ℝ)))).hasDerivAt
  rw [exponentialTest_deriv _ hC] at hdF
  have harg := ((hasDerivAt_id x).mul_const (k : ℝ)).log (ne_of_gt hy)
  have hd := (hdF.comp x harg).const_mul (Real.log (k : ℝ))
  have hexp : Real.exp (-Real.log (x * (k : ℝ)) / 2) =
      1 / Real.sqrt (x * (k : ℝ)) := by
    rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hy]
    ring
  dsimp only [id_eq, Function.comp_def] at hd
  rw [hexp] at hd
  have hcoef :
      Real.log (k : ℝ) *
        (1 / Real.sqrt (x * (k : ℝ)) *
          (deriv (sourceCorrelation Realization.explicitSecondDerivative A)
              (Real.log (x * (k : ℝ))) -
            sourceCorrelation Realization.explicitSecondDerivative A
              (Real.log (x * (k : ℝ))) / 2) *
          (1 * (k : ℝ) / (x * (k : ℝ)))) =
      Real.log (k : ℝ) / (x * Real.sqrt (x * (k : ℝ))) *
        (deriv (sourceCorrelation Realization.explicitSecondDerivative A)
            (Real.log (x * (k : ℝ))) -
          sourceCorrelation Realization.explicitSecondDerivative A
            (Real.log (x * (k : ℝ))) / 2) := by
    field_simp [ne_of_gt hx, ne_of_gt hkpos]
  rw [hcoef] at hd
  exact hd

/-- Ordinary derivative of one summand in the exact finite source inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusDerivative/Variantb81c745f97d76f92d7a2f6bbc27c128b004ffd7ad13b325c1623aed012ad0ae8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusDerivative/Variantb81c745f97d76f92d7a2f6bbc27c128b004ffd7ad13b325c1623aed012ad0ae8.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c5564dcec3c4adff94801340a9b6fabcc66f5f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
