# bounded_repair_trace_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a8e696666b5fcdb3d5a0493e2001361069a5209c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/Combinatorics/Sequences/ZeroSumIntervalRepair.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29c48bfa-94f4-c15e-8072-6649fcf50fd9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2fba520d-258f-0b26-674e-f188fbc31f2b",
  "kind": "theorem",
  "lexical_name": "bounded_repair_trace_aux",
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
  "slug": "bounded-repair-trace-aux--3618de1fb41e24d91e87d3cf",
  "source": {
    "blob": "a8e696666b5fcdb3d5a0493e2001361069a5209c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 246,
    "path": "GRWTSK/Combinatorics/Sequences/ZeroSumIntervalRepair.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3618de1fb41e24d91e87d3cff52943426f2aa5a6a4ce1c98d2e31a735c37f173",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fba520d-258f-0b26-674e-f188fbc31f2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bounded_repair_trace_aux (σ : Fin n → G) (D : ℕ)
    (hg : GoodRepairGeometry σ D) (R : Finset (Fin n)) :
    ∀ trace : SwapTrace n,
      SupportsDisjoint trace → TraceBounded D trace →
      (∀ s ∈ trace, s.left ∈ BadRightEndpoints σ ∧ s.right ∉ BadRightEndpoints σ) →
      (∀ r ∈ R, ∀ s ∈ trace, r < s.left) →
      BadRightEndpoints (σ ∘ replayPermutation trace) ⊆ R →
      R ⊆ BadRightEndpoints σ →
      ∃ finalTrace : SwapTrace n, SupportsDisjoint finalTrace ∧ TraceBounded D finalTrace ∧
        BadRightEndpoints (σ ∘ replayPermutation finalTrace) = ∅ := by
  classical
  induction R using Finset.strongInductionOn with
  | _ R ih =>
    intro trace hd hb hl horder hbad hR
    by_cases hempty : R = ∅
    · refine ⟨trace, hd, hb, ?_⟩
      exact Finset.eq_empty_iff_forall_notMem.mpr fun i hi => by simpa [hempty] using hbad hi
    · have hnon : R.Nonempty := Finset.nonempty_iff_ne_empty.mpr hempty
      let b := R.max' hnon
      have hbR : b ∈ R := Finset.max'_mem R hnon
      have hbB : b ∈ BadRightEndpoints σ := hR hbR
      have hfix := trace_fixes_before trace D hb b (horder b hbR)
      let π := replayPermutation trace
      have hadm : AdmissiblePermutation D π := ⟨trace, hd, hb, rfl⟩
      have hbc := hg.repairCompatibility b hbB π hadm (fun i hi => hfix i (le_of_lt hi))
      have htail : b.val + 5 * D < n := by have ht := hg.tailSafety b hbB; omega
      have hbcw : (blockedCandidates σ b π D ∩ repairWindow b D).card < 2 * D := by
        have he : blockedCandidates σ b π D ∩ repairWindow b D = blockedCandidates σ b π D :=
          Finset.inter_eq_left.mpr (Finset.filter_subset _ _)
        rw [he]
        exact hbc
      obtain ⟨y, hyw, hynb, hynB, hynU⟩ := repairWindow_available b D hg.positive htail
        (blockedCandidates σ b π D) (BadRightEndpoints σ) (usedRepairPositions trace)
        hbcw (originalBad_window_card σ D hg b)
        (usedRepairPositions_window_card σ D hg trace hd hb (fun s hs => (hl s hs).1) b)
      have hwin : b < y ∧ y.val ≤ b.val + 5 * D := by simpa [repairWindow] using hyw
      have hynblocked : ¬ Blocked σ b π y := fun h => hynb (Finset.mem_filter.mpr ⟨hyw, h⟩)
      let s : PositionSwap n := ⟨b, y⟩
      have hsbound : s.Bounded D := ⟨hwin.1, by dsimp [s]; omega⟩
      have hbleft : b ∉ traceSupport trace := by
        intro hi
        obtain ⟨t, ht, hi⟩ := List.mem_flatMap.mp hi
        have hbt := horder b hbR t ht
        have htr := (hb t ht).1
        simp only [PositionSwap.support, List.mem_cons, List.not_mem_nil, or_false] at hi
        rcases hi with hi | hi
        · exact (ne_of_lt hbt) hi
        · have : b.val < t.right.val := lt_trans hbt htr
          exact (ne_of_lt this) (congrArg Fin.val hi)
      have hyright : y ∉ traceSupport trace := by
        intro hi
        obtain ⟨t, ht, hi⟩ := List.mem_flatMap.mp hi
        simp only [PositionSwap.support, List.mem_cons, List.not_mem_nil, or_false] at hi
        rcases hi with rfl | hi
        · exact hynB (hl t ht).1
        · exact hynU (Finset.mem_image.mpr ⟨t, List.mem_toFinset.mpr ht, hi.symm⟩)
      have hds : SupportsDisjoint (trace ++ [s]) :=
        supportsDisjoint_append_swap trace hd s (ne_of_lt hwin.1) hbleft hyright
      have hbs : TraceBounded D (trace ++ [s]) := by
        intro t ht
        rcases List.mem_append.mp ht with ht | ht
        · exact hb t ht
        · simpa only [List.mem_singleton.mp ht] using hsbound
      have hls : ∀ t ∈ trace ++ [s], t.left ∈ BadRightEndpoints σ ∧
          t.right ∉ BadRightEndpoints σ := by
        intro t ht
        rcases List.mem_append.mp ht with ht | ht
        · exact hl t ht
        · have ht' : t = s := List.mem_singleton.mp ht
          simpa [ht', s] using And.intro hbB hynB
      have hos : ∀ r ∈ R.erase b, ∀ t ∈ trace ++ [s], r < t.left := by
        intro r hr t ht
        obtain ⟨hrne, hrR⟩ := Finset.mem_erase.mp hr
        rcases List.mem_append.mp ht with ht | ht
        · exact horder r hrR t ht
        · have ht' : t = s := List.mem_singleton.mp ht
          have hrle : r ≤ b := Finset.le_max' R r hrR
          simpa [ht', s] using lt_of_le_of_ne hrle hrne
      have huc : ¬ Blocked (σ ∘ π) b 1 y := by
        simpa [Blocked, Function.comp_assoc] using hynblocked
      have hnews := unblocked_swap_preserves_repair_invariant (σ ∘ π) R b y hwin.1 huc hbad
      have hbad' : BadRightEndpoints (σ ∘ replayPermutation (trace ++ [s])) ⊆ R.erase b := by
        simpa [replayPermutation_append, s, PositionSwap.permutation,
          Equiv.Perm.coe_mul, Function.comp_assoc, π] using hnews
      exact ih (R.erase b) (Finset.erase_ssubset hbR) (trace ++ [s]) hds hbs hls hos hbad'
        ((Finset.erase_subset b R).trans hR)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/ZeroSumIntervalRepair.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8e696666b5fcdb3d5a0493e2001361069a5209c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
