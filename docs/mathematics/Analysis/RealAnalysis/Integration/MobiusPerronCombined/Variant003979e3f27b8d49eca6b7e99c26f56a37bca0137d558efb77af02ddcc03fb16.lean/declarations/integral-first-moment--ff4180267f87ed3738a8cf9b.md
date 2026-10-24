# integral_first_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31e6cd13-0546-23f8-e7ea-3c648a242ac3",
  "kind": "theorem",
  "lexical_name": "integral_first_moment",
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
  "slug": "integral-first-moment--ff4180267f87ed3738a8cf9b",
  "source": {
    "blob": "eb9e8c79588b6d6b5878a391564e142feac31fb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 45,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff4180267f87ed3738a8cf9b0d307267bae9ae69ac2bdcfc11dcaec84caf99a3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31e6cd13-0546-23f8-e7ea-3c648a242ac3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_first_moment (w : ℂ) (hw : 0 < w.re) :
    (∫ t : ℝ in Ioi 0, (t : ℂ) * Complex.exp (-w * t)) = 1 / w ^ 2 := by
  have h0 := kernelIntegrand_integrable_Ioi_zero 0 w hw
  have h1 := kernelIntegrand_integrable_Ioi_zero 1 w hw
  have h := integral_Ioi_of_hasDerivAt_of_tendsto' (a := (0 : ℝ))
    (fun t _ => kernelIntegrand_deriv 0 w t)
    ((h0.const_mul _).sub (h1.const_mul _)) (kernelIntegrand_tendsto 1 w hw)
  rw [integral_sub (h0.const_mul _) (h1.const_mul _), integral_const_mul,
    integral_const_mul] at h
  have hw0 : w ≠ 0 := by intro he; simp [he] at hw
  simp only [kernelIntegrand, Nat.zero_add, Nat.cast_one, pow_zero, pow_one,
    one_mul, Complex.ofReal_zero, mul_zero, Complex.exp_zero, zero_sub] at h
  rw [integral_exp_mul_complex_Ioi (a := -w) (by simpa using hw) 0] at h
  simp only [Complex.ofReal_zero, mul_zero, Complex.exp_zero, neg_div_neg_eq] at h
  simp only [zero_mul, neg_zero] at h
  apply (eq_div_iff (pow_ne_zero 2 hw0)).mpr
  calc
    _ = (w * ∫ t : ℝ in Ioi 0, (t : ℂ) * Complex.exp (-w * t)) * w := by ring
    _ = (1 / w) * w := by rw [← sub_eq_zero.mp h]
    _ = 1 := div_mul_cancel₀ 1 hw0

/-- The continuous one-sided ramp with genuine positive exponential damping. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb9e8c79588b6d6b5878a391564e142feac31fb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
