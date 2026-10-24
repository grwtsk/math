# Pos.find?_bool_eq_some_iff_splits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbffa7fe-9fce-a18f-26fb-d65ea0f84843",
  "kind": "theorem",
  "lexical_name": "Pos.find?_bool_eq_some_iff_splits",
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
  "slug": "pos-find-bool-eq-some-iff-splits--44ceff90fb60ddb903f0657a",
  "source": {
    "blob": "632682c68f63641c045f045d5136214da6f7e519",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 88,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44ceff90fb60ddb903f0657a5aa47f22794053da4f4030a540397803dcfd2202",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbffa7fe-9fce-a18f-26fb-d65ea0f84843`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pos.find?_bool_eq_some_iff_splits {p : Char → Bool} {s : Slice} {pos : s.Pos}
    {t u : String} (hs : pos.Splits t u) {pos' : s.Pos} :
    pos.find? p = some pos' ↔
      ∃ v c w, pos'.Splits (t ++ v) (singleton c ++ w) ∧ p c ∧
        ∀ d ∈ v.toList, p d = false := by
  rw [Pos.find?_bool_eq_some_iff]
  refine ⟨?_, ?_⟩
  · rintro ⟨hle, ⟨hne, hp⟩, hmin⟩
    have hsplit := pos'.splits_next_right hne
    obtain ⟨v, hv1, hv2⟩ := (hs.le_iff_exists_eq_append hsplit).mp hle
    refine ⟨v, pos'.get hne, _, hsplit.of_eq hv1 rfl, hp, fun d hd => ?_⟩
    obtain ⟨_, hcopy⟩ :=
      Slice.copy_slice_eq_iff_splits.mpr ⟨t, _, hs.of_eq rfl hv2, hsplit.of_eq hv1 rfl⟩
    rw [← hcopy] at hd
    obtain ⟨q, hq, hqget⟩ := mem_toList_copy_iff_exists_get.mp hd
    have hlt : Pos.ofSlice q < pos' := by
      simpa [← Slice.Pos.lt_endPos_iff, ← Pos.ofSlice_lt_ofSlice_iff] using hq
    subst hqget; rw [Slice.Pos.get_eq_get_ofSlice]; exact hmin _ Pos.le_ofSlice hlt
  · rintro ⟨v, c, w, hsplit, hpc, hmin⟩
    have hne := hsplit.ne_endPos_of_singleton
    have hu : u = v ++ (singleton c ++ w) :=
      append_right_inj t |>.mp (hs.eq_append.symm.trans (by rw [hsplit.eq_append, append_assoc]))
    have hle : pos ≤ pos' := (hs.le_iff_exists_eq_append hsplit).mpr ⟨v, rfl, hu⟩
    refine ⟨hle, ⟨hne, ?_⟩, fun pos'' hle' hlt => hmin _ ?_⟩
    · rw [(singleton_append_inj.mp (hsplit.eq_right (pos'.splits_next_right hne))).1.symm]
      exact hpc
    · obtain ⟨_, hcopy⟩ :=
        Slice.copy_slice_eq_iff_splits.mpr ⟨t, _, hs.of_eq rfl hu, hsplit⟩
      rw [← hcopy]
      exact mem_toList_copy_iff_exists_get.mpr
        ⟨pos''.slice pos pos' hle' (Std.le_of_lt hlt),
         fun h => Std.ne_of_lt hlt
           (by rw [← Slice.Pos.ofSlice_slice (h₁ := hle') (h₂ := Std.le_of_lt hlt), h,
                    Slice.Pos.ofSlice_endPos]),
         by rw [Slice.Pos.get_eq_get_ofSlice]
            simp [Slice.Pos.ofSlice_slice]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `632682c68f63641c045f045d5136214da6f7e519` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
