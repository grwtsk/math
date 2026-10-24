# centered_weight_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ad3da0c-d516-c4d2-aad4-0dac4200e126",
  "kind": "theorem",
  "lexical_name": "centered_weight_integral",
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
  "slug": "centered-weight-integral--654a1a0e85416bb322fe6e96",
  "source": {
    "blob": "b3fcfdefad44f5a7fbb4868e9bb2125b0a894bfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 60,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantca5da545bf1d92a18930e94dbd74cd150c40b376d0e2450c2df7c9eff423d1bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:654a1a0e85416bb322fe6e964b5944b5fc34e27bbc95c37038c854f423a636a2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantca5da545bf1d92a18930e94dbd74cd150c40b376d0e2450c2df7c9eff423d1bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ad3da0c-d516-c4d2-aad4-0dac4200e126`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem centered_weight_integral {z : ℂ} (hz : 1 / 2 < z.re) (α b : ℝ) :
    (∫ t : ℝ in Ioi 0,
      ((actualMangoldtRieszPrimitive t - α * t - b : ℝ) : ℂ) *
        Complex.exp (-z * (t : ℂ))) =
      actualMangoldtRieszLaplace z - (α : ℂ) / z^2 - (b : ℂ) / z := by
  have ht := time_weight_integrable (by linarith : 0 < z.re)
  have he := integrableOn_exp_mul_complex_Ioi (a := -z) (by simp; linarith) 0
  have hsplit1 := integral_sub ((actualMangoldtRieszLaplace_integrable hz).sub
    (ht.const_mul (α : ℂ))) (he.const_mul (b : ℂ))
  have hsplit2 := integral_sub (actualMangoldtRieszLaplace_integrable hz)
    (ht.const_mul (α : ℂ))
  simp only [Pi.sub_apply] at hsplit1 hsplit2
  simp_rw [centered_weight_eq]
  rw [hsplit1, hsplit2, integral_const_mul, integral_const_mul,
    time_weight_integral (by linarith : 0 < z.re),
    integral_exp_mul_complex_Ioi (by simp; linarith)]
  simp only [Complex.ofReal_zero, mul_zero, Complex.exp_zero, neg_div, div_neg, neg_neg]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantca5da545bf1d92a18930e94dbd74cd150c40b376d0e2450c2df7c9eff423d1bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantca5da545bf1d92a18930e94dbd74cd150c40b376d0e2450c2df7c9eff423d1bb.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3fcfdefad44f5a7fbb4868e9bb2125b0a894bfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
