# actualErrorConvolutionReturn_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:648758ca-2556-725e-4534-04e079091c02",
  "kind": "theorem",
  "lexical_name": "actualErrorConvolutionReturn_intervalIntegrable",
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
  "slug": "actualerrorconvolutionreturn-intervalintegrable--8214f3841e7359d8afa81fdb",
  "source": {
    "blob": "2f00407d0f1594cbd58014c71de82eedbdb19d5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 249,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantbcc79c7df264ee38db16ccf1cd4f59ac1ebe8ab605aaf3a0c69f4166c7dd22b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8214f3841e7359d8afa81fdbd0da3693e08de89335e2d05982f4c270ea949750",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantbcc79c7df264ee38db16ccf1cd4f59ac1ebe8ab605aaf3a0c69f4166c7dd22b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:648758ca-2556-725e-4534-04e079091c02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualErrorConvolutionReturn_intervalIntegrable (lam : ℝ) {A : ℝ} (hA : 91 ≤ A) :
    IntervalIntegrable (fun t => actualMangoldtErrorConvolution lam t *
      actualDampedXiReturnDensity A t) volume (Real.log 7) (2 * A) := by
  have hb : 0 ≤ 2 * A := by linarith
  have ha : 0 ≤ Real.log 7 := Real.log_nonneg (by norm_num)
  have hab : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  have hsub : uIcc (Real.log 7) (2 * A) ⊆ uIcc 0 (2 * A) := by
    rw [uIcc_of_le hab, uIcc_of_le hb]
    exact Icc_subset_Icc ha le_rfl
  have hQ := (actualMangoldtErrorConvolution_absolutelyContinuous lam hb).mono hsub
  exact hQ.continuousOn.intervalIntegrable.mul_continuousOn
    (returnDensity_continuous (by linarith : 0 < A)).continuousOn

/-- The complete actual source convolution head below seven is independently literal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantbcc79c7df264ee38db16ccf1cd4f59ac1ebe8ab605aaf3a0c69f4166c7dd22b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantbcc79c7df264ee38db16ccf1cd4f59ac1ebe8ab605aaf3a0c69f4166c7dd22b4.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f00407d0f1594cbd58014c71de82eedbdb19d5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
