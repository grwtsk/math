# biasKernel_total

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c607651e-82ff-be45-e511-a7ead1705e33",
  "kind": "theorem",
  "lexical_name": "biasKernel_total",
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
  "slug": "biaskernel-total--90b5340a5a7e4634ce2b7ebc",
  "source": {
    "blob": "f71b13e2ca85b0c2d763b34715664eb73d14c81d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 164,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant2db368c1e54bda9ba5cf72b9dc93c4e9070b2e04b8b70acf0ed087fee76278ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90b5340a5a7e4634ce2b7ebcf7461088db3d98bb784383ce466af93c76a3dfd7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant2db368c1e54bda9ba5cf72b9dc93c4e9070b2e04b8b70acf0ed087fee76278ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c607651e-82ff-be45-e511-a7ead1705e33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem biasKernel_total {A : ℝ} (hA : 1 ≤ A) :
    (∫ x in 1..Real.exp (2*A), biasKernel A x) = 1/2 := by
  have hp : 0 < A := by linarith
  have he : 1 ≤ Real.exp (2*A) := Real.one_le_exp_iff.mpr (by linarith)
  have hs : uIcc 1 (Real.exp (2*A)) ⊆ Ioi 0 := by
    rw [uIcc_of_le he]
    intro x hx
    exact lt_of_lt_of_le zero_lt_one hx.1
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x hx => biasKernel_primitive_hasDerivAt hp (hs hx))
    ((biasKernel_continuousOn hp).mono hs).intervalIntegrable]
  rw [Real.log_exp, Real.log_one]
  unfold biasPrimitive
  rw [sourceCorrelation_deriv_zero_of_two_mul_le A (2*A) hp le_rfl,
    sourceCorrelation_upper_endpoint A hp, correlation_deriv_zero hA,
    actual_correlation_at_zero A hA]
  norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant2db368c1e54bda9ba5cf72b9dc93c4e9070b2e04b8b70acf0ed087fee76278ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant2db368c1e54bda9ba5cf72b9dc93c4e9070b2e04b8b70acf0ed087fee76278ed.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f71b13e2ca85b0c2d763b34715664eb73d14c81d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
