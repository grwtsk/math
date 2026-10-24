# plainOff_one_eq_rows_sub_residual_add_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11686245-2417-e284-dda4-5c980586c15c",
  "kind": "theorem",
  "lexical_name": "plainOff_one_eq_rows_sub_residual_add_diagonal",
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
  "slug": "plainoff-one-eq-rows-sub-residual-add-diagonal--25aeba581b0efbc0f82137cc",
  "source": {
    "blob": "6d58330dc2b70bf58f0b4fa32b0e9417cb4596b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 140,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D684e2b89207264c0ee40e1c212c4bb3b85241c1dc7ae43d6e9b42321f2a861aSourceWholePlain/Variant3f39afdc4cb7d61c281549e2dea2d8c70d6dd2e783189dc4f7c92fa0681a71ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25aeba581b0efbc0f82137cc5c386cac08e95348d1706096604cc6ff0ead63ae",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D684e2b89207264c0ee40e1c212c4bb3b85241c1dc7ae43d6e9b42321f2a861aSourceWholePlain/Variant3f39afdc4cb7d61c281549e2dea2d8c70d6dd2e783189dc4f7c92fa0681a71ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11686245-2417-e284-dda4-5c980586c15c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem plainOff_one_eq_rows_sub_residual_add_diagonal (A : ℝ) (hA : 1 ≤ A) :
    plainOffAt A 1 (sourceKernelCutoff A) =
      completeMangoldtPlainRows A - mertensResidual A + cutoffOneDiagonal A := by
  classical
  let S := Finset.Ioc 1 (sourceKernelCutoff A)
  have hN : 1 ≤ sourceKernelCutoff A :=
    (vaughanCutoff_pos A hA).trans (vaughanCutoff_le_sourceKernelCutoff A hA)
  have hI : Finset.Icc 1 (sourceKernelCutoff A) = insert 1 S := by
    ext m
    simp only [S, Finset.mem_Icc, Finset.mem_insert, Finset.mem_Ioc]
    omega
  have hn : 1 ∉ S := by simp [S]
  have hs : (∑ m ∈ S, vonMangoldt m * sourcePlainWeight A m) = mertensResidual A := by
    rw [mertensResidual_eq_plainWeight_sum A hA, hI, Finset.sum_insert hn]
    simp only [vonMangoldt_apply_one, zero_mul, zero_add]
  have hfull :
      rectangle (Finset.Icc 1 (sourceKernelCutoff A)) (sourceKernel A) (fun _ ↦ 1) =
        completeMangoldtPlainRows A := by
    simp only [rectangle, sourceKernel, completeMangoldtPlainRows, sourcePlainKernel,
      mul_one, Nat.cast_mul, Finset.mul_sum]
  have hrow : rowBoundary S (sourceKernel A) (fun _ ↦ 1) 1 = 0 := by
    simp [rowBoundary, sourceKernel]
  have hcol : columnBoundary S (sourceKernel A) (fun _ ↦ 1) 1 = mertensResidual A := by
    simpa only [columnBoundary, sourceKernel, Nat.mul_one, mul_one] using hs
  have hcorner : sourceKernel A 1 1 * (1 : ℝ) = 0 := by simp [sourceKernel]
  have hr : completeMangoldtPlainRows A =
      rectangle S (sourceKernel A) (fun _ ↦ 1) + mertensResidual A := by
    rw [← hfull, hI, rectangle_insert S (sourceKernel A) (fun _ ↦ 1) 1 hn,
      hrow, hcol, hcorner]
    ring
  have hd := cutoffOneDiagonal_eq_neg_plainDiagonal A
  change rectangle S (sourceKernel A) (fun _ ↦ 1) -
      diagonal S (sourceKernel A) (fun _ ↦ 1) = _
  change cutoffOneDiagonal A = -diagonal S (sourceKernel A) (fun _ ↦ 1) at hd
  linarith

/-- The bounded complete log row still restores the literal residual and deleted diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D684e2b89207264c0ee40e1c212c4bb3b85241c1dc7ae43d6e9b42321f2a861aSourceWholePlain/Variant3f39afdc4cb7d61c281549e2dea2d8c70d6dd2e783189dc4f7c92fa0681a71ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D684e2b89207264c0ee40e1c212c4bb3b85241c1dc7ae43d6e9b42321f2a861aSourceWholePlain/Variant3f39afdc4cb7d61c281549e2dea2d8c70d6dd2e783189dc4f7c92fa0681a71ce.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d58330dc2b70bf58f0b4fa32b0e9417cb4596b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
