# LawfulToBackwardSearcherModel.defaultImplementation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0aa3b6d7-5a1c-5450-1487-e36cb04165d4",
  "kind": "theorem",
  "lexical_name": "LawfulToBackwardSearcherModel.defaultImplementation",
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
  "slug": "lawfultobackwardsearchermodel-defaultimplementation--d15780173124736daf12a964",
  "source": {
    "blob": "be753e249f36e5d5eccbafe7cbaaa486ecc5eaf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1076,
    "line": 1035,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0ed13f03d904e2ff1d2ff49cc8a75b84c9b38497eece4c96c1b685bf7c60a923.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d15780173124736daf12a9649f6cccb7ca40b4ea163293edec7b3a7bd5be1d48",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0ed13f03d904e2ff1d2ff49cc8a75b84c9b38497eece4c96c1b685bf7c60a923.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0aa3b6d7-5a1c-5450-1487-e36cb04165d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1035–1076.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LawfulToBackwardSearcherModel.defaultImplementation {pat : ρ} [BackwardPattern pat] [StrictBackwardPattern pat]
    [PatternModel pat] [LawfulBackwardPatternModel pat] :
    letI : ToBackwardSearcher pat (ToBackwardSearcher.DefaultBackwardSearcher pat) := .defaultImplementation
    LawfulToBackwardSearcherModel pat := by
  let inst : ToBackwardSearcher pat (ToBackwardSearcher.DefaultBackwardSearcher pat) := .defaultImplementation
  refine ⟨fun s => ?_⟩
  suffices ∀ (pos : s.Pos),
      IsValidRevSearchFrom pat pos (Std.Iter.mk (α := ToBackwardSearcher.DefaultBackwardSearcher pat s) ⟨pos⟩).toList from
    this s.endPos
  intro pos
  induction pos using WellFounded.induction Slice.Pos.wellFounded_lt with | h pos ih
  rw [Std.Iter.toList_eq_match_step, Std.Iter.step_eq]
  simp only [Std.Iter.toIterM_mk, Std.IterM.internalState_mk, ne_eq]
  by_cases h : pos = s.startPos
  · simpa [h] using IsValidRevSearchFrom.startPos
  · simp only [h, ↓reduceDIte]
    split <;> rename_i heq
    · split at heq <;> rename_i pos' heq'
      · simp only [Id.run_pure, Std.Shrink.inflate_deflate, Std.IterM.Step.toPure_yield,
          Std.PlausibleIterStep.yield, Std.IterStep.yield.injEq] at heq
        rw [← heq.1, ← heq.2]
        apply IsValidRevSearchFrom.matched
        · rw [LawfulBackwardPattern.skipSuffixOfNonempty?_eq,
            LawfulBackwardPatternModel.skipSuffix?_eq_some_iff] at heq'
          exact heq'.isLongestRevMatchAt_ofSliceTo
        · simp only [Std.IterM.toIter]
          apply ih
          refine Std.lt_of_lt_of_le (Slice.Pos.ofSliceTo_lt_ofSliceTo_iff.2 ?_)
            (Slice.Pos.ofSliceTo_le (pos := Slice.endPos _))
          simpa using StrictBackwardPattern.ne_endPos _ _ heq'
      · simp only [Id.run_pure, Std.Shrink.inflate_deflate, Std.IterM.Step.toPure_yield,
          Std.PlausibleIterStep.yield, Std.IterStep.yield.injEq] at heq
        rw [← heq.1, ← heq.2]
        apply IsValidRevSearchFrom.mismatched (by simp) _ (ih _ (by simp))
        intro p' hp' hp''
        obtain rfl : pos = p' := Std.le_antisymm (by simpa using hp') hp''
        rwa [LawfulBackwardPattern.skipSuffixOfNonempty?_eq,
          LawfulBackwardPatternModel.skipSuffix?_sliceTo_eq_none_iff] at heq'
    · split at heq <;> simp at heq
    · split at heq <;> simp at heq

end String.Slice.Pattern.Model
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0ed13f03d904e2ff1d2ff49cc8a75b84c9b38497eece4c96c1b685bf7c60a923.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0ed13f03d904e2ff1d2ff49cc8a75b84c9b38497eece4c96c1b685bf7c60a923.lean#L1035).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be753e249f36e5d5eccbafe7cbaaa486ecc5eaf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
