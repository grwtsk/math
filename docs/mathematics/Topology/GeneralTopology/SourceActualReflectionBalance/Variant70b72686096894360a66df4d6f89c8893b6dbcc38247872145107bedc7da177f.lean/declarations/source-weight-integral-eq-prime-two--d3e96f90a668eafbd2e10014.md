# source_weight_integral_eq_prime_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:befbd0bd-8d2d-5247-f15f-84a356f9a677",
  "kind": "theorem",
  "lexical_name": "source_weight_integral_eq_prime_two",
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
  "slug": "source-weight-integral-eq-prime-two--d3e96f90a668eafbd2e10014",
  "source": {
    "blob": "6d2cf077a4eee84546740f4b7e92c5da787775e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 127,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualReflectionBalance/Variant70b72686096894360a66df4d6f89c8893b6dbcc38247872145107bedc7da177f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3e96f90a668eafbd2e10014e346cf721cf221aecc0e6764e95bcffa54c23303",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualReflectionBalance/Variant70b72686096894360a66df4d6f89c8893b6dbcc38247872145107bedc7da177f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:befbd0bd-8d2d-5247-f15f-84a356f9a677`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_weight_integral_eq_prime_two (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in lowerEndpoint..2 * A, sourceWeight explicitSecondDerivative A t) =
      primeTwoBoundary explicitSecondDerivative A / 4 := by
  have hp : 0 < A := by linarith
  let g := fun t => Real.exp (-t / 2) * sourceCorrelation explicitSecondDerivative A t
  have hd (t : ℝ) : HasDerivAt g (sourceWeight explicitSecondDerivative A t) t := by
    have hc := ((sourceCorrelation_contDiff A hp).differentiable (by norm_num) t).hasDerivAt
    have he := (((hasDerivAt_id t).neg).div_const 2).exp
    convert! he.mul hc using 1
    simp only [sourceWeight, Pi.neg_apply, id_eq]
    ring
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    ((source_weight_continuous A hA).intervalIntegrable _ _)]
  simp only [g, sourceCorrelation_upper_endpoint A hp, mul_zero, zero_sub]
  have he : Real.exp (-lowerEndpoint / 2) = (Real.sqrt 2)⁻¹ := by
    rw [neg_div, Real.exp_neg, Real.exp_half, lowerEndpoint,
      Real.exp_log (by norm_num)]
  rw [he]
  have hs : (Real.sqrt (2 : ℝ)) ^ 2 = 2 := Real.sq_sqrt (by norm_num)
  have hn : Real.sqrt (2 : ℝ) ≠ 0 := ne_of_gt (Real.sqrt_pos.2 (by norm_num))
  unfold primeTwoBoundary
  field_simp
  rw [hs]
  ring

/-- This is the original arithmetic pairing with the fixed endpoint correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualReflectionBalance/Variant70b72686096894360a66df4d6f89c8893b6dbcc38247872145107bedc7da177f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualReflectionBalance/Variant70b72686096894360a66df4d6f89c8893b6dbcc38247872145107bedc7da177f.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d2cf077a4eee84546740f4b7e92c5da787775e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
