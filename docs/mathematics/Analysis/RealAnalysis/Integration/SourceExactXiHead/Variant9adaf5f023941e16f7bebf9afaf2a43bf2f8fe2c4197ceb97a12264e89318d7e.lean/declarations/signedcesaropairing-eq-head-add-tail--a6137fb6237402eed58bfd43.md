# signedCesaroPairing_eq_head_add_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9388c7b8-180c-d317-5968-4becf51a6ecd",
  "kind": "theorem",
  "lexical_name": "signedCesaroPairing_eq_head_add_tail",
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
  "slug": "signedcesaropairing-eq-head-add-tail--a6137fb6237402eed58bfd43",
  "source": {
    "blob": "94353a802ad09e2907645432083d26c03406ef41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 157,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant9adaf5f023941e16f7bebf9afaf2a43bf2f8fe2c4197ceb97a12264e89318d7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6137fb6237402eed58bfd43b85e5a2af85b1b9fb717db2515cc16ffb3eae32f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant9adaf5f023941e16f7bebf9afaf2a43bf2f8fe2c4197ceb97a12264e89318d7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9388c7b8-180c-d317-5968-4becf51a6ecd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedCesaroPairing_eq_head_add_tail (A : ℝ) (hA : 91 ≤ A) :
    signedCesaroPairing A = actualXiHead A + completeXiTail A := by
  have hA40 : 40 ≤ A := by linarith
  have hX : 7 ≤ Real.exp (2 * A) := by
    have hl : Real.log (7 : ℝ) ≤ 2 * A := by
      linarith [RH16InvariantBoundary.log_seven_lt_two]
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using Real.exp_le_exp.mpr hl
  have hwhole := actual_transformed_whole_intervalIntegrable A hA40
  have htail : IntervalIntegrable (actualTransformedXiBlockDensity A) volume 7 (Real.exp (2 * A)) := by
    apply hwhole.mono_set
    rw [uIcc_of_le hX, uIcc_of_le (show (2 : ℝ) ≤ Real.exp (2 * A) by linarith)]
    exact Icc_subset_Icc (by norm_num) le_rfl
  have he := signedCesaroPairing_eq_explicit_shiftedXi A (by linarith : 1 ≤ A)
  change signedCesaroPairing A = ∫ y in 2..Real.exp (2 * A), actualTransformedXiBlockDensity A y at he
  rw [he]
  unfold actualXiHead completeXiTail
  exact (intervalIntegral.integral_add_adjacent_intervals (actual_head_intervalIntegrable A hA) htail).symm

end RH16ExactXiHead
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant9adaf5f023941e16f7bebf9afaf2a43bf2f8fe2c4197ceb97a12264e89318d7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant9adaf5f023941e16f7bebf9afaf2a43bf2f8fe2c4197ceb97a12264e89318d7e.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94353a802ad09e2907645432083d26c03406ef41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
