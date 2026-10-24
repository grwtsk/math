# primeHarmonicPrefix_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22c71f17-1d1b-b76f-48ec-39b7caf9a826",
  "kind": "theorem",
  "lexical_name": "primeHarmonicPrefix_abel",
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
  "slug": "primeharmonicprefix-abel--fa131dffe12f88e6c570fa18",
  "source": {
    "blob": "aa7981229d8ebb78bc8e1aa671d16619ae5ad83a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variantfd5d811741b043eebb830008a2995722376d006a881cac4e186c783ec3d68948.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa131dffe12f88e6c570fa1821c29efc050133b3bbb1f432af82ccd3de3a2720",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variantfd5d811741b043eebb830008a2995722376d006a881cac4e186c783ec3d68948.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22c71f17-1d1b-b76f-48ec-39b7caf9a826`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeHarmonicPrefix_abel (u : ℝ) (hu : 0 ≤ u) :
    primeHarmonicPrefix u =
      Chebyshev.theta (Real.exp u) / Real.exp u +
        ∫ t in 1..Real.exp u, Chebyshev.theta t / t ^ 2 := by
  have he : 1 ≤ Real.exp u := Real.one_le_exp_iff.mpr hu
  have hf_diff : ∀ t ∈ Icc (1 : ℝ) (Real.exp u),
      DifferentiableAt ℝ (fun t : ℝ => t⁻¹) t := by
    intro t ht
    exact differentiableAt_id.inv (by linarith [ht.1])
  have hf_int : IntegrableOn (deriv (fun t : ℝ => t⁻¹)) (Icc 1 (Real.exp u)) := by
    rw [deriv_inv']
    apply ContinuousOn.integrableOn_Icc
    intro t ht
    have ht0 : t ≠ 0 := by linarith [ht.1]
    exact (((continuousAt_id.pow 2).inv₀ (pow_ne_zero _ ht0)).neg).continuousWithinAt
  have h := sum_mul_eq_sub_integral_mul₀ primeWeight (by simp [primeWeight])
    (Real.exp u) hf_diff hf_int
  rw [← primeHarmonicPrefix_eq, primeWeight_prefix] at h
  have hI : (∫ t in Ioc 1 (Real.exp u), deriv (fun t : ℝ => t⁻¹) t *
      ∑ n ∈ Finset.Icc 0 ⌊t⌋₊, primeWeight n) =
      -(∫ t in 1..Real.exp u, Chebyshev.theta t / t ^ 2) := by
    rw [intervalIntegral.integral_of_le he, ← integral_neg]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro t _
    dsimp only
    rw [deriv_inv, primeWeight_prefix]
    ring
  rw [h, hI]
  ring

/-- The centered logarithmic theta error is genuinely interval integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variantfd5d811741b043eebb830008a2995722376d006a881cac4e186c783ec3d68948.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variantfd5d811741b043eebb830008a2995722376d006a881cac4e186c783ec3d68948.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa7981229d8ebb78bc8e1aa671d16619ae5ad83a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
