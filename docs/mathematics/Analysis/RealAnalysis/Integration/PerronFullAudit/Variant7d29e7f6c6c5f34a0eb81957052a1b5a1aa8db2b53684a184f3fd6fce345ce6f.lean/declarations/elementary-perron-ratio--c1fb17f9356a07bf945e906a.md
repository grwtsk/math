# elementary_perron_ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e79bea4-08c2-52f9-f213-e3ab478cb4d2",
  "kind": "theorem",
  "lexical_name": "elementary_perron_ratio",
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
  "slug": "elementary-perron-ratio--c1fb17f9356a07bf945e906a",
  "source": {
    "blob": "db4c7f7e03284dfaeb049cfac1228ba236e60e9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 201,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1fb17f9356a07bf945e906aaf8db896316895739972a99898ee7b3988de93ef",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e79bea4-08c2-52f9-f213-e3ab478cb4d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem elementary_perron_ratio (c x y : ℝ) (hc : 0 < c) (hx : 0 < x) (hy : 0 < y) :
    (1 / (2 * Real.pi) : ℝ) • (∫ t : ℝ, perronIntegrand c (x / y) t) =
      if y < x then ((Real.log (x / y) : ℝ) : ℂ) else 0 := by
  rw [elementary_perron_kernel c (x / y) hc (div_pos hx hy)]
  by_cases hxy : y < x
  · rw [if_pos hxy, max_eq_left]
    exact (Real.log_pos ((lt_div_iff₀ hy).mpr (by simpa using hxy))).le
  · rw [if_neg hxy, max_eq_right]
    · simp
    · exact Real.log_nonpos (div_nonneg hx.le hy.le)
        ((div_le_one hy).mpr (le_of_not_gt hxy))

end
end SmoothedPerronKernelScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @SmoothedPerronKernelScratch.kernelIntegrand_integrable_Ioi_zero
#print SmoothedPerronKernelScratch.kernelIntegrand_integrable_Ioi_zero
#print axioms SmoothedPerronKernelScratch.kernelIntegrand_integrable_Ioi_zero
#check @SmoothedPerronKernelScratch.integral_first_moment
#print SmoothedPerronKernelScratch.integral_first_moment
#print axioms SmoothedPerronKernelScratch.integral_first_moment
#check @SmoothedPerronKernelScratch.dampedRamp
#print SmoothedPerronKernelScratch.dampedRamp
#print axioms SmoothedPerronKernelScratch.dampedRamp
#check @SmoothedPerronKernelScratch.dampedRamp_continuous
#print SmoothedPerronKernelScratch.dampedRamp_continuous
#print axioms SmoothedPerronKernelScratch.dampedRamp_continuous
#check @SmoothedPerronKernelScratch.dampedRamp_eq_indicator
#print SmoothedPerronKernelScratch.dampedRamp_eq_indicator
#print axioms SmoothedPerronKernelScratch.dampedRamp_eq_indicator
#check @SmoothedPerronKernelScratch.dampedRamp_integrable
#print SmoothedPerronKernelScratch.dampedRamp_integrable
#print axioms SmoothedPerronKernelScratch.dampedRamp_integrable
#check @SmoothedPerronKernelScratch.dampedRamp_fourier
#print SmoothedPerronKernelScratch.dampedRamp_fourier
#print axioms SmoothedPerronKernelScratch.dampedRamp_fourier
#check @SmoothedPerronKernelScratch.reciprocal_square_integrable
#print SmoothedPerronKernelScratch.reciprocal_square_integrable
#print axioms SmoothedPerronKernelScratch.reciprocal_square_integrable
#check @SmoothedPerronKernelScratch.dampedRamp_fourier_integrable
#print SmoothedPerronKernelScratch.dampedRamp_fourier_integrable
#print axioms SmoothedPerronKernelScratch.dampedRamp_fourier_integrable
#check @SmoothedPerronKernelScratch.perronIntegrand
#print SmoothedPerronKernelScratch.perronIntegrand
#print axioms SmoothedPerronKernelScratch.perronIntegrand
#check @SmoothedPerronKernelScratch.perronIntegrand_integrable
#print SmoothedPerronKernelScratch.perronIntegrand_integrable
#print axioms SmoothedPerronKernelScratch.perronIntegrand_integrable
#check @SmoothedPerronKernelScratch.vertical_ramp_inversion
#print SmoothedPerronKernelScratch.vertical_ramp_inversion
#print axioms SmoothedPerronKernelScratch.vertical_ramp_inversion
#check @SmoothedPerronKernelScratch.elementary_perron_kernel
#print SmoothedPerronKernelScratch.elementary_perron_kernel
#print axioms SmoothedPerronKernelScratch.elementary_perron_kernel
#check @SmoothedPerronKernelScratch.elementary_perron_endpoint
#print SmoothedPerronKernelScratch.elementary_perron_endpoint
#print axioms SmoothedPerronKernelScratch.elementary_perron_endpoint
#check @SmoothedPerronKernelScratch.elementary_perron_ratio
#print SmoothedPerronKernelScratch.elementary_perron_ratio
#print axioms SmoothedPerronKernelScratch.elementary_perron_ratio
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db4c7f7e03284dfaeb049cfac1228ba236e60e9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
