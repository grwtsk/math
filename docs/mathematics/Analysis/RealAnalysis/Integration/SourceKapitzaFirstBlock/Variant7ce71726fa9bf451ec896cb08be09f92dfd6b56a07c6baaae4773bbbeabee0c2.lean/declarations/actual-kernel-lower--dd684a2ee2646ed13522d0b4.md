# actual_kernel_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c2af4e9-bf38-877d-4a18-d12166196162",
  "kind": "theorem",
  "lexical_name": "actual_kernel_lower",
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
  "slug": "actual-kernel-lower--dd684a2ee2646ed13522d0b4",
  "source": {
    "blob": "1466ed9255cb76417b8d94701a259f187ddc0122",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 49,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant7ce71726fa9bf451ec896cb08be09f92dfd6b56a07c6baaae4773bbbeabee0c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd684a2ee2646ed13522d0b42ce706ea7b2ae282cd457674432016f28da7f595",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant7ce71726fa9bf451ec896cb08be09f92dfd6b56a07c6baaae4773bbbeabee0c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c2af4e9-bf38-877d-4a18-d12166196162`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_kernel_lower (A s : ℝ) (hA : 80 ≤ A) (hs : s ∈ Icc 0 2) :
    (3 / 8 : ℝ) ≤ kapitzaKernel A s := by
  have hA1 : 1 ≤ A := by linarith
  have hpos : 0 < A := by linarith
  have hc := sourceCorrelation_contDiff A hpos
  have hD := hc.differentiable (by norm_num)
  have hmv := norm_image_sub_le_of_norm_deriv_le_segment'
    (f := sourceCorrelation explicitSecondDerivative A)
    (f' := deriv (sourceCorrelation explicitSecondDerivative A))
    (a := (0 : ℝ)) (b := s) (C := 5 / A)
    (fun x _ => (hD x).hasDerivAt.hasDerivWithinAt)
    (fun x _ => by simpa only [Real.norm_eq_abs] using
      SourceCorrelationEnergy.sourceCorrelation_deriv_abs_le_five_div hA1 x)
    s ⟨hs.1, le_rfl⟩
  rw [actual_correlation_at_zero A hA1, Real.norm_eq_abs, sub_zero] at hmv
  have hclow := (abs_le.mp hmv).1
  have hdlow := (abs_le.mp
    (SourceCorrelationEnergy.sourceCorrelation_deriv_abs_le_five_div hA1 s)).2
  have hratio : (5 : ℝ) / A ≤ 1 / 16 := (div_le_iff₀ hpos).mpr (by linarith)
  have hmul : 5 / A * s ≤ 1 / 8 := by
    have hn : 0 ≤ (5 : ℝ) / A := by positivity
    calc
      5 / A * s ≤ 5 / A * 2 := mul_le_mul_of_nonneg_left hs.2 hn
      _ ≤ 1 / 8 := by linarith
  unfold kapitzaKernel
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant7ce71726fa9bf451ec896cb08be09f92dfd6b56a07c6baaae4773bbbeabee0c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant7ce71726fa9bf451ec896cb08be09f92dfd6b56a07c6baaae4773bbbeabee0c2.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1466ed9255cb76417b8d94701a259f187ddc0122` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
