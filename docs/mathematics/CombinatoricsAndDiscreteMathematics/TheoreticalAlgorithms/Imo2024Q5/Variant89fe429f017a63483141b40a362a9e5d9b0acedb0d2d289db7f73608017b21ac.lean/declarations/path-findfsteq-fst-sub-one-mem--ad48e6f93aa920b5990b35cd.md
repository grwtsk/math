# Path.findFstEq_fst_sub_one_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdd412ef-7232-abd0-8e81-2a56021dd6b3",
  "kind": "lemma",
  "lexical_name": "Path.findFstEq_fst_sub_one_mem",
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
  "slug": "path-findfsteq-fst-sub-one-mem--ad48e6f93aa920b5990b35cd",
  "source": {
    "blob": "fd43e09546994d5f3a34803d1b5d9af4fc0b4db3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 381,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant89fe429f017a63483141b40a362a9e5d9b0acedb0d2d289db7f73608017b21ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad48e6f93aa920b5990b35cddd087f1dc78e6d2361da650f00524dc8a6bc29ad",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant89fe429f017a63483141b40a362a9e5d9b0acedb0d2d289db7f73608017b21ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdd412ef-7232-abd0-8e81-2a56021dd6b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Path.findFstEq_fst_sub_one_mem (p : Path N) {r : Fin (N + 2)} (hr : r ≠ 0) :
    (⟨(r : ℕ) - 1, by lia⟩, (p.findFstEq r).2) ∈ p.cells := by
  rw [findFstEq_eq_find?_le]
  have h1 := p.one_lt_length_cells
  obtain ⟨cr, hcrc, hcrr⟩ := p.exists_mem_fst_eq r
  rcases p with ⟨cells, nonempty, head_first_row, last_last_row, valid_move_seq⟩
  dsimp only at h1 hcrc ⊢
  have hd : ∃ c ∈ cells, decide (r ≤ c.1) = true := ⟨cr, hcrc, by simpa using hcrr.symm.le⟩
  have hd' : cells.dropWhile (fun c ↦ !decide (r ≤ c.1)) ≠ [] := by simpa using hd
  have ht : cells.takeWhile (fun c ↦ !decide (r ≤ c.1)) ≠ [] := by
    intro h
    rw [List.takeWhile_eq_nil_iff] at h
    replace h := h (by lia)
    simp [List.getElem_zero, head_first_row, hr] at h
  simp_rw [cells.find?_eq_head_dropWhile_not hd, Option.get_some]
  rw [← cells.takeWhile_append_dropWhile (p := fun c ↦ !decide (r ≤ c.1)),
    List.isChain_append] at valid_move_seq
  have ha := valid_move_seq.2.2
  simp only [List.head?_eq_some_head hd', List.getLast?_eq_some_getLast ht, Option.mem_def,
    Option.some.injEq, forall_eq'] at ha
  nth_rw 1 [← cells.takeWhile_append_dropWhile (p := fun c ↦ !decide (r ≤ c.1))]
  refine List.mem_append_left _ ?_
  convert! List.getLast_mem ht using 1
  have htr : ((List.takeWhile (fun c ↦ !decide (r ≤ c.1)) cells).getLast ht).1 < r := by
    simpa using List.mem_takeWhile_imp (List.getLast_mem ht)
  have hdr : r ≤ ((List.dropWhile (fun c ↦ !decide (r ≤ c.1)) cells).head hd').1 := by
    simpa using cells.head_dropWhile_not (fun c ↦ !decide (r ≤ c.1)) hd'
  simp only [Adjacent, Nat.dist] at ha
  have hrm : N + 1 + (r : ℕ) = N + 2 + (r - 1) := by lia
  simp only [Prod.ext_iff, Fin.ext_iff]
  lia

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant89fe429f017a63483141b40a362a9e5d9b0acedb0d2d289db7f73608017b21ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant89fe429f017a63483141b40a362a9e5d9b0acedb0d2d289db7f73608017b21ac.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd43e09546994d5f3a34803d1b5d9af4fc0b4db3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
