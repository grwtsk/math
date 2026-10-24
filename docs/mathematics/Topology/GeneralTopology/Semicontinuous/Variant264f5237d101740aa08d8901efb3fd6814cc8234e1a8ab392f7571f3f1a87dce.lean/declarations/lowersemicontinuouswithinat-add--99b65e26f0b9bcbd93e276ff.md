# LowerSemicontinuousWithinAt.add'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5982d8fd08d39c55b13510ba505ca5d52ffffb52",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 376,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/264f5237d101740aa08d8901efb3fd6814cc8234e1a8ab392f7571f3f1a87dce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d37f8964-62c9-3fd3-3e19-8b4359b4bf5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59dc2a8a-cd7e-7cdd-2366-4d305f17c187",
  "kind": "theorem",
  "lexical_name": "LowerSemicontinuousWithinAt.add'",
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
  "slug": "lowersemicontinuouswithinat-add--99b65e26f0b9bcbd93e276ff",
  "source": {
    "blob": "5982d8fd08d39c55b13510ba505ca5d52ffffb52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 376,
    "path": "GRWTSK/Topology/GeneralTopology/Semicontinuous/Variant264f5237d101740aa08d8901efb3fd6814cc8234e1a8ab392f7571f3f1a87dce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99b65e26f0b9bcbd93e276ff4f0d400124a5d368547aee9cb2437b178fb716ab",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Semicontinuous/Variant264f5237d101740aa08d8901efb3fd6814cc8234e1a8ab392f7571f3f1a87dce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59dc2a8a-cd7e-7cdd-2366-4d305f17c187`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LowerSemicontinuousWithinAt.add' {f g : α → γ} (hf : LowerSemicontinuousWithinAt f s x)
    (hg : LowerSemicontinuousWithinAt g s x)
    (hcont : ContinuousAt (fun p : γ × γ => p.1 + p.2) (f x, g x)) :
    LowerSemicontinuousWithinAt (fun z => f z + g z) s x := by
  intro y hy
  obtain ⟨u, v, u_open, xu, v_open, xv, h⟩ :
    ∃ u v : Set γ,
      IsOpen u ∧ f x ∈ u ∧ IsOpen v ∧ g x ∈ v ∧ u ×ˢ v ⊆ { p : γ × γ | y < p.fst + p.snd } :=
    mem_nhds_prod_iff'.1 (hcont (isOpen_Ioi.mem_nhds hy))
  by_cases hx₁ : ∃ l, l < f x
  · obtain ⟨z₁, z₁lt, h₁⟩ : ∃ z₁ < f x, Ioc z₁ (f x) ⊆ u :=
      exists_Ioc_subset_of_mem_nhds (u_open.mem_nhds xu) hx₁
    by_cases hx₂ : ∃ l, l < g x
    · obtain ⟨z₂, z₂lt, h₂⟩ : ∃ z₂ < g x, Ioc z₂ (g x) ⊆ v :=
        exists_Ioc_subset_of_mem_nhds (v_open.mem_nhds xv) hx₂
      filter_upwards [hf z₁ z₁lt, hg z₂ z₂lt]with z h₁z h₂z
      have A1 : min (f z) (f x) ∈ u := by
        by_cases H : f z ≤ f x
        · simp [H]
          exact h₁ ⟨h₁z, H⟩
        · simp [le_of_not_le H]
          exact h₁ ⟨z₁lt, le_rfl⟩
      have A2 : min (g z) (g x) ∈ v := by
        by_cases H : g z ≤ g x
        · simp [H]
          exact h₂ ⟨h₂z, H⟩
        · simp [le_of_not_le H]
          exact h₂ ⟨z₂lt, le_rfl⟩
      have : (min (f z) (f x), min (g z) (g x)) ∈ u ×ˢ v := ⟨A1, A2⟩
      calc
        y < min (f z) (f x) + min (g z) (g x) := h this
        _ ≤ f z + g z := add_le_add (min_le_left _ _) (min_le_left _ _)

    · simp only [not_exists, not_lt] at hx₂
      filter_upwards [hf z₁ z₁lt]with z h₁z
      have A1 : min (f z) (f x) ∈ u := by
        by_cases H : f z ≤ f x
        · simp [H]
          exact h₁ ⟨h₁z, H⟩
        · simp [le_of_not_le H]
          exact h₁ ⟨z₁lt, le_rfl⟩
      have : (min (f z) (f x), g x) ∈ u ×ˢ v := ⟨A1, xv⟩
      calc
        y < min (f z) (f x) + g x := h this
        _ ≤ f z + g z := add_le_add (min_le_left _ _) (hx₂ (g z))

  · simp only [not_exists, not_lt] at hx₁
    by_cases hx₂ : ∃ l, l < g x
    · obtain ⟨z₂, z₂lt, h₂⟩ : ∃ z₂ < g x, Ioc z₂ (g x) ⊆ v :=
        exists_Ioc_subset_of_mem_nhds (v_open.mem_nhds xv) hx₂
      filter_upwards [hg z₂ z₂lt]with z h₂z
      have A2 : min (g z) (g x) ∈ v := by
        by_cases H : g z ≤ g x
        · simp [H]
          exact h₂ ⟨h₂z, H⟩
        · simp [le_of_not_le H]
          exact h₂ ⟨z₂lt, le_rfl⟩
      have : (f x, min (g z) (g x)) ∈ u ×ˢ v := ⟨xu, A2⟩
      calc
        y < f x + min (g z) (g x) := h this
        _ ≤ f z + g z := add_le_add (hx₁ (f z)) (min_le_left _ _)
    · simp only [not_exists, not_lt] at hx₁ hx₂
      apply Filter.eventually_of_forall
      intro z
      have : (f x, g x) ∈ u ×ˢ v := ⟨xu, xv⟩
      calc
        y < f x + g x := h this
        _ ≤ f z + g z := add_le_add (hx₁ (f z)) (hx₂ (g z))
#align lower_semicontinuous_within_at.add' LowerSemicontinuousWithinAt.add'

/-- The sum of two lower semicontinuous functions is lower semicontinuous. Formulated with an
explicit continuity assumption on addition, for application to `EReal`. The unprimed version of
the lemma uses `[ContinuousAdd]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Semicontinuous/Variant264f5237d101740aa08d8901efb3fd6814cc8234e1a8ab392f7571f3f1a87dce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Semicontinuous/Variant264f5237d101740aa08d8901efb3fd6814cc8234e1a8ab392f7571f3f1a87dce.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5982d8fd08d39c55b13510ba505ca5d52ffffb52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
