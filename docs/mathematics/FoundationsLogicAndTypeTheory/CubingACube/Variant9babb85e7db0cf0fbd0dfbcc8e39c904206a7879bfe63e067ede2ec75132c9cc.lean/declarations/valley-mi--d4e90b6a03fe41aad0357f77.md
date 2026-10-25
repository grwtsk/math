# valley_mi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03113afd3a5aa9db01a9ed0588461d97d06d9e47",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 484,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a572c2a-e026-0e6d-6636-9121161ae54f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18239773-eb24-81da-e00f-cedad94d332a",
  "kind": "theorem",
  "lexical_name": "valley_mi",
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
  "slug": "valley-mi--d4e90b6a03fe41aad0357f77",
  "source": {
    "blob": "03113afd3a5aa9db01a9ed0588461d97d06d9e47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 484,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4e90b6a03fe41aad0357f779abc396a09229b4d2a41719ad6abacec9b6ffe7f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18239773-eb24-81da-e00f-cedad94d332a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem valley_mi : Valley cs (cs (mi h v)).shiftUp := by
  let i := mi h v; have hi : i ∈ bcubes cs c := mi_mem_bcubes
  refine' ⟨_, _, _⟩
  · intro p; apply h.shiftUp_bottom_subset_bottoms mi_xm_ne_one
  · rintro i' hi' ⟨p2, hp2, h2p2⟩; simp only [head_shiftUp] at hi'
    classical
    by_contra h2i'
    rw [tail_shiftUp] at h2p2
    simp only [not_subset, tail_shiftUp] at h2i'
    rcases h2i' with ⟨p1, hp1, h2p1⟩
    have : ∃ p3, p3 ∈ (cs i').tail.toSet ∧ p3 ∉ (cs i).tail.toSet ∧ p3 ∈ c.tail.toSet := by
      simp only [toSet, not_forall, mem_setOf_eq] at h2p1; cases' h2p1 with j hj
      rcases Ico_lemma (mi_not_onBoundary' j).1 (by simp [hw]) (mi_not_onBoundary' j).2
          (le_trans (hp2 j).1 <| le_of_lt (h2p2 j).2) (le_trans (h2p2 j).1 <| le_of_lt (hp2 j).2)
          ⟨hj, hp1 j⟩ with
        ⟨w, hw, h2w, h3w⟩
      refine' ⟨fun j' => if j' = j then w else p2 j', _, _, _⟩
      · intro j'; by_cases h : j' = j
        · simp only [if_pos h]; exact h ▸ h3w
        · simp only [if_neg h]; exact hp2 j'
      · simp only [toSet, not_forall, mem_setOf_eq]; use j; rw [if_pos rfl]; convert h2w
      · intro j'; by_cases h : j' = j
        · simp only [if_pos h, side_tail]; exact h ▸ hw
        · simp only [if_neg h]; apply hi.2; apply h2p2
    rcases this with ⟨p3, h1p3, h2p3, h3p3⟩
    let p := @cons n (fun _ => ℝ) (c.b 0) p3
    have hp : p ∈ c.bottom := by refine' ⟨rfl, _⟩; rwa [tail_cons]
    rcases v.1 hp with ⟨_, ⟨i'', rfl⟩, hi''⟩
    have h2i'' : i'' ∈ bcubes cs c := by
      use hi''.1.symm; apply v.2.1 i'' hi''.1.symm
      use tail p; constructor; exact hi''.2; rw [tail_cons]; exact h3p3
    have h3i'' : (cs i).w < (cs i'').w := by
      apply mi_strict_minimal _ h2i''; rintro rfl; apply h2p3; convert hi''.2
    let p' := @cons n (fun _ => ℝ) (cs i).xm p3
    have hp' : p' ∈ (cs i').toSet := by simpa [toSet, forall_fin_succ, hi'.symm] using h1p3
    have h2p' : p' ∈ (cs i'').toSet := by
      simp only [toSet, forall_fin_succ, cons_succ, cons_zero, mem_setOf_eq]
      refine' ⟨_, by simpa [toSet] using hi''.2⟩
      have : (cs i).b 0 = (cs i'').b 0 := by rw [hi.1, h2i''.1]
      simp [side, hw', xm, this, h3i'']
    apply not_disjoint_iff.mpr ⟨p', hp', h2p'⟩
    apply h.1
    rintro rfl
    apply (cs i).b_ne_xm
    rw [← hi', ← hi''.1, hi.1]
    rfl
  · intro i' hi' h2i'
    dsimp only [shiftUp] at h2i'
    replace h2i' := h.Injective h2i'.symm
    induction h2i'
    exact b_ne_xm (cs i) hi'
#align theorems_100.«82».valley_mi Theorems100.«82».valley_mi

variable (h) [Nontrivial ι]

/-- We get a sequence of cubes whose size is decreasing -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03113afd3a5aa9db01a9ed0588461d97d06d9e47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
