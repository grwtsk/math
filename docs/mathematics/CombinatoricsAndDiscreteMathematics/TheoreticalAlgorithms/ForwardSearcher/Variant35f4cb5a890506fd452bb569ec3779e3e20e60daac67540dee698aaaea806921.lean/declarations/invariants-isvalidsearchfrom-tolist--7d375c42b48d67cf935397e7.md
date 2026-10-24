# Invariants.isValidSearchFrom_toList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3f95f26-e75c-c28c-04bc-0c86a047bba7",
  "kind": "theorem",
  "lexical_name": "Invariants.isValidSearchFrom_toList",
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
  "slug": "invariants-isvalidsearchfrom-tolist--7d375c42b48d67cf935397e7",
  "source": {
    "blob": "89f4a354aa0abd34832b82c03875f86f703da6f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 450,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant35f4cb5a890506fd452bb569ec3779e3e20e60daac67540dee698aaaea806921.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d375c42b48d67cf935397e79912d6100843c14c17ff48e7266b4f2c97aa313d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant35f4cb5a890506fd452bb569ec3779e3e20e60daac67540dee698aaaea806921.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3f95f26-e75c-c28c-04bc-0c86a047bba7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Invariants.isValidSearchFrom_toList {pat s : Slice} {stackPos needlePos : String.Pos.Raw}
    (it : Std.Iter (α := ForwardSliceSearcher s) (SearchStep s))
    (h : Invariants pat s needlePos stackPos)
    {table ht hn}
    (heq : it = Std.Iter.mk (.proper pat table ht stackPos needlePos hn))
    {p : s.Pos} (hp : p = h.base) :
    IsValidSearchFrom pat p it.toList := by
  induction it using Std.Iter.inductSteps generalizing p stackPos needlePos with | step it ihy ihs
  cases heq
  cases hp
  rw [Std.Iter.toList_eq_match_step]
  generalize hit' : (Std.Iter.mk (α := ForwardSliceSearcher s)
    (.proper pat table ht stackPos needlePos hn)).step = it'

  have hit'' := congrArg Subtype.val hit'
  have plausible := it'.property
  simp only [Std.Iter.step_eq, ne_eq, Std.Iter.toIterM] at hit''
  split at hit'' <;> rename_i h₁
  · split at hit'' <;> rename_i h₂
    · split at hit'' <;> rename_i h₃
      · -- Case 1: matched the full pattern
        simp only [Id.run_pure, Std.Shrink.inflate_deflate, Std.IterM.Step.toPure_yield,
          Std.PlausibleIterStep.yield, Std.IterM.toIter_mk] at hit''
        have hinc := h.inc _ _ h₂.symm
        have hzero := hinc.zero_of_eq h₃
        rw [s.pos!_eq_pos hinc.isValidForSlice, s.pos!_eq_pos (hzero.isValidForSlice' rfl)] at hit''
        simp only [← hit'', Pos.Raw.inc_unoffsetBy_inc] at ⊢ plausible
        apply IsValidSearchFrom.matched_of_eq (ihy plausible hzero rfl rfl) _ rfl
        simpa [base] using hinc.isLongestMatchAt h₃

      · -- Case 2: matched the next character, but not yet the full pattern
        simp only [Id.run_pure, Std.Shrink.inflate_deflate, Std.IterM.Step.toPure_skip,
          Std.PlausibleIterStep.skip, Std.IterM.toIter_mk] at hit''
        simp only [← hit''] at ⊢ plausible
        exact ihs plausible (h.inc _ _ h₂.symm) rfl (by simp [base])

    · split at hit'' <;> rename_i h₃
      · -- Case 3: mismatch at the start of the pattern -> jump to next position
        simp only [Id.run_pure, Std.Shrink.inflate_deflate, Std.IterM.Step.toPure_yield,
          Std.PlausibleIterStep.yield, Std.IterM.toIter_mk] at hit''
        cases h₃
        rw [s.pos!_eq_pos (h.isValidForSlice' rfl)] at hit''
        simp only [← hit''] at ⊢ plausible
        apply IsValidSearchFrom.mismatched_of_eq _ (by simp [base]) _ (by simp [base])
        · exact ihy plausible (.offset h.isEmpty_eq_false) rfl rfl
        · simp only [base, Pos.Raw.unoffsetBy_zero, Pos.le_iff, offset_pos, lt_posGT_iff]
          intro pos hp₁ hp₂
          obtain rfl : stackPos = pos.offset := Std.le_antisymm hp₁ hp₂
          simpa [matchesAt_iff_getElem h.isEmpty_eq_false] using fun h => ⟨0, by simpa,
            by simpa [getUTF8Byte_eq_getUTF8Byte_copy, String.getUTF8Byte] using! Ne.symm h₂⟩

      · cases ht
        simp only [getElem_buildTable] at hit''

        split at hit'' <;> rename_i h₄
        · -- Case 4: mismatch in the middle of the pattern, and no common prefix ->
          -- jump to next position if not at the start of the character
          simp only [Id.run_pure, Std.Shrink.inflate_deflate, Std.IterM.Step.toPure_yield,
            Std.PlausibleIterStep.yield, Std.IterM.toIter_mk] at hit''
          rw [s.pos!_eq_pos h.isValidForSlice] at hit''
          simp only [← hit''] at ⊢ plausible
          apply IsValidSearchFrom.mismatched_of_eq _ _ _ (by simp [base])
          · exact ihy plausible (.offset h.isEmpty_eq_false) rfl rfl
          · have := h.partialMatch.needlePos_le_stackPos
            simp only [Pos.Raw.ext_iff, Pos.Raw.byteIdx_zero, base, lt_posGE_iff, offset_pos,
              Pos.Raw.lt_iff, Pos.Raw.byteIdx_unoffsetBy, gt_iff_lt] at ⊢ h₃
            omega
          · simp only [base, lt_posGE_iff]
            exact fun p hp₁ hp₂ => not_matchesAt_of_prefixFunction_eq h h₄ _ hp₁ hp₂ h₂

        · -- Case 5: mismatch in the middle of the pattern with a common prefix
          simp only [Id.run_pure, Std.Shrink.inflate_deflate, Std.IterM.Step.toPure_yield,
            Std.PlausibleIterStep.yield, Std.IterM.toIter_mk] at hit''
          rw [s.pos!_eq_pos h.isValidForSlice,
            s.pos!_eq_pos (h.of_prefixFunction_eq h₃ rfl (by omega)).isValidForSlice] at hit''
          simp only [← hit''] at ⊢ plausible
          apply IsValidSearchFrom.mismatched_of_eq _ _ _ (by simp [base])
          · exact ihy plausible (h.of_prefixFunction_eq h₃ rfl (by omega)) rfl rfl
          · have h₅ := h.partialMatch.needlePos_le_stackPos
            simp [base, Pos.lt_iff, Pos.Raw.ext_iff] at ⊢ h₃ h₅
            apply Pos.Raw.unoffsetBy_lt_unoffsetBy_of_le_of_lt
            all_goals exact Std.lt_of_le_of_lt prefixFunction_le (by simp [Pos.Raw.lt_iff]; omega)
          · exact fun p hp₁ hp₂ => not_matchesAt_of_prefixFunction_eq h rfl _ hp₁ hp₂ h₂

  · split at hit'' <;> rename_i h₂
    · -- Case 6: so close to the end that we cannot match anymore -> reject, then done
      simp only [Id.run_pure, Std.Shrink.inflate_deflate, Std.IterM.Step.toPure_yield,
        Std.PlausibleIterStep.yield, Std.IterM.toIter_mk] at hit''
      rw [s.pos!_eq_pos h.isValidForSlice] at hit''
      simp only [← hit''] at ⊢ plausible
      apply IsValidSearchFrom.mismatched_of_eq _ _ _ (by simp [base])
      · rw [Std.Iter.toList_eq_match_step, Std.Iter.step_eq]
        simpa [Std.Iter.toIterM] using IsValidSearchFrom.endPos
      · simp only [Pos.Raw.lt_iff, Pos.Raw.byteIdx_unoffsetBy, byteIdx_rawEndPos, base, Pos.lt_iff,
          offset_pos, offset_endPos] at ⊢ h₂
        omega
      · refine fun p hp₁ hp₂ hm => ?_
        have := le_of_matchesAt h.isEmpty_eq_false hm
        simp only [base, Pos.le_iff, offset_pos, Pos.Raw.le_iff, Pos.Raw.byteIdx_unoffsetBy,
          Nat.sub_le_iff_le_add, Pos.Raw.byteIdx_increaseBy, byteIdx_rawEndPos,
          Nat.not_le] at hp₁ this h₁
        omega

    · --  Case 7: reached the end with empty partial match -> done
      simp only [base, ← hit'', Id.run_pure, Std.Shrink.inflate_deflate, Std.IterM.Step.toPure_done,
        Std.PlausibleIterStep.done, Std.IterM.toIter_mk]
      apply IsValidSearchFrom.endPos_of_eq (Std.le_antisymm (Pos.le_endPos _) _) rfl
      simpa [Pos.Raw.le_iff, Pos.le_iff, Pos.Raw.lt_iff] using h₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant35f4cb5a890506fd452bb569ec3779e3e20e60daac67540dee698aaaea806921.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant35f4cb5a890506fd452bb569ec3779e3e20e60daac67540dee698aaaea806921.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89f4a354aa0abd34832b82c03875f86f703da6f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
