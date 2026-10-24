# rationalKernel_eq_laplace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa375ac6-a06f-2b03-f4cf-68f3ff53d57a",
  "kind": "theorem",
  "lexical_name": "rationalKernel_eq_laplace",
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
  "slug": "rationalkernel-eq-laplace--a623c5c34e77e6d99e774de6",
  "source": {
    "blob": "71d6b6048c0db5ddb6c5c4729a1278c20f82719a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 65,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variantd2a1c07b21eaf3a898459f734f5b25c00cf5a394f4bb239e8f768a59f2772e6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a623c5c34e77e6d99e774de6ef154e856781b79cfdf57b10f9e7edd137bcdfce",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variantd2a1c07b21eaf3a898459f734f5b25c00cf5a394f4bb239e8f768a59f2772e6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa375ac6-a06f-2b03-f4cf-68f3ff53d57a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rationalKernel_eq_laplace (t : ℝ) :
    (1 : ℂ) / (1 + Complex.I * (t : ℂ)) =
      ∫ u : ℝ in Ioi 0, (Real.exp (-u) : ℂ) *
        Complex.exp (-Complex.I * (t : ℂ) * (u : ℂ)) := by
  have hfun : (fun u : ℝ ↦ (Real.exp (-u) : ℂ) *
      Complex.exp (-Complex.I * (t : ℂ) * (u : ℂ))) =
      (fun u : ℝ ↦ Complex.exp ((-1 - Complex.I * (t : ℂ)) * (u : ℂ))) := by
    funext u
    rw [Complex.ofReal_exp, ← Complex.exp_add]
    congr 1
    push_cast
    ring
  rw [hfun, integral_exp_mul_complex_Ioi (by simp) 0]
  simp only [Complex.ofReal_zero, mul_zero, Complex.exp_zero]
  field_simp
  rw [show -1 - Complex.I * (t : ℂ) = -(1 + Complex.I * (t : ℂ)) by ring,
    div_neg, neg_neg]

/-- Genuine product integrability permits the actual rational-kernel Fubini swap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variantd2a1c07b21eaf3a898459f734f5b25c00cf5a394f4bb239e8f768a59f2772e6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variantd2a1c07b21eaf3a898459f734f5b25c00cf5a394f4bb239e8f768a59f2772e6b.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71d6b6048c0db5ddb6c5c4729a1278c20f82719a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
