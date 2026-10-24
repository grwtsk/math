# halfTest_contDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39fe9464-db29-da1c-1271-dff9662e019d",
  "kind": "theorem",
  "lexical_name": "halfTest_contDiff",
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
  "slug": "halftest-contdiff--a6a728e94c98fef073409eb4",
  "source": {
    "blob": "2f00407d0f1594cbd58014c71de82eedbdb19d5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 139,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantbcc79c7df264ee38db16ccf1cd4f59ac1ebe8ab605aaf3a0c69f4166c7dd22b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6a728e94c98fef073409eb40dabd445f5553719304472856bc34cd35732218b",
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

Occurrence: `result:39fe9464-db29-da1c-1271-dff9662e019d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem halfTest_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (actualHalfConvolutionReturnTest A) := by
  have hc := actual_correlation_contDiff_four A hA
  have hB : Continuous (actualHalfConvolutionReturnTest A) := by
    unfold actualHalfConvolutionReturnTest
    exact (by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).mul
      ((hc.continuous_iteratedDeriv 2 (by norm_num)).sub (hc.continuous.div_const 4))
  apply contDiff_one_iff_deriv.mpr
  refine ⟨fun t => (actualHalfConvolutionReturnTest_hasDerivAt hA t).differentiableAt, ?_⟩
  rw [show deriv (actualHalfConvolutionReturnTest A) = fun t =>
      (1 / 2 : ℝ) * actualHalfConvolutionReturnTest A t + actualDampedXiReturnDensity A t from
    funext (fun t => (actualHalfConvolutionReturnTest_hasDerivAt hA t).deriv)]
  exact (hB.const_mul _).add (returnDensity_continuous hA)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantbcc79c7df264ee38db16ccf1cd4f59ac1ebe8ab605aaf3a0c69f4166c7dd22b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantbcc79c7df264ee38db16ccf1cd4f59ac1ebe8ab605aaf3a0c69f4166c7dd22b4.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f00407d0f1594cbd58014c71de82eedbdb19d5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
