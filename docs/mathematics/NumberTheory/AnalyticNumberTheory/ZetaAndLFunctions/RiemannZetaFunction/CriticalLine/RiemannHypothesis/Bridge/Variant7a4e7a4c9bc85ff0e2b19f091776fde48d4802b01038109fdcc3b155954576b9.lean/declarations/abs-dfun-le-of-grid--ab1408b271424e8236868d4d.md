# abs_Dfun_le_of_grid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:727d015c-0ba7-67bc-6137-e37c0f143df8",
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
  "slug": "abs-dfun-le-of-grid--ab1408b271424e8236868d4d",
  "source": {
    "blob": "28053bba407b751c9ae432fd8445898a3bbecba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant7a4e7a4c9bc85ff0e2b19f091776fde48d4802b01038109fdcc3b155954576b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab1408b271424e8236868d4d17972772a843d1d03c3d604e357400de246f1790",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant7a4e7a4c9bc85ff0e2b19f091776fde48d4802b01038109fdcc3b155954576b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:727d015c-0ba7-67bc-6137-e37c0f143df8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–111.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant7a4e7a4c9bc85ff0e2b19f091776fde48d4802b01038109fdcc3b155954576b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant7a4e7a4c9bc85ff0e2b19f091776fde48d4802b01038109fdcc3b155954576b9.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28053bba407b751c9ae432fd8445898a3bbecba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
