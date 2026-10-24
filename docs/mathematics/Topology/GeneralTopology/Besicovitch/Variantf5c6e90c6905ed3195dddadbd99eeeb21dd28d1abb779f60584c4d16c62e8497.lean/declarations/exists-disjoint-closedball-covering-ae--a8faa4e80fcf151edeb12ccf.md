# exists_disjoint_closedBall_covering_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab853b54-d0b6-cf23-d34a-456e268f1f8d",
  "kind": "theorem",
  "lexical_name": "exists_disjoint_closedBall_covering_ae",
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
  "slug": "exists-disjoint-closedball-covering-ae--a8faa4e80fcf151edeb12ccf",
  "source": {
    "blob": "999c868f4720485989fcdd7dda1ab5b4cb7b5af4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 924,
    "line": 862,
    "path": "GRWTSK/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8faa4e80fcf151edeb12ccfa53a2e3e8ebdb856a9292240d7feaf7d64b8cb37",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab853b54-d0b6-cf23-d34a-456e268f1f8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 862–924.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_disjoint_closedBall_covering_ae (μ : Measure α) [SigmaFinite μ] (f : α → Set ℝ)
    (s : Set α) (hf : ∀ x ∈ s, ∀ δ > 0, (f x ∩ Ioo 0 δ).Nonempty) (R : α → ℝ)
    (hR : ∀ x ∈ s, 0 < R x) :
    ∃ (t : Set α) (r : α → ℝ), t.Countable ∧ t ⊆ s ∧
      (∀ x ∈ t, r x ∈ f x ∩ Ioo 0 (R x)) ∧ μ (s \ ⋃ x ∈ t, closedBall x (r x)) = 0 ∧
        t.PairwiseDisjoint fun x => closedBall x (r x) := by
  let g x := f x ∩ Ioo 0 (R x)
  have hg : ∀ x ∈ s, ∀ δ > 0, (g x ∩ Ioo 0 δ).Nonempty := by
    intro x hx δ δpos
    rcases hf x hx (min δ (R x)) (lt_min δpos (hR x hx)) with ⟨r, hr⟩
    exact
      ⟨r,
        ⟨⟨hr.1, hr.2.1, hr.2.2.trans_le (min_le_right _ _)⟩,
          ⟨hr.2.1, hr.2.2.trans_le (min_le_left _ _)⟩⟩⟩
  rcases exists_disjoint_closedBall_covering_ae_aux μ g s hg with ⟨v, v_count, vs, vg, μv, v_disj⟩
  let t := Prod.fst '' v
  have : ∀ x ∈ t, ∃ r : ℝ, (x, r) ∈ v := by
    intro x hx
    rcases(mem_image _ _ _).1 hx with ⟨⟨p, q⟩, hp, rfl⟩
    exact ⟨q, hp⟩
  choose! r hr using this
  have im_t : (fun x => (x, r x)) '' t = v := by
    have I : ∀ p : α × ℝ, p ∈ v → 0 ≤ p.2 := fun p hp => (vg p hp).2.1.le
    apply Subset.antisymm
    · simp only [image_subset_iff]
      rintro ⟨x, p⟩ hxp
      simp only [mem_preimage]
      exact hr _ (mem_image_of_mem _ hxp)
    · rintro ⟨x, p⟩ hxp
      have hxrx : (x, r x) ∈ v := hr _ (mem_image_of_mem _ hxp)
      have : p = r x := by
        by_contra h
        have A : (x, p) ≠ (x, r x) := by
          simpa only [true_and_iff, Prod.mk.inj_iff, eq_self_iff_true, Ne.def] using h
        have H := v_disj hxp hxrx A
        contrapose H
        rw [not_disjoint_iff_nonempty_inter]
        refine' ⟨x, by simp (config := { proj := false }) [I _ hxp, I _ hxrx]⟩
      rw [this]
      apply mem_image_of_mem
      exact mem_image_of_mem _ hxp
  refine' ⟨t, r, v_count.image _, _, _, _, _⟩
  · intro x hx
    rcases (mem_image _ _ _).1 hx with ⟨⟨p, q⟩, hp, rfl⟩
    exact vs _ hp
  · intro x hx
    rcases (mem_image _ _ _).1 hx with ⟨⟨p, q⟩, _, rfl⟩
    exact vg _ (hr _ hx)
  · have :
      ⋃ (x : α) (_ : x ∈ t), closedBall x (r x) =
        ⋃ (p : α × ℝ) (_ : p ∈ (fun x => (x, r x)) '' t), closedBall p.1 p.2 :=
      by conv_rhs => rw [biUnion_image]
    rw [this, im_t]
    exact μv
  · have A : InjOn (fun x : α => (x, r x)) t := by
      simp (config := { contextual := true }) only [InjOn, Prod.mk.inj_iff, imp_true_iff,
        eq_self_iff_true]
    rwa [← im_t, A.pairwiseDisjoint_image] at v_disj
#align besicovitch.exists_disjoint_closed_ball_covering_ae Besicovitch.exists_disjoint_closedBall_covering_ae

/-- In a space with the Besicovitch property, any set `s` can be covered with balls whose measures
add up to at most `μ s + ε`, for any positive `ε`. This works even if one restricts the set of
allowed radii around a point `x` to a set `f x` which accumulates at `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean#L862).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `999c868f4720485989fcdd7dda1ab5b4cb7b5af4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
