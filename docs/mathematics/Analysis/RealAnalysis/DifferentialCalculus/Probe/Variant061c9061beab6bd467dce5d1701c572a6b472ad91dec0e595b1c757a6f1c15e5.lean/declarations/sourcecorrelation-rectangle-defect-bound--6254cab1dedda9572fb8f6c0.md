# sourceCorrelation_rectangle_defect_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2638af610b7e417a7d6018320db2ca7abf5bb1fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/061c9061beab6bd467dce5d1701c572a6b472ad91dec0e595b1c757a6f1c15e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e970eb6-5f1d-634b-8179-ade4eb49917d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11778dd2-8c8a-6bed-4de9-6f153831321e",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_rectangle_defect_bound",
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
  "slug": "sourcecorrelation-rectangle-defect-bound--6254cab1dedda9572fb8f6c0",
  "source": {
    "blob": "2638af610b7e417a7d6018320db2ca7abf5bb1fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 131,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Probe/Variant061c9061beab6bd467dce5d1701c572a6b472ad91dec0e595b1c757a6f1c15e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6254cab1dedda9572fb8f6c00c9b37980723f84c9c9f49aa8ae625a0344d46e7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Probe/Variant061c9061beab6bd467dce5d1701c572a6b472ad91dec0e595b1c757a6f1c15e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11778dd2-8c8a-6bed-4de9-6f153831321e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_rectangle_defect_bound {A : ℝ} (hA : 200 ≤ A)
    (t u v : ℝ) :
    |sourceCorrelation explicitSecondDerivative A (t + u + v) -
      sourceCorrelation explicitSecondDerivative A (t + u) -
      sourceCorrelation explicitSecondDerivative A (t + v) +
      sourceCorrelation explicitSecondDerivative A t| ≤ 5 / A ^ 2 * |u| * |v| := by
  have hp : 0 < A := by linarith
  let f : ℝ → ℝ := fun x ↦ sourceCorrelation explicitSecondDerivative A (t + u + x) -
    sourceCorrelation explicitSecondDerivative A (t + x)
  have hd := (sourceCorrelation_contDiff A hp).differentiable (by norm_num)
  have hf (x : ℝ) : HasDerivAt f
      (deriv (sourceCorrelation explicitSecondDerivative A) (t + u + x) -
        deriv (sourceCorrelation explicitSecondDerivative A) (t + x)) x := by
    have h1 := (hd (t + u + x)).hasDerivAt.comp x ((hasDerivAt_id x).const_add (t + u))
    have h2 := (hd (t + x)).hasDerivAt.comp x ((hasDerivAt_id x).const_add t)
    convert h1.sub h2 using 1 <;> first | rfl | ring
  have h := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Set.univ) (f := f) (fun x _ ↦ (hf x).differentiableAt)
    (C := 5 / A ^ 2 * |u|)
    (fun x _ ↦ by
      rw [Real.norm_eq_abs, (hf x).deriv]
      simpa only [add_assoc, add_comm, add_left_comm] using
        sourceCorrelation_deriv_increment_bound_five hA (t + x) u)
    convex_univ (mem_univ 0) (mem_univ v)
  have heq : sourceCorrelation explicitSecondDerivative A (t + u + v) -
      sourceCorrelation explicitSecondDerivative A (t + u) -
      sourceCorrelation explicitSecondDerivative A (t + v) +
      sourceCorrelation explicitSecondDerivative A t = f v - f 0 := by
    simp only [f, add_zero]
    ring
  rw [heq]
  simpa only [Real.norm_eq_abs, sub_zero] using h

end FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureFive
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Probe/Variant061c9061beab6bd467dce5d1701c572a6b472ad91dec0e595b1c757a6f1c15e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Probe/Variant061c9061beab6bd467dce5d1701c572a6b472ad91dec0e595b1c757a6f1c15e5.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2638af610b7e417a7d6018320db2ca7abf5bb1fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
