# exists_nat_nat_continuous_surjective_of_completeSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c081c0178e9661d20c8edff18db3210ec4d7338d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 673,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:409bd970-c09e-2c86-e245-966f1cc6cfc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:205d76ae-2ba9-b036-8295-67faf20a3f0f",
  "kind": "theorem",
  "lexical_name": "exists_nat_nat_continuous_surjective_of_completeSpace",
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
  "slug": "exists-nat-nat-continuous-surjective-of-completespace--e0552eab5ebde8985df80960",
  "source": {
    "blob": "c081c0178e9661d20c8edff18db3210ec4d7338d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 772,
    "line": 673,
    "path": "GRWTSK/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0552eab5ebde8985df8096037d974cc59cfd12bea967b5b67ed9aff86113b48",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:205d76ae-2ba9-b036-8295-67faf20a3f0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 673–772.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_nat_nat_continuous_surjective_of_completeSpace (α : Type*) [MetricSpace α]
    [CompleteSpace α] [SecondCountableTopology α] [Nonempty α] :
    ∃ f : (ℕ → ℕ) → α, Continuous f ∧ Surjective f := by
  /- First, we define a surjective map from a closed subset `s` of `ℕ → ℕ`. Then, we compose
    this map with a retraction of `ℕ → ℕ` onto `s` to obtain the desired map.
    Let us consider a dense sequence `u` in `α`. Then `s` is the set of sequences `xₙ` such that the
    balls `closedBall (u xₙ) (1/2^n)` have a nonempty intersection. This set is closed,
    and we define `f x` there to be the unique point in the intersection.
    This function is continuous and surjective by design. -/
  letI : MetricSpace (ℕ → ℕ) := PiNat.metricSpaceNatNat
  have I0 : (0 : ℝ) < 1 / 2 := by norm_num
  have I1 : (1 / 2 : ℝ) < 1 := by norm_num
  rcases exists_dense_seq α with ⟨u, hu⟩
  let s : Set (ℕ → ℕ) := { x | (⋂ n : ℕ, closedBall (u (x n)) ((1 / 2) ^ n)).Nonempty }
  let g : s → α := fun x => x.2.some
  have A : ∀ (x : s) (n : ℕ), dist (g x) (u ((x : ℕ → ℕ) n)) ≤ (1 / 2) ^ n := fun x n =>
    (mem_iInter.1 x.2.some_mem n :)
  have g_cont : Continuous g := by
    refine continuous_iff_continuousAt.2 fun y => ?_
    refine continuousAt_of_locally_lipschitz zero_lt_one 4 fun x hxy => ?_
    rcases eq_or_ne x y with (rfl | hne)
    · simp
    have hne' : x.1 ≠ y.1 := Subtype.coe_injective.ne hne
    have dist' : dist x y = dist x.1 y.1 := rfl
    let n := firstDiff x.1 y.1 - 1
    have diff_pos : 0 < firstDiff x.1 y.1 := by
      by_contra! h
      apply apply_firstDiff_ne hne'
      rw [Nat.le_zero.1 h]
      apply apply_eq_of_dist_lt _ le_rfl
      rw [pow_zero]
      exact hxy
    have hn : firstDiff x.1 y.1 = n + 1 := (Nat.succ_pred_eq_of_pos diff_pos).symm
    rw [dist', dist_eq_of_ne hne', hn]
    have B : x.1 n = y.1 n := mem_cylinder_firstDiff x.1 y.1 n (Nat.pred_lt diff_pos.ne')
    calc
      dist (g x) (g y) ≤ dist (g x) (u (x.1 n)) + dist (g y) (u (x.1 n)) :=
        dist_triangle_right _ _ _
      _ = dist (g x) (u (x.1 n)) + dist (g y) (u (y.1 n)) := by rw [← B]
      _ ≤ (1 / 2) ^ n + (1 / 2) ^ n := add_le_add (A x n) (A y n)
      _ = 4 * (1 / 2) ^ (n + 1) := by ring
  have g_surj : Surjective g := fun y ↦ by
    have : ∀ n : ℕ, ∃ j, y ∈ closedBall (u j) ((1 / 2) ^ n) := fun n ↦ by
      rcases hu.exists_dist_lt y (by simp : (0 : ℝ) < (1 / 2) ^ n) with ⟨j, hj⟩
      exact ⟨j, hj.le⟩
    choose x hx using this
    have I : (⋂ n : ℕ, closedBall (u (x n)) ((1 / 2) ^ n)).Nonempty := ⟨y, mem_iInter.2 hx⟩
    refine ⟨⟨x, I⟩, ?_⟩
    refine dist_le_zero.1 ?_
    have J : ∀ n : ℕ, dist (g ⟨x, I⟩) y ≤ (1 / 2) ^ n + (1 / 2) ^ n := fun n =>
      calc
        dist (g ⟨x, I⟩) y ≤ dist (g ⟨x, I⟩) (u (x n)) + dist y (u (x n)) :=
          dist_triangle_right _ _ _
        _ ≤ (1 / 2) ^ n + (1 / 2) ^ n := add_le_add (A ⟨x, I⟩ n) (hx n)
    have L : Tendsto (fun n : ℕ => (1 / 2 : ℝ) ^ n + (1 / 2) ^ n) atTop (𝓝 (0 + 0)) :=
      (tendsto_pow_atTop_nhds_zero_of_lt_one I0.le I1).add
        (tendsto_pow_atTop_nhds_zero_of_lt_one I0.le I1)
    rw [add_zero] at L
    exact ge_of_tendsto' L J
  have s_closed : IsClosed s := by
    refine isClosed_iff_clusterPt.mpr fun x hx ↦ ?_
    have L : Tendsto (fun n : ℕ => diam (closedBall (u (x n)) ((1 / 2) ^ n))) atTop (𝓝 0) := by
      have : Tendsto (fun n : ℕ => (2 : ℝ) * (1 / 2) ^ n) atTop (𝓝 (2 * 0)) :=
        (tendsto_pow_atTop_nhds_zero_of_lt_one I0.le I1).const_mul _
      rw [mul_zero] at this
      exact
        squeeze_zero (fun n => diam_nonneg) (fun n => diam_closedBall (pow_nonneg I0.le _)) this
    refine nonempty_iInter_of_nonempty_biInter (fun n => isClosed_closedBall)
      (fun n => isBounded_closedBall) (fun N ↦ ?_) L
    obtain ⟨y, hxy, ys⟩ : ∃ y, y ∈ ball x ((1 / 2) ^ N) ∩ s :=
      clusterPt_principal_iff.1 hx _ (ball_mem_nhds x (pow_pos I0 N))
    have E :
      ⋂ (n : ℕ) (H : n ≤ N), closedBall (u (x n)) ((1 / 2) ^ n) =
        ⋂ (n : ℕ) (H : n ≤ N), closedBall (u (y n)) ((1 / 2) ^ n) := by
      refine iInter_congr fun n ↦ iInter_congr fun hn ↦ ?_
      have : x n = y n := apply_eq_of_dist_lt (mem_ball'.1 hxy) hn
      rw [this]
    rw [E]
    apply Nonempty.mono _ ys
    apply iInter_subset_iInter₂
  obtain ⟨f, -, f_surj, f_cont⟩ :
    ∃ f : (ℕ → ℕ) → s, (∀ x : s, f x = x) ∧ Surjective f ∧ Continuous f := by
    apply exists_retraction_subtype_of_isClosed s_closed
    simpa only [nonempty_coe_sort] using g_surj.nonempty
  exact ⟨g ∘ f, g_cont.comp f_cont, g_surj.comp f_surj⟩

namespace PiCountable

/-!
### Products of (possibly non-discrete) metric spaces
-/


variable {ι : Type*} [Encodable ι] {F : ι → Type*} [∀ i, MetricSpace (F i)]

open Encodable

/-- Given a countable family of metric spaces, one may put a distance on their product `Π i, E i`.
It is highly non-canonical, though, and therefore not registered as a global instance.
The distance we use here is `dist x y = ∑' i, min (1/2)^(encode i) (dist (x i) (y i))`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean#L673).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c081c0178e9661d20c8edff18db3210ec4d7338d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
