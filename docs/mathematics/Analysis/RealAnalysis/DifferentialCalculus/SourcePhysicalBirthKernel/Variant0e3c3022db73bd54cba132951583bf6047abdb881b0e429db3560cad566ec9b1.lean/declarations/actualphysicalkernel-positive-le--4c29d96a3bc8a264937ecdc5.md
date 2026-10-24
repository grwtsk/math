# actualPhysicalKernel_positive_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:962a014f-02de-4154-44ca-0e159d177704",
  "kind": "theorem",
  "lexical_name": "actualPhysicalKernel_positive_le",
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
  "slug": "actualphysicalkernel-positive-le--4c29d96a3bc8a264937ecdc5",
  "source": {
    "blob": "08a0c740b629d071c85cf6aec31f10dc50cc3b8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 473,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variant0e3c3022db73bd54cba132951583bf6047abdb881b0e429db3560cad566ec9b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c29d96a3bc8a264937ecdc59a1c263068fbfcca6bdb0f085dee089a23cdb0ca",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variant0e3c3022db73bd54cba132951583bf6047abdb881b0e429db3560cad566ec9b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:962a014f-02de-4154-44ca-0e159d177704`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPhysicalKernel_positive_le {A y : ℝ} (hA : 91 ≤ A)
    (hy0 : 0 < y) (hy1 : y ≤ 1) :
    0 < actualPhysicalKernel A y ∧ actualPhysicalKernel A y ≤ 656370 * y ^ 3 := by
  have hAp : 0 < A := by linarith
  have hZp : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
  have hZ : (4096 / 109395 : ℝ) ≤ sourceNormalization A := by
    have h2 : 0 ≤ (131072 / 45045 : ℝ) / (2 * A ^ 2) := by positivity
    have h4 : 0 ≤ (196608 / 5005 : ℝ) / A ^ 4 := by positivity
    unfold sourceNormalization
    norm_num at *
    linarith
  have hR := actual_curvature_polynomial_bounds hA hy0.le hy1
  rw [actualPhysicalKernel_eq_polynomial hAp hy0.le (by linarith)]
  constructor
  · have hp : 0 < physicalCurvaturePolynomial (1 / A) y := by linarith [hR.1]
    positivity
  · have he : Real.exp (-y / 2) ≤ 1 := Real.exp_le_one_iff.mpr (by linarith)
    have hm : Real.exp (-y / 2) * y ^ 3 * physicalCurvaturePolynomial (1 / A) y ≤
        24576 * y ^ 3 := by
      have hh := mul_le_mul he hR.2 (by linarith [hR.1]) (by norm_num : (0 : ℝ) ≤ 1)
      have hx := mul_le_mul_of_nonneg_right hh (by positivity : 0 ≤ y ^ 3)
      nlinarith
    calc
      _ ≤ 24576 * y ^ 3 / sourceNormalization A :=
        div_le_div_of_nonneg_right hm hZp.le
      _ ≤ 24576 * y ^ 3 / (4096 / 109395 : ℝ) :=
        div_le_div_of_nonneg_left (by positivity) (by norm_num) hZ
      _ = 656370 * y ^ 3 := by ring

end RH16PhysicalBirthKernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variant0e3c3022db73bd54cba132951583bf6047abdb881b0e429db3560cad566ec9b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variant0e3c3022db73bd54cba132951583bf6047abdb881b0e429db3560cad566ec9b1.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08a0c740b629d071c85cf6aec31f10dc50cc3b8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
