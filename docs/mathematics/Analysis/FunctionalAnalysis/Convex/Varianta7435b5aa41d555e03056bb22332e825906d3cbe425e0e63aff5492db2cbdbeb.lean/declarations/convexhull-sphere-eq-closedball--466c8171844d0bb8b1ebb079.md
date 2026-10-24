# convexHull_sphere_eq_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "01a910c2568c2d85cecae2aa5238d9f360357765",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a7435b5aa41d555e03056bb22332e825906d3cbe425e0e63aff5492db2cbdbeb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a459b62d-a3a5-fa7e-caf2-2c50cc4e4293",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ffda0bfa-c531-a5b7-1e68-1fa1a455abed",
  "kind": "theorem",
  "lexical_name": "convexHull_sphere_eq_closedBall",
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
  "slug": "convexhull-sphere-eq-closedball--466c8171844d0bb8b1ebb079",
  "source": {
    "blob": "01a910c2568c2d85cecae2aa5238d9f360357765",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 101,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Convex/Varianta7435b5aa41d555e03056bb22332e825906d3cbe425e0e63aff5492db2cbdbeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:466c8171844d0bb8b1ebb079e54180f63cfe0afb7abe57c4ef77b8aca77e4274",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Convex/Varianta7435b5aa41d555e03056bb22332e825906d3cbe425e0e63aff5492db2cbdbeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffda0bfa-c531-a5b7-1e68-1fa1a455abed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexHull_sphere_eq_closedBall {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F]
    [Nontrivial F] (x : F) {r : ℝ} (hr : 0 ≤ r) :
    convexHull ℝ (sphere x r) = closedBall x r := by
  suffices convexHull ℝ (sphere (0 : F) r) = closedBall 0 r by
    rw [← add_zero x, ← vadd_eq_add, ← vadd_sphere, convexHull_vadd,
      this, vadd_closedBall_zero, vadd_eq_add, add_zero]
  refine subset_antisymm (convexHull_min sphere_subset_closedBall (convex_closedBall 0 r))
    (fun x h ↦ mem_convexHull_iff.mpr fun U hU_sub hU ↦ ?_)
  have zero_mem : (0 : F) ∈ U := by
    have _ : Invertible (2 : ℝ) := by use 2⁻¹ <;> grind
    obtain ⟨z, hz⟩ := NormedSpace.sphere_nonempty (E := F).mpr hr
    rw [← midpoint_self_neg (R := ℝ) (x := z)]
    exact Convex.midpoint_mem hU (hU_sub hz) <| hU_sub (by simp_all)
  by_cases hr₀ : r = 0
  · simp_all
  by_cases x_zero : x = 0
  · rwa [x_zero]
  set z := (r * ‖x‖⁻¹) • x with hz_def
  have hr₁ : r⁻¹ * ‖x‖ ≤ 1 := by
    simp only [mem_closedBall, dist_zero_right] at h
    grw [h, inv_mul_le_one]
  have hz : z ∈ U := by
    apply hU_sub
    simp_all [norm_smul]
  have := StarConvex.smul_mem (hU.starConvex zero_mem) hz (by positivity) hr₁
  rwa [hz_def, ← smul_assoc, smul_eq_mul, ← mul_assoc, mul_comm, mul_comm r⁻¹, mul_assoc _ r⁻¹,
    inv_mul_cancel₀ hr₀, mul_one, inv_mul_cancel₀ (by simp_all), one_smul] at this

/-- Given a point `x` in the convex hull of `s` and a point `y`, there exists a point
of `s` at distance at least `dist x y` from `y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Convex/Varianta7435b5aa41d555e03056bb22332e825906d3cbe425e0e63aff5492db2cbdbeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Convex/Varianta7435b5aa41d555e03056bb22332e825906d3cbe425e0e63aff5492db2cbdbeb.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01a910c2568c2d85cecae2aa5238d9f360357765` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
