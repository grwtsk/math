# abs_Dfun_le_of_grid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7d0d26e944e626559e985530a2ec6d3e3e97b70",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe00618a-00cd-4ce4-e75a-b476d333b0ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bba16b8a-f82f-daa7-d26d-d9104df26e0b",
  "kind": "theorem",
  "lexical_name": "abs_Dfun_le_of_grid",
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
  "slug": "abs-dfun-le-of-grid--825a702efaa733432039b018",
  "source": {
    "blob": "e7d0d26e944e626559e985530a2ec6d3e3e97b70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:825a702efaa733432039b018def2d1383bd0e9d2b4d56c5db0152fe48d49dfa5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bba16b8a-f82f-daa7-d26d-d9104df26e0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_Dfun_le_of_grid (hN : 0 < N) {B₁ : ℝ}
    (hD : ∀ j, 1 ≤ j → j ≤ N → |Dleft S N j| ≤ B₁ ∧ |Dright S N j| ≤ B₁) :
    ∀ t ∈ Icc (0 : ℝ) 1, |Dfun (massOf S N) N t| ≤ B₁ := by
  have hNr : (0 : ℝ) < N := by exact_mod_cast hN
  have hB : 0 ≤ B₁ := le_trans (abs_nonneg _) (hD 1 le_rfl hN).1
  intro t ht
  by_cases hg : ∃ m : ℕ, m ≤ N ∧ t = (m : ℝ) / N
  · obtain ⟨m, hm, rfl⟩ := hg
    rw [Dfun_grid_eq_Dright hN hm]
    rcases Nat.eq_zero_or_pos m with h0 | hpos
    · subst h0; simp [Dright, T_zero]; exact hB
    · exact (hD m hpos hm).2
  · have ht' : t ∈ Ioo (0 : ℝ) 1 \ grid N := by
      refine ⟨⟨lt_of_le_of_ne ht.1 ?_, lt_of_le_of_ne ht.2 ?_⟩, ?_⟩
      · intro h; exact hg ⟨0, Nat.zero_le _, by rw [← h]; simp⟩
      · intro h; exact hg ⟨N, le_rfl, by rw [h, div_self hNr.ne']⟩
      · rintro ⟨m, hmt⟩
        have hmt' : (m : ℝ) / N = t := hmt
        apply hg
        refine ⟨m, ?_, hmt'.symm⟩
        have : (m : ℝ) / N ≤ 1 := hmt' ▸ ht.2
        rw [div_le_one hNr] at this
        exact_mod_cast this
    obtain ⟨m, hm, htm⟩ := exists_cell hN ht'
    obtain ⟨hlo, hhi⟩ := Dfun_cell_bounds hN hm htm
    have h1 := (hD (m + 1) (Nat.succ_pos m) (Nat.succ_le_of_lt hm)).1
    rw [abs_le] at h1 ⊢
    constructor
    · linarith [h1.1]
    · rcases Nat.eq_zero_or_pos m with h0 | hpos
      · subst h0
        have : Dright S N 0 = 0 := by simp [Dright, T_zero]
        linarith
      · have h2 := (hD m hpos hm.le).2
        rw [abs_le] at h2
        linarith [h2.2]

/-- E at a grid point is Egrid. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7d0d26e944e626559e985530a2ec6d3e3e97b70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
