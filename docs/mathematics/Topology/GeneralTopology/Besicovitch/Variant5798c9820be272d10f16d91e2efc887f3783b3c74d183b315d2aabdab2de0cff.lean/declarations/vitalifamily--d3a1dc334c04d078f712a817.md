# vitaliFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:492aeef1018ce2617ecde88d0bb4e9bff165c389d8647455cbc56754d12bcc0d",
  "kind": "def",
  "lexical_name": "vitaliFamily",
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
  "slug": "vitalifamily--d3a1dc334c04d078f712a817",
  "source": {
    "blob": "6d4971ecfc5f96a35723ba82e66a6aeb9040edf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1059,
    "line": 1021,
    "path": "GRWTSK/Topology/GeneralTopology/Besicovitch/Variant5798c9820be272d10f16d91e2efc887f3783b3c74d183b315d2aabdab2de0cff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3a1dc334c04d078f712a81784a8cb5b806c14d26e747455369f4856244ed5d3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Besicovitch/Variant5798c9820be272d10f16d91e2efc887f3783b3c74d183b315d2aabdab2de0cff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:492aeef1018ce2617ecde88d0bb4e9bff165c389d8647455cbc56754d12bcc0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1021–1059.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def vitaliFamily (μ : Measure α) [SFinite μ] : VitaliFamily μ where
  setsAt x := (fun r : ℝ => closedBall x r) '' Ioi (0 : ℝ)
  measurableSet _ := forall_mem_image.2 fun _ _ ↦ isClosed_closedBall.measurableSet
  nonempty_interior _ := forall_mem_image.2 fun _ rpos ↦
    (nonempty_ball.2 rpos).mono ball_subset_interior_closedBall
  nontrivial x ε εpos := ⟨closedBall x ε, mem_image_of_mem _ εpos, Subset.rfl⟩
  covering := by
    intro s f fsubset ffine
    let g : α → Set ℝ := fun x => {r | 0 < r ∧ closedBall x r ∈ f x}
    have A : ∀ x ∈ s, ∀ δ > 0, (g x ∩ Ioo 0 δ).Nonempty := by
      intro x xs δ δpos
      obtain ⟨t, tf, ht⟩ : ∃ (t : Set α), t ∈ f x ∧ t ⊆ closedBall x (δ / 2) :=
        ffine x xs (δ / 2) (half_pos δpos)
      obtain ⟨r, rpos, rfl⟩ : ∃ r : ℝ, 0 < r ∧ closedBall x r = t := by simpa using fsubset x xs tf
      rcases le_total r (δ / 2) with (H | H)
      · exact ⟨r, ⟨rpos, tf⟩, ⟨rpos, H.trans_lt (half_lt_self δpos)⟩⟩
      · have : closedBall x r = closedBall x (δ / 2) := Subset.antisymm ht (by gcongr)
        rw [this] at tf
        exact ⟨δ / 2, ⟨half_pos δpos, tf⟩, ⟨half_pos δpos, half_lt_self δpos⟩⟩
    obtain ⟨t, r, _, ts, tg, μt, tdisj⟩ :
      ∃ (t : Set α) (r : α → ℝ),
        t.Countable ∧
          t ⊆ s ∧
            (∀ x ∈ t, r x ∈ g x ∩ Ioo 0 1) ∧
              μ (s \ ⋃ x ∈ t, closedBall x (r x)) = 0 ∧
                t.PairwiseDisjoint fun x => closedBall x (r x) :=
      exists_disjoint_closedBall_covering_ae μ g s A (fun _ => 1) fun _ _ => zero_lt_one
    let F : α → α × Set α := fun x => (x, closedBall x (r x))
    refine ⟨F '' t, ?_, ?_, ?_, ?_⟩
    · rintro - ⟨x, hx, rfl⟩; exact ts hx
    · rintro p ⟨x, hx, rfl⟩ q ⟨y, hy, rfl⟩ hxy
      exact tdisj hx hy (ne_of_apply_ne F hxy)
    · rintro - ⟨x, hx, rfl⟩; exact (tg x hx).1.2
    · rwa [biUnion_image]

/-- The main feature of the Besicovitch Vitali family is that its filter at a point `x` corresponds
to convergence along closed balls. We record one of the two implications here, which will enable us
to deduce specific statements on differentiation of measures in this context from the general
versions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Besicovitch/Variant5798c9820be272d10f16d91e2efc887f3783b3c74d183b315d2aabdab2de0cff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Besicovitch/Variant5798c9820be272d10f16d91e2efc887f3783b3c74d183b315d2aabdab2de0cff.lean#L1021).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d4971ecfc5f96a35723ba82e66a6aeb9040edf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
