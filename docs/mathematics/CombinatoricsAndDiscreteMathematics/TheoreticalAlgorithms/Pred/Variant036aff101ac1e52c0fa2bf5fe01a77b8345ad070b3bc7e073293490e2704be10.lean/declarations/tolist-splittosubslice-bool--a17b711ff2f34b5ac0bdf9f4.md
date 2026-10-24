# toList_splitToSubslice_bool

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eff2215a-f1c2-4316-6605-67b465d7a8d2",
  "kind": "theorem",
  "lexical_name": "toList_splitToSubslice_bool",
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
  "slug": "tolist-splittosubslice-bool--a17b711ff2f34b5ac0bdf9f4",
  "source": {
    "blob": "6033f1d972967805d4e6e685f62c46c220478ba6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 41,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant036aff101ac1e52c0fa2bf5fe01a77b8345ad070b3bc7e073293490e2704be10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a17b711ff2f34b5ac0bdf9f432557241fd9d8c5141e9852563ea6c105b738bd0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant036aff101ac1e52c0fa2bf5fe01a77b8345ad070b3bc7e073293490e2704be10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eff2215a-f1c2-4316-6605-67b465d7a8d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toList_splitToSubslice_bool {s : Slice} {p : Char → Bool} :
    (s.splitToSubslice p).toList.map (Slice.copy ∘ Subslice.toSlice) =
      (s.copy.toList.splitOnP p).map String.ofList := by
  simp only [Pattern.toList_splitToSubslice_eq_modelSplit]
  suffices ∀ (f pos : s.Pos) (hle : f ≤ pos) (t₁ t₂ : String),
      pos.Splits t₁ t₂ → (Pattern.Model.split p f pos hle).map (copy ∘ Subslice.toSlice) =
        (t₂.toList.splitOnPPrepend p (s.subslice f pos hle).copy.toList.reverse).map String.ofList by
    simpa using this s.startPos s.startPos (Std.le_refl _) "" s.copy
  intro f pos hle t₁ t₂ hp
  induction pos using Pos.next_induction generalizing f t₁ t₂ with
  | next pos h ih =>
    obtain ⟨t₂, rfl⟩ := hp.exists_eq_singleton_append h
    by_cases hpc : p (pos.get h)
    · simp [split_eq_of_isLongestMatchAt (isLongestMatchAt_of_get hpc),
        ih _ (Std.le_refl _) _ _ hp.next,
        List.splitOnPPrepend_cons_pos (p := p) hpc]
    · rw [Bool.not_eq_true] at hpc
      rw [split_eq_next_of_not_matchesAt h (not_matchesAt_of_get hpc)]
      simp only [toList_append, toList_singleton, List.cons_append, List.nil_append, Subslice.copy_eq]
      rw [ih _ _ _ _ hp.next, List.splitOnPPrepend_cons_neg (by simpa)]
      have := (splits_slice (Std.le_trans hle (by simp)) (pos.slice f (pos.next h) hle (by simp))).eq_append
      simp_all
  | endPos => simp_all

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant036aff101ac1e52c0fa2bf5fe01a77b8345ad070b3bc7e073293490e2704be10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant036aff101ac1e52c0fa2bf5fe01a77b8345ad070b3bc7e073293490e2704be10.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6033f1d972967805d4e6e685f62c46c220478ba6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
