# mertensResidual_eq_survivingOuterSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b43515a1-675c-4240-0324-8042464ec73f",
  "kind": "theorem",
  "lexical_name": "mertensResidual_eq_survivingOuterSum",
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
  "slug": "mertensresidual-eq-survivingoutersum--f611e83df1f186a99d016f14",
  "source": {
    "blob": "e38e898afcec5eec5db290010e4745739b4e97df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 103,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceOuterHalfScalarCutoffAndLinkedRowCancellation/Variant0c0562bb74c02314cf1aa818c64a0f502401fa79c941a3553b5ec0be41883c35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f611e83df1f186a99d016f14689b7a63bc81be175b8c860e5a16b3df45281ddd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceOuterHalfScalarCutoffAndLinkedRowCancellation/Variant0c0562bb74c02314cf1aa818c64a0f502401fa79c941a3553b5ec0be41883c35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b43515a1-675c-4240-0324-8042464ec73f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_eq_survivingOuterSum (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A =
      ∑ d ∈ (Finset.Icc 1 (sourceKernelCutoff A)).filter
        (fun d : ℕ => (d : ℝ) < Real.exp (2 * A) / 2),
        realMoebius d * sourceMobiusKernel A d := by
  rw [mertensResidual_eq_full_mobius_sum A hA]
  symm
  apply Finset.sum_subset (Finset.filter_subset _ _)
  intro d hd hdnot
  have hnot : ¬ (d : ℝ) < Real.exp (2 * A) / 2 := by
    intro hlt
    exact hdnot (Finset.mem_filter.mpr ⟨hd, hlt⟩)
  rw [sourceMobiusKernel_sharp_upper_zero hA (le_of_not_gt hnot), mul_zero]

/-- Complete continuous-plus-Euler reconstruction keeps the actual signs of all surviving rows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceOuterHalfScalarCutoffAndLinkedRowCancellation/Variant0c0562bb74c02314cf1aa818c64a0f502401fa79c941a3553b5ec0be41883c35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceOuterHalfScalarCutoffAndLinkedRowCancellation/Variant0c0562bb74c02314cf1aa818c64a0f502401fa79c941a3553b5ec0be41883c35.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e38e898afcec5eec5db290010e4745739b4e97df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
