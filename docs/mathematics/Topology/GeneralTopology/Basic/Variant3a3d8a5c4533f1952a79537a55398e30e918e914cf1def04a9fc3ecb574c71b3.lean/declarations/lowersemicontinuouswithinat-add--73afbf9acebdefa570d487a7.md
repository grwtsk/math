# LowerSemicontinuousWithinAt.add'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "373a430d5cc7a0d602ecc8ebd25614af509b3b1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 428,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a3d8a5c4533f1952a79537a55398e30e918e914cf1def04a9fc3ecb574c71b3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b074c5fb-4e32-d8cd-0827-423a33508e5f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ec08e6f-0e98-06ba-b47b-1da5c0d14d8c",
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
  "slug": "lowersemicontinuouswithinat-add--73afbf9acebdefa570d487a7",
  "source": {
    "blob": "373a430d5cc7a0d602ecc8ebd25614af509b3b1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 428,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3a3d8a5c4533f1952a79537a55398e30e918e914cf1def04a9fc3ecb574c71b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73afbf9acebdefa570d487a7ef941dea0a31807f01c43c0225a1b56937ea7aa5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3a3d8a5c4533f1952a79537a55398e30e918e914cf1def04a9fc3ecb574c71b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ec08e6f-0e98-06ba-b47b-1da5c0d14d8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–489.

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
      filter_upwards [hf z₁ z₁lt, hg z₂ z₂lt] with z h₁z h₂z
      have A1 : min (f z) (f x) ∈ u := by
        by_cases! H : f z ≤ f x
        · simpa [H] using h₁ ⟨h₁z, H⟩
        · simpa [H.le]
      have A2 : min (g z) (g x) ∈ v := by
        by_cases! H : g z ≤ g x
        · simpa [H] using h₂ ⟨h₂z, H⟩
        · simpa [H.le]
      have : (min (f z) (f x), min (g z) (g x)) ∈ u ×ˢ v := ⟨A1, A2⟩
      calc
        y < min (f z) (f x) + min (g z) (g x) := h this
        _ ≤ f z + g z := add_le_add (min_le_left _ _) (min_le_left _ _)
    · simp only [not_exists, not_lt] at hx₂
      filter_upwards [hf z₁ z₁lt] with z h₁z
      have A1 : min (f z) (f x) ∈ u := by
        by_cases! H : f z ≤ f x
        · simpa [H] using h₁ ⟨h₁z, H⟩
        · simpa [H.le]
      have : (min (f z) (f x), g x) ∈ u ×ˢ v := ⟨A1, xv⟩
      calc
        y < min (f z) (f x) + g x := h this
        _ ≤ f z + g z := add_le_add (min_le_left _ _) (hx₂ (g z))
  · simp only [not_exists, not_lt] at hx₁
    by_cases hx₂ : ∃ l, l < g x
    · obtain ⟨z₂, z₂lt, h₂⟩ : ∃ z₂ < g x, Ioc z₂ (g x) ⊆ v :=
        exists_Ioc_subset_of_mem_nhds (v_open.mem_nhds xv) hx₂
      filter_upwards [hg z₂ z₂lt] with z h₂z
      have A2 : min (g z) (g x) ∈ v := by
        by_cases! H : g z ≤ g x
        · simpa [H] using h₂ ⟨h₂z, H⟩
        · simpa [H.le] using h₂ ⟨z₂lt, le_rfl⟩
      have : (f x, min (g z) (g x)) ∈ u ×ˢ v := ⟨xu, A2⟩
      calc
        y < f x + min (g z) (g x) := h this
        _ ≤ f z + g z := add_le_add (hx₁ (f z)) (min_le_left _ _)
    · simp only [not_exists, not_lt] at hx₁ hx₂
      apply Filter.Eventually.of_forall
      intro z
      have : (f x, g x) ∈ u ×ˢ v := ⟨xu, xv⟩
      calc
        y < f x + g x := h this
        _ ≤ f z + g z := add_le_add (hx₁ (f z)) (hx₂ (g z))

/-- The sum of two lower semicontinuous functions is lower semicontinuous. Formulated with an
explicit continuity assumption on addition, for application to `EReal`. The unprimed version of
the lemma uses `[ContinuousAdd]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3a3d8a5c4533f1952a79537a55398e30e918e914cf1def04a9fc3ecb574c71b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3a3d8a5c4533f1952a79537a55398e30e918e914cf1def04a9fc3ecb574c71b3.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `373a430d5cc7a0d602ecc8ebd25614af509b3b1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
