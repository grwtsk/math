# RectanglePullToNhdOfPole'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f0119d42de0d67b003b84a66cb7eddc6e16d6d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 283,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/081d38aa0c5eec725a1582eea3bdf4e51d604f6c2ebb3c9729d91df3aa092956.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6a0e445-7976-d9cb-1e30-e5797f2ced5a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e11f28c2-5235-8d6d-5e94-add77bd90657",
  "kind": "lemma",
  "lexical_name": "RectanglePullToNhdOfPole'",
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
  "slug": "rectanglepulltonhdofpole--f49b42f8549b27998ee3bf85",
  "source": {
    "blob": "1f0119d42de0d67b003b84a66cb7eddc6e16d6d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 283,
    "path": "GRWTSK/Analysis/ComplexAnalysis/ResidueCalcOnRectangles/Variant081d38aa0c5eec725a1582eea3bdf4e51d604f6c2ebb3c9729d91df3aa092956.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f49b42f8549b27998ee3bf854dcb642e767a990ce2da2456ad01d43510bf7080",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ResidueCalcOnRectangles/Variant081d38aa0c5eec725a1582eea3bdf4e51d604f6c2ebb3c9729d91df3aa092956.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e11f28c2-5235-8d6d-5e94-add77bd90657`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RectanglePullToNhdOfPole' [CompleteSpace E] {z₀ z₁ z₂ z₃ p : ℂ}
    (h_orientation : z₀.re ≤ z₃.re ∧ z₀.im ≤ z₃.im ∧
      z₁.re ≤ z₂.re ∧ z₁.im ≤ z₂.im)
    (hp : Rectangle z₁ z₂ ∈ 𝓝 p) (hz : Rectangle z₁ z₂ ⊆ Rectangle z₀ z₃)
    (fHolo : HolomorphicOn f (Rectangle z₀ z₃ \ {p})) :
    RectangleIntegral f z₀ z₃ = RectangleIntegral f z₁ z₂ := by
  obtain ⟨hz₀_re, hz₀_im, hz₁_re, hz₁_im⟩ := h_orientation
  have := rect_subset_iff.mp hz
  rw [Rectangle, uIcc_of_le hz₀_re, uIcc_of_le hz₀_im] at this
  obtain ⟨⟨⟨_, _⟩, ⟨_, _⟩⟩, ⟨_, _⟩, ⟨_, _⟩⟩ := this
  obtain ⟨⟨_, _⟩, ⟨_, _⟩⟩ :=
    (uIoo_of_le hz₁_re) ▸ (uIoo_of_le hz₁_im) ▸ rectangle_mem_nhds_iff.mp hp
  obtain ⟨_, _, _, _⟩ := show
      p.re < z₂.re ∧ p.re < z₃.re ∧ p.im < z₂.im ∧ p.im < z₃.im from
    ⟨by linarith, by linarith, by linarith, by linarith⟩
  obtain ⟨_, _, _, _⟩ := show
      z₀.re < p.re ∧ z₁.re < p.re ∧ z₀.im < p.im ∧ z₁.im < p.im from
    ⟨by linarith, by linarith, by linarith, by linarith⟩
  have fCont := fHolo.continuousOn
  have hbot : RectangleBorderIntegrable f (↑z₀.re + ↑z₀.im * I)
      (↑z₃.re + ↑z₃.im * I) := ?_
  have htop : RectangleBorderIntegrable f (↑z₀.re + ↑z₁.im * I)
      (↑z₃.re + ↑z₃.im * I) := ?_
  have hleft : RectangleBorderIntegrable f (↑z₀.re + ↑z₁.im * I)
      (↑z₃.re + ↑z₂.im * I) := ?_
  have hright : RectangleBorderIntegrable f (↑z₁.re + ↑z₁.im * I)
      (↑z₃.re + ↑z₂.im * I) := ?_
  all_goals try {
    refine ContinuousOn.rectangleBorder_integrable
      (fCont.mono (rectangleBorder_subset_punctured_rect ?_ ?_))
    · simp_all
    · simpa using ⟨by linarith, by linarith, by linarith, by linarith⟩
  }
  have hbot' : z₁.im ∈ [[z₀.im, z₃.im]] := ?_
  have htop' : z₂.im ∈ [[z₁.im, z₃.im]] := ?_
  have hleft' : z₁.re ∈ [[z₀.re, z₃.re]] := ?_
  have hright' : z₂.re ∈ [[z₁.re, z₃.re]] := ?_
  all_goals try {
    rw [Set.uIcc_of_le]
    constructor
    all_goals assumption
  }
  have hbot'' : Rectangle (↑z₀.re + ↑z₀.im * I) (↑z₃.re + ↑z₁.im * I) ⊆
    Rectangle z₀ z₃ \ {p} := ?_
  have htop'' : Rectangle (↑z₀.re + ↑z₂.im * I) (↑z₃.re + ↑z₃.im * I) ⊆
    Rectangle z₀ z₃ \ {p} := ?_
  have hleft'' : Rectangle (↑z₀.re + ↑z₁.im * I) (↑z₁.re + ↑z₂.im * I) ⊆
    Rectangle z₀ z₃ \ {p} := ?_
  have hright'' : Rectangle (↑z₂.re + ↑z₁.im * I) (↑z₃.re + ↑z₂.im * I) ⊆
    Rectangle z₀ z₃ \ {p} := ?_
  all_goals try { apply rectangle_subset_punctured_rect <;> simp_all }
  have h₁ := RectangleIntegralVSplit' hbot' hbot
  have h₂ := fHolo.vanishesOnRectangle hbot''
  have h₃ := RectangleIntegralVSplit' htop' htop
  have h₄ := fHolo.vanishesOnRectangle htop''
  have h₅ := RectangleIntegralHSplit' hleft' hleft
  have h₆ := fHolo.vanishesOnRectangle hleft''
  have h₇ := RectangleIntegralHSplit' hright' hright
  have h₈ := fHolo.vanishesOnRectangle hright''
  simp only [re_add_im] at *
  additive_combination h₁ + h₂ + h₃ + h₄ + h₅ + h₆ + h₇ + h₈

/-- Given `f` holomorphic on a rectangle `z` and `w` except at
a point `p`, the integral of `f` over the rectangle with
corners `z` and `w` is the same as the integral of `f` over a
small square centered at `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/ResidueCalcOnRectangles/Variant081d38aa0c5eec725a1582eea3bdf4e51d604f6c2ebb3c9729d91df3aa092956.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/ResidueCalcOnRectangles/Variant081d38aa0c5eec725a1582eea3bdf4e51d604f6c2ebb3c9729d91df3aa092956.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f0119d42de0d67b003b84a66cb7eddc6e16d6d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
