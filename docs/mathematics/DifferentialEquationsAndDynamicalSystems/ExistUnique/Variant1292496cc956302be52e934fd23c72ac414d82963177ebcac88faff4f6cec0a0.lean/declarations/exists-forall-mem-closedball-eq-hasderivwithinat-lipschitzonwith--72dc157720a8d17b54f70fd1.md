# exists_forall_mem_closedBall_eq_hasDerivWithinAt_lipschitzOnWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4303a59264d27308dbe232496454d61b9bab767b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/1292496cc956302be52e934fd23c72ac414d82963177ebcac88faff4f6cec0a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:02c3c945-f57e-77f7-3fb9-853d9fac6ae0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45f5a8ed-e6d5-2b64-be58-71f5cb7d3fe5",
  "kind": "theorem",
  "lexical_name": "exists_forall_mem_closedBall_eq_hasDerivWithinAt_lipschitzOnWith",
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
  "slug": "exists-forall-mem-closedball-eq-hasderivwithinat-lipschitzonwith--72dc157720a8d17b54f70fd1",
  "source": {
    "blob": "4303a59264d27308dbe232496454d61b9bab767b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 78,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant1292496cc956302be52e934fd23c72ac414d82963177ebcac88faff4f6cec0a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72dc157720a8d17b54f70fd1049142ebb7e7dcbb1e9e32fac8d51865cb75b05d",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant1292496cc956302be52e934fd23c72ac414d82963177ebcac88faff4f6cec0a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45f5a8ed-e6d5-2b64-be58-71f5cb7d3fe5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_forall_mem_closedBall_eq_hasDerivWithinAt_lipschitzOnWith
    (hf : IsPicardLindelof f t₀ x₀ a r L K) :
    ∃ α : E → ℝ → E, (∀ x ∈ closedBall x₀ r, α x t₀ = x ∧
      ∀ t ∈ Icc tmin tmax, HasDerivWithinAt (α x) (f t (α x t)) (Icc tmin tmax) t) ∧
      ∃ L' : ℝ≥0, ∀ t ∈ Icc tmin tmax, LipschitzOnWith L' (α · t) (closedBall x₀ r) := by
  classical
  have (x) (hx : x ∈ closedBall x₀ r) := FunSpace.exists_isFixedPt_next hf hx
  choose α hα using this
  set α' := fun (x : E) ↦ if hx : x ∈ closedBall x₀ r then
    α x hx |>.compProj else 0 with hα'
  refine ⟨α', fun x hx ↦ ⟨?_, fun t ht ↦ ?_⟩, ?_⟩
  · rw [hα']
    beta_reduce
    rw [dite_eq_left hx, FunSpace.compProj_val, ← hα, FunSpace.next_apply₀]
  · rw [hα']
    beta_reduce
    rw [dite_eq_left hx, FunSpace.compProj_apply]
    apply hasDerivWithinAt_picard_Icc t₀.2 hf.continuousOn_uncurry
      (α x hx |>.continuous_compProj.continuousOn)
      (fun _ ht' ↦ α x hx |>.compProj_mem_closedBall hf.mul_max_le)
      x ht |>.congr_of_mem _ ht
    intro t' ht'
    nth_rw 1 [← hα]
    rw [FunSpace.compProj_of_mem ht', FunSpace.next_apply]
  · obtain ⟨L', h⟩ := FunSpace.exists_forall_closedBall_funSpace_dist_le_mul hf
    refine ⟨L', fun t ht ↦ LipschitzOnWith.of_dist_le_mul fun x hx y hy ↦ ?_⟩
    simp_rw [hα']
    rw [dite_eq_left hx, dite_eq_left hy, FunSpace.compProj_apply, FunSpace.compProj_apply,
      ← FunSpace.toContinuousMap_apply_eq_apply, ← FunSpace.toContinuousMap_apply_eq_apply]
    have : Nonempty (Icc tmin tmax) := ⟨t₀⟩
    apply ContinuousMap.dist_le_iff_of_nonempty.mp
    exact h x y hx hy (α x hx) (α y hy) (hα x hx) (hα y hy)

/-- **Picard-Lindelöf (Cauchy-Lipschitz) theorem**, differential form. This version shows the
existence of a local flow and that it is continuous on its domain as a (partial) map `E × ℝ → E`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant1292496cc956302be52e934fd23c72ac414d82963177ebcac88faff4f6cec0a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant1292496cc956302be52e934fd23c72ac414d82963177ebcac88faff4f6cec0a0.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4303a59264d27308dbe232496454d61b9bab767b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
