# exists_seq_monotone_tendsto_atTop_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80ec3215-89a0-dc0c-fcab-0b2f78e7a690",
  "kind": "theorem",
  "lexical_name": "exists_seq_monotone_tendsto_atTop_atTop",
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
  "slug": "exists-seq-monotone-tendsto-attop-attop--24648070c1733440a52b5736",
  "source": {
    "blob": "7f615d8a1455f8dcca79ade0cd848c1c560026c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1906,
    "line": 1880,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24648070c1733440a52b57367752035331876f4aa7cfa60cdde05316c60dfe6a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80ec3215-89a0-dc0c-fcab-0b2f78e7a690`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1880–1906.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_seq_monotone_tendsto_atTop_atTop (α : Type*) [SemilatticeSup α] [Nonempty α]
    [(atTop : Filter α).IsCountablyGenerated] :
    ∃ xs : ℕ → α, Monotone xs ∧ Tendsto xs atTop atTop := by
  haveI h_ne_bot : (atTop : Filter α).NeBot := atTop_neBot
  obtain ⟨ys, h⟩ := exists_seq_tendsto (atTop : Filter α)
  let xs : ℕ → α := fun n => Finset.sup' (Finset.range (n + 1)) Finset.nonempty_range_succ ys
  have h_mono : Monotone xs := by
    intro i j hij
    rw [Finset.sup'_le_iff]
    intro k hk
    refine' Finset.le_sup'_of_le _ _ le_rfl
    rw [Finset.mem_range] at hk ⊢
    exact hk.trans_le (add_le_add_right hij _)
  refine' ⟨xs, h_mono, _⟩
  · refine' tendsto_atTop_atTop_of_monotone h_mono _
    have : ∀ a : α, ∃ n : ℕ, a ≤ ys n := by
      rw [tendsto_atTop_atTop] at h
      intro a
      obtain ⟨i, hi⟩ := h a
      exact ⟨i, hi i le_rfl⟩
    intro a
    obtain ⟨i, hi⟩ := this a
    refine' ⟨i, hi.trans _⟩
    refine' Finset.le_sup'_of_le _ _ le_rfl
    rw [Finset.mem_range_succ_iff]
#align exists_seq_monotone_tendsto_at_top_at_top Filter.exists_seq_monotone_tendsto_atTop_atTop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean#L1880).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f615d8a1455f8dcca79ade0cd848c1c560026c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
