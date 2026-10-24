# firstPhysicalBlock_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b721ccb5-d1dd-a952-9dba-e7f1ab7f85f1",
  "kind": "theorem",
  "lexical_name": "firstPhysicalBlock_upper",
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
  "slug": "firstphysicalblock-upper--42d8db49d450cddc8a9bd84e",
  "source": {
    "blob": "1466ed9255cb76417b8d94701a259f187ddc0122",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 281,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant7ce71726fa9bf451ec896cb08be09f92dfd6b56a07c6baaae4773bbbeabee0c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42d8db49d450cddc8a9bd84e952537b17af1e177aa2b5bbcbd8879b23ff64c84",
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

Occurrence: `result:b721ccb5-d1dd-a952-9dba-e7f1ab7f85f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstPhysicalBlock_upper (A : ℝ) (hA : 80 ≤ A)
    (hell : ∀ s ∈ Icc (Real.log 2) (Real.log 4), -(1 / 64 : ℝ) ≤ affineTrend A s) :
    firstPhysicalBlock A ≤ -(1293 / 5120 : ℝ) := by
  have h24 : Real.log 2 ≤ Real.log 4 := log_two_le_three.trans log_three_le_four
  have hF := physical_block_integrable A _ _ (by linarith) h24
  have hG := (block_majorant_integrable _ _ h24).const_mul (3 / 8 : ℝ)
  have hpoint : ∀ s ∈ Ioo (Real.log 2) (Real.log 4),
      kapitzaWeight A s * nonaffineDiscrepancy A s ≤ (3 / 8 : ℝ) * blockMajorant s := by
    intro s hs
    have hs02 : s ∈ Icc (0 : ℝ) 2 := by
      constructor
      · exact log_two_bounds.1.trans hs.1.le
      · have hlog4 := Real.log_four_eq
        linarith [hs.2, log_two_bounds.2]
    have hk := actual_kernel_lower A s hA hs02
    have hz : nonaffineDiscrepancy A s ≤ normalizedPsiError s + 1 / 64 := by
      unfold nonaffineDiscrepancy
      linarith [hell s ⟨hs.1.le, hs.2.le⟩]
    have hzneg : nonaffineDiscrepancy A s ≤ 0 :=
      hz.trans (discrepancy_majorant_neg hs).le
    have hm := mul_le_mul_of_nonpos_right hk hzneg
    have hm2 := mul_le_mul_of_nonneg_left hz (by norm_num : (0 : ℝ) ≤ 3 / 8)
    have hex := mul_le_mul_of_nonneg_left (hm.trans hm2) (Real.exp_pos (s / 2)).le
    simpa only [kapitzaWeight, blockMajorant, mul_assoc, mul_left_comm, mul_comm] using hex
  have hint := intervalIntegral.integral_mono_on_of_le_Ioo h24 hF hG hpoint
  rw [intervalIntegral.integral_const_mul] at hint
  change firstPhysicalBlock A ≤ _ at hint
  have hJ := actual_block_majorant_rational_upper
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant7ce71726fa9bf451ec896cb08be09f92dfd6b56a07c6baaae4773bbbeabee0c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant7ce71726fa9bf451ec896cb08be09f92dfd6b56a07c6baaae4773bbbeabee0c2.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1466ed9255cb76417b8d94701a259f187ddc0122` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
