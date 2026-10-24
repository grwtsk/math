# complete_tail_abs_le_exact_weighted_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ed99313-84ef-ca8b-a35b-2d40322cc20e",
  "kind": "theorem",
  "lexical_name": "complete_tail_abs_le_exact_weighted_mass",
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
  "slug": "complete-tail-abs-le-exact-weighted-mass--6bee48523ad2011f66cfc502",
  "source": {
    "blob": "a818391a40882e1455cedd8fe4a4e8bf57397666",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 68,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant3c3d3525bc9a0f746ad04dfae51fedc3661cd3f377b76273cfebc2e6663daa0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bee48523ad2011f66cfc50270d8d3486ea2404557da16b93dd1bf1807e92a7b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant3c3d3525bc9a0f746ad04dfae51fedc3661cd3f377b76273cfebc2e6663daa0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ed99313-84ef-ca8b-a35b-2d40322cc20e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_tail_abs_le_exact_weighted_mass (Q A : ℝ) (hQ : 1 ≤ Q)
    (hQA : Q ≤ A) (hA : 40 ≤ A) :
    |completeXiTail A| ≤ exactWeightBudget Q A *
      (∫ t in Real.log 7..2 * A, |actualF7 t|) := by
  have hT : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  have hi := actualF7_curvature_intervalIntegrable A hA
  have hg := (actualF7_abs_intervalIntegrable A hA).const_mul (exactWeightBudget Q A)
  have hm := intervalIntegral.integral_mono_on hT hi.abs hg (fun t _ => by
    rw [abs_mul]
    have hw := physicalCurvatureWeight_abs_le_exact Q A t hQ hQA
    calc
      _ ≤ |actualF7 t| * exactWeightBudget Q A :=
        mul_le_mul_of_nonneg_left hw (abs_nonneg _)
      _ = _ := mul_comm _ _)
  rw [intervalIntegral.integral_const_mul] at hm
  rw [completeXiTail_eq_neg_F7_integral A hA, abs_neg]
  exact (intervalIntegral.abs_integral_le_integral_abs hT).trans hm

/-- The supplied mean begins at R; the sharper estimate begins at max(91,R). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant3c3d3525bc9a0f746ad04dfae51fedc3661cd3f377b76273cfebc2e6663daa0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant3c3d3525bc9a0f746ad04dfae51fedc3661cd3f377b76273cfebc2e6663daa0f.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a818391a40882e1455cedd8fe4a4e8bf57397666` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
