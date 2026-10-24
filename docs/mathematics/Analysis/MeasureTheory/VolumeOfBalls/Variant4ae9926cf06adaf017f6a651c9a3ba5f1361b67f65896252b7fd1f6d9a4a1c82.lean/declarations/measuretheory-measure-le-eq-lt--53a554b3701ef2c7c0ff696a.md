# MeasureTheory.measure_le_eq_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a493c3415795ad564128f94e8f4f8f6686df773a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4ae9926cf06adaf017f6a651c9a3ba5f1361b67f65896252b7fd1f6d9a4a1c82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb3ae6fe-3dcc-068c-aa37-bddecbb8d9eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5a008f3-d64d-da4d-f54a-805582b9a95f",
  "kind": "theorem",
  "lexical_name": "MeasureTheory.measure_le_eq_lt",
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
  "slug": "measuretheory-measure-le-eq-lt--53a554b3701ef2c7c0ff696a",
  "source": {
    "blob": "a493c3415795ad564128f94e8f4f8f6686df773a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 113,
    "path": "GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variant4ae9926cf06adaf017f6a651c9a3ba5f1361b67f65896252b7fd1f6d9a4a1c82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53a554b3701ef2c7c0ff696a37680536ff14ee9019bd9178a8454a9f18517e0d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/VolumeOfBalls/Variant4ae9926cf06adaf017f6a651c9a3ba5f1361b67f65896252b7fd1f6d9a4a1c82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5a008f3-d64d-da4d-f54a-805582b9a95f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeasureTheory.measure_le_eq_lt [Nontrivial E] (r : ℝ) :
    μ {x : E | g x ≤ r} = μ {x : E | g x < r} := by
  -- We copy `E` to a new type `F` on which we will put the norm defined by `g`
  let F : Type _ := E
  let p : AddGroupNorm F := ⟨⟨g, h1, h3, h2⟩, fun x hx ↦ h4 hx⟩
  let : NormedAddCommGroup F := AddGroupNorm.toNormedAddCommGroup p
  let : NormedSpace ℝ F := { norm_smul_le := fun _ _ ↦ h5 _ _ }
  -- We put the new topology on F
  let : TopologicalSpace F := UniformSpace.toTopologicalSpace
  let : MeasurableSpace F := borel F
  have : BorelSpace F := { measurable_eq := rfl }
  -- The map between `E` and `F` as a continuous linear equivalence
  let φ := @LinearEquiv.toContinuousLinearEquiv ℝ _ E _ _ tE _ _ F _ _ _ _ _ _ _ _ _
    (LinearEquiv.refl ℝ E : E ≃ₗ[ℝ] F)
  -- The measure `ν` is the measure on `F` defined by `μ`
  -- Since we have two different topologies, it is necessary to specify the topology of E
  let ν : Measure F := @Measure.map E F mE _ φ μ
  convert! addHaar_closedBall_eq_addHaar_ball ν 0 r using 1
  · rw [@Measure.map_apply E F mE _ μ φ _ _ measurableSet_closedBall]
    · congr!
      simp_rw [Metric.closedBall, dist_zero_right]
      rfl
    · refine @Continuous.measurable E F tE mE _ _ _ _ φ ?_
      exact @ContinuousLinearEquiv.continuous ℝ ℝ _ _ _ _ _ _ E tE _ F _ _ _ _ φ
  · rw [@Measure.map_apply E F mE _ μ φ _ _ measurableSet_ball]
    · congr!
      simp_rw [Metric.ball, dist_zero_right]
      rfl
    · refine @Continuous.measurable E F tE mE _ _ _ _ φ ?_
      exact @ContinuousLinearEquiv.continuous ℝ ℝ _ _ _ _ _ _ E tE _ F _ _ _ _ φ

end general_case

section LpSpace

open Real Fintype ENNReal Module MeasureTheory MeasureTheory.Measure WithLp

variable (ι : Type*) [Fintype ι] {p : ℝ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/VolumeOfBalls/Variant4ae9926cf06adaf017f6a651c9a3ba5f1361b67f65896252b7fd1f6d9a4a1c82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variant4ae9926cf06adaf017f6a651c9a3ba5f1361b67f65896252b7fd1f6d9a4a1c82.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a493c3415795ad564128f94e8f4f8f6686df773a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
