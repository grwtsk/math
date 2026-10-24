# triangleKernel_slice_norm_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d10701e2-98a5-ba4c-1cb8-bfae62a9d535",
  "kind": "theorem",
  "lexical_name": "triangleKernel_slice_norm_integral",
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
  "slug": "trianglekernel-slice-norm-integral--c9f15dcabdb2a30d589c363f",
  "source": {
    "blob": "c4e3bf7f642fe732b345c90686e99411f3c963cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 44,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant8c28d387fce64a4f085f6104b9d260c71d1756600bf06a3439d9995967c51eed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9f15dcabdb2a30d589c363f80d57e97946d0b634487dac8c692b3156cf8c836",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant8c28d387fce64a4f085f6104b9d260c71d1756600bf06a3439d9995967c51eed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d10701e2-98a5-ba4c-1cb8-bfae62a9d535`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem triangleKernel_slice_norm_integral {u : ℝ} (hu : 0 ≤ u) :
    (∫ t : ℝ, ‖triangleKernel (t,u)‖) = u * |psiRelativeError u| := by
  rw [show (∫ t : ℝ, ‖triangleKernel (t,u)‖) =
    ∫ t : ℝ, ‖(Ioo (0:ℝ) u).indicator (fun _ => psiRelativeError u) t‖ from
      congrArg (fun f : ℝ → ℝ => ∫ t : ℝ, ‖f t‖) (triangleKernel_slice u)]
  simp only [norm_indicator_eq_indicator_norm, Real.norm_eq_abs]
  rw [integral_indicator_const _ measurableSet_Ioo, Real.volume_real_Ioo_of_le hu]
  simp only [sub_zero, smul_eq_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant8c28d387fce64a4f085f6104b9d260c71d1756600bf06a3439d9995967c51eed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant8c28d387fce64a4f085f6104b9d260c71d1756600bf06a3439d9995967c51eed.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4e3bf7f642fe732b345c90686e99411f3c963cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
