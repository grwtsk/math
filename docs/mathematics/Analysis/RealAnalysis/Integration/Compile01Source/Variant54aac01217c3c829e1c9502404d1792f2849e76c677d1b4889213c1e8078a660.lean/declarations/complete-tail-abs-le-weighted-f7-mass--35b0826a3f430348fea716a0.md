# complete_tail_abs_le_weighted_F7_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01758449-6410-e733-f640-4e2c47c4f1ec",
  "kind": "theorem",
  "lexical_name": "complete_tail_abs_le_weighted_F7_mass",
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
  "slug": "complete-tail-abs-le-weighted-f7-mass--35b0826a3f430348fea716a0",
  "source": {
    "blob": "cfa405631c2dc0f24baf79192bbd940532314828",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Compile01Source/Variant54aac01217c3c829e1c9502404d1792f2849e76c677d1b4889213c1e8078a660.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35b0826a3f430348fea716a078855a7aa6d45f542ac44a5f505e568039b6c3f2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Compile01Source/Variant54aac01217c3c829e1c9502404d1792f2849e76c677d1b4889213c1e8078a660.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01758449-6410-e733-f640-4e2c47c4f1ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_tail_abs_le_weighted_F7_mass (A : ℝ) (hA : 40 ≤ A) :
    |completeXiTail A| ≤ physicalWeightBudget A *
      (∫ t in Real.log 7..2 * A, |actualF7 t|) := by
  have hT : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  have hi := actualF7_curvature_intervalIntegrable A hA
  have hg := (actualF7_abs_intervalIntegrable A hA).const_mul (physicalWeightBudget A)
  have hm := intervalIntegral.integral_mono_on hT hi.abs hg
    (fun t _ => by
      rw [abs_mul]
      have hw := physicalCurvatureWeight_abs_le A t (by linarith : (1 : ℝ) ≤ A)
      calc
        _ ≤ |actualF7 t| * physicalWeightBudget A :=
          mul_le_mul_of_nonneg_left hw (abs_nonneg _)
        _ = _ := mul_comm _ _)
  rw [intervalIntegral.integral_const_mul] at hm
  rw [completeXiTail_eq_neg_F7_integral A hA, abs_neg]
  exact (intervalIntegral.abs_integral_le_integral_abs hT).trans hm

/-- A scale-sensitive bound, with the actual linear mean as its sole arithmetic input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Compile01Source/Variant54aac01217c3c829e1c9502404d1792f2849e76c677d1b4889213c1e8078a660.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Compile01Source/Variant54aac01217c3c829e1c9502404d1792f2849e76c677d1b4889213c1e8078a660.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfa405631c2dc0f24baf79192bbd940532314828` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
