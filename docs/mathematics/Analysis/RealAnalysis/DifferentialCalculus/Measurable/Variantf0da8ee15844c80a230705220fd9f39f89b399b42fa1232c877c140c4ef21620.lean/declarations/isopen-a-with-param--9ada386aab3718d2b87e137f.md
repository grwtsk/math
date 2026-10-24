# isOpen_A_with_param

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2b4af71-b40a-e01e-f69b-ea945c6b9c75",
  "kind": "lemma",
  "lexical_name": "isOpen_A_with_param",
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
  "slug": "isopen-a-with-param--9ada386aab3718d2b87e137f",
  "source": {
    "blob": "b13390f0aee1019879e01d496581048f13b5488d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 866,
    "line": 801,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantf0da8ee15844c80a230705220fd9f39f89b399b42fa1232c877c140c4ef21620.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ada386aab3718d2b87e137f95aafbaf44bac1a4261cb7b30ca22d0323094734",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantf0da8ee15844c80a230705220fd9f39f89b399b42fa1232c877c140c4ef21620.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2b4af71-b40a-e01e-f69b-ea945c6b9c75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 801–866.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isOpen_A_with_param {r s : ℝ} (hf : Continuous f.uncurry) (L : E →L[𝕜] F) :
    IsOpen {p : α × E | p.2 ∈ A (f p.1) L r s} := by
  have : ProperSpace E := .of_locallyCompactSpace 𝕜
  simp only [A, half_lt_self_iff, not_lt, mem_Ioc, mem_ball, map_sub, mem_setOf_eq]
  apply isOpen_iff_mem_nhds.2
  rintro ⟨a, x⟩ ⟨r', ⟨Irr', Ir'r⟩, hr⟩
  have ha : Continuous (f a) := hf.uncurry_left a
  rcases exists_between Irr' with ⟨t, hrt, htr'⟩
  rcases exists_between hrt with ⟨t', hrt', ht't⟩
  obtain ⟨b, b_lt, hb⟩ : ∃ b, b < s * r ∧ ∀ y ∈ closedBall x t, ∀ z ∈ closedBall x t,
      ‖f a z - f a y - (L z - L y)‖ ≤ b := by
    have B : Continuous (fun (p : E × E) ↦ ‖f a p.2 - f a p.1 - (L p.2 - L p.1)‖) := by fun_prop
    have C : (closedBall x t ×ˢ closedBall x t).Nonempty := by simp; linarith
    rcases ((isCompact_closedBall x t).prod (isCompact_closedBall x t)).exists_isMaxOn
      C B.continuousOn with ⟨p, pt, hp⟩
    simp only [mem_prod, mem_closedBall] at pt
    refine ⟨‖f a p.2 - f a p.1 - (L p.2 - L p.1)‖,
      hr p.1 (pt.1.trans_lt htr') p.2 (pt.2.trans_lt htr'), fun y hy z hz ↦ ?_⟩
    have D : (y, z) ∈ closedBall x t ×ˢ closedBall x t := mem_prod.2 ⟨hy, hz⟩
    exact hp D
  obtain ⟨ε, εpos, hε⟩ : ∃ ε, 0 < ε ∧ b + 2 * ε < s * r :=
    ⟨(s * r - b) / 3, by linarith, by linarith⟩
  obtain ⟨u, u_open, au, hu⟩ : ∃ u, IsOpen u ∧ a ∈ u ∧ ∀ (p : α × E),
      p.1 ∈ u → p.2 ∈ closedBall x t → dist (f.uncurry p) (f.uncurry (a, p.2)) < ε := by
    have C : Continuous (fun (p : α × E) ↦ f a p.2) := by fun_prop
    have D : ({a} ×ˢ closedBall x t).EqOn f.uncurry (fun p ↦ f a p.2) := by
      rintro ⟨b, y⟩ ⟨hb, -⟩
      simp only [mem_singleton_iff] at hb
      simp [hb]
    obtain ⟨v, v_open, sub_v, hv⟩ : ∃ v, IsOpen v ∧ {a} ×ˢ closedBall x t ⊆ v ∧
        ∀ p ∈ v, dist (Function.uncurry f p) (f a p.2) < ε :=
      Uniform.exists_is_open_mem_uniformity_of_forall_mem_eq (s := {a} ×ˢ closedBall x t)
        (fun p _ ↦ hf.continuousAt) (fun p _ ↦ C.continuousAt) D (dist_mem_uniformity εpos)
    obtain ⟨w, w', w_open, -, sub_w, sub_w', hww'⟩ : ∃ (w : Set α) (w' : Set E),
        IsOpen w ∧ IsOpen w' ∧ {a} ⊆ w ∧ closedBall x t ⊆ w' ∧ w ×ˢ w' ⊆ v :=
      generalized_tube_lemma isCompact_singleton (isCompact_closedBall x t) v_open sub_v
    refine ⟨w, w_open, sub_w rfl, ?_⟩
    rintro ⟨b, y⟩ h hby
    exact hv _ (hww' ⟨h, sub_w' hby⟩)
  have : u ×ˢ ball x (t - t') ∈ 𝓝 (a, x) :=
    prod_mem_nhds (u_open.mem_nhds au) (ball_mem_nhds _ (sub_pos.2 ht't))
  filter_upwards [this]
  rintro ⟨a', x'⟩ ha'x'
  simp only [mem_prod, mem_ball] at ha'x'
  refine ⟨t', ⟨hrt', ht't.le.trans (htr'.le.trans Ir'r)⟩, fun y hy z hz ↦ ?_⟩
  have dyx : dist y x ≤ t := by linarith [dist_triangle y x' x]
  have dzx : dist z x ≤ t := by linarith [dist_triangle z x' x]
  calc
  ‖f a' z - f a' y - (L z - L y)‖ =
    ‖(f a' z - f a z) + (f a y - f a' y) + (f a z - f a y - (L z - L y))‖ := by congr; abel
  _ ≤ ‖f a' z - f a z‖ + ‖f a y - f a' y‖ + ‖f a z - f a y - (L z - L y)‖ := norm_add₃_le
  _ ≤ ε + ε + b := by
      gcongr
      · rw [← dist_eq_norm]
        change dist (f.uncurry (a', z)) (f.uncurry (a, z)) ≤ ε
        apply (hu _ _ _).le
        · exact ha'x'.1
        · simp [dzx]
      · rw [← dist_eq_norm']
        change dist (f.uncurry (a', y)) (f.uncurry (a, y)) ≤ ε
        apply (hu _ _ _).le
        · exact ha'x'.1
        · simp [dyx]
      · simp [hb, dyx, dzx]
  _ < s * r := by linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantf0da8ee15844c80a230705220fd9f39f89b399b42fa1232c877c140c4ef21620.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantf0da8ee15844c80a230705220fd9f39f89b399b42fa1232c877c140c4ef21620.lean#L801).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b13390f0aee1019879e01d496581048f13b5488d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
