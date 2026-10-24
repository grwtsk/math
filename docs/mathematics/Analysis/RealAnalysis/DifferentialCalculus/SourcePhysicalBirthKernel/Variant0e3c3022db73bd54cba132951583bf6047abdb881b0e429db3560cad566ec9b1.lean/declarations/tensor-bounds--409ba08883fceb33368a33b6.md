# tensor_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3eca472-8cb3-8ab4-fa3f-a0c8899b5e2b",
  "kind": "theorem",
  "lexical_name": "tensor_bounds",
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
  "slug": "tensor-bounds--409ba08883fceb33368a33b6",
  "source": {
    "blob": "08a0c740b629d071c85cf6aec31f10dc50cc3b8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 434,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variant0e3c3022db73bd54cba132951583bf6047abdb881b0e429db3560cad566ec9b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:409ba08883fceb33368a33b65543aa4217ff0686569574e4e7530c7f1a42eec6",
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

Occurrence: `result:e3eca472-8cb3-8ab4-fa3f-a0c8899b5e2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem tensor_bounds {y t : ℝ} (hy : y ∈ Icc 0 1) (ht : t ∈ Icc 0 1) :
    1 ≤ physicalCurvaturePolynomial (t / 91) y ∧
      physicalCurvaturePolynomial (t / 91) y ≤ 24576 := by
  rw [physicalCurvature_eq_tensor]
  constructor
  · rw [← tensorWeight_sum y t]
    apply Finset.sum_le_sum
    intro i hi
    apply Finset.sum_le_sum
    intro j hj
    have hc := (tensorCoeff_bounds i j (Finset.mem_range.mp hi) (Finset.mem_range.mp hj)).1
    have hw := tensorWeight_nonneg i j hy ht
    simpa only [one_mul] using mul_le_mul_of_nonneg_right hc hw
  · calc
      _ ≤ ∑ i ∈ Finset.range 15, ∑ j ∈ Finset.range 9, 24576 * tensorWeight i j y t := by
        apply Finset.sum_le_sum
        intro i hi
        apply Finset.sum_le_sum
        intro j hj
        exact mul_le_mul_of_nonneg_right
          (tensorCoeff_bounds i j (Finset.mem_range.mp hi) (Finset.mem_range.mp hj)).2
          (tensorWeight_nonneg i j hy ht)
      _ = 24576 := by
        simp_rw [← Finset.mul_sum]
        rw [tensorWeight_sum]
        ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variant0e3c3022db73bd54cba132951583bf6047abdb881b0e429db3560cad566ec9b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variant0e3c3022db73bd54cba132951583bf6047abdb881b0e429db3560cad566ec9b1.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08a0c740b629d071c85cf6aec31f10dc50cc3b8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
