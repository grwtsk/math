# LawfulToForwardSearcherModel.defaultImplementation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "850079f67d6ba4720fd9eb1b13a853cbfcbf4aab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 916,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d1460cfb5fca52390fcfc4c1d72e3aa13bf2e48d9d63dccef31e6f2130467bc7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0870c151-1ac9-5a8d-f53f-f37a945f14f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5cccd455-ccc5-a73a-ffe4-e7b001ab27f1",
  "kind": "theorem",
  "lexical_name": "LawfulToForwardSearcherModel.defaultImplementation",
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
  "slug": "lawfultoforwardsearchermodel-defaultimplementation--4ca075b28c20aa0821560c28",
  "source": {
    "blob": "850079f67d6ba4720fd9eb1b13a853cbfcbf4aab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 965,
    "line": 916,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd1460cfb5fca52390fcfc4c1d72e3aa13bf2e48d9d63dccef31e6f2130467bc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ca075b28c20aa0821560c2813a5f9b52917920267984c92be0d515be126b3fa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd1460cfb5fca52390fcfc4c1d72e3aa13bf2e48d9d63dccef31e6f2130467bc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cccd455-ccc5-a73a-ffe4-e7b001ab27f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 916–965.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LawfulToForwardSearcherModel.defaultImplementation {pat : ρ} [ForwardPattern pat] [StrictForwardPattern pat]
    [PatternModel pat] [LawfulForwardPatternModel pat] :
    letI : ToForwardSearcher pat (ToForwardSearcher.DefaultForwardSearcher pat) := .defaultImplementation
    LawfulToForwardSearcherModel pat := by
  let inst : ToForwardSearcher pat (ToForwardSearcher.DefaultForwardSearcher pat) := .defaultImplementation
  refine ⟨fun s => ?_⟩
  suffices ∀ (pos : s.Pos),
      IsValidSearchFrom pat pos (Std.Iter.mk (α := ToForwardSearcher.DefaultForwardSearcher pat s) ⟨pos⟩).toList from
    this s.startPos
  intro pos
  induction pos using WellFounded.induction Slice.Pos.wellFounded_gt with | h pos ih
  rw [Std.Iter.toList_eq_match_step, Std.Iter.step_eq]
  simp only [Std.Iter.toIterM_mk, Std.IterM.internalState_mk, ne_eq]
  by_cases h : pos = s.endPos
  · simpa [h] using IsValidSearchFrom.endPos
  · simp only [h, ↓reduceDIte]
    split <;> rename_i heq
    · split at heq <;> rename_i pos' heq'
      · simp only [Id.run_pure, Std.Shrink.inflate_deflate, Std.IterM.Step.toPure_yield,
          Std.PlausibleIterStep.yield, Std.IterStep.yield.injEq] at heq
        rw [← heq.1, ← heq.2]
        apply IsValidSearchFrom.matched
        · rw [LawfulForwardPattern.skipPrefixOfNonempty?_eq,
            LawfulForwardPatternModel.skipPrefix?_eq_some_iff] at heq'
          exact heq'.isLongestMatchAt_ofSliceFrom
        · simp only [Std.IterM.toIter]
          apply ih
          refine Std.lt_of_le_of_lt (Slice.Pos.le_ofSliceFrom (pos := Slice.startPos _))
            (Slice.Pos.ofSliceFrom_lt_ofSliceFrom_iff.2 ?_)
          simpa using StrictForwardPattern.ne_startPos _ _ heq'
      · simp only [Id.run_pure, Std.Shrink.inflate_deflate, Std.IterM.Step.toPure_yield,
          Std.PlausibleIterStep.yield, Std.IterStep.yield.injEq] at heq
        rw [← heq.1, ← heq.2]
        apply IsValidSearchFrom.mismatched (by simp) _ (ih _ (by simp))
        intro p' hp' hp''
        obtain rfl : pos = p' := Std.le_antisymm hp' (by simpa using hp'')
        rwa [LawfulForwardPattern.skipPrefixOfNonempty?_eq,
          LawfulForwardPatternModel.skipPrefix?_sliceFrom_eq_none_iff] at heq'
    · split at heq <;> simp at heq
    · split at heq <;> simp at heq

/--
Inductive predicate stating that a list of search steps represents a valid backwards search from a
given position in a slice.

"Searching" here means always taking the longest match at the first position where the pattern
matches.

Hence, this predicate determines the list of search steps up to grouping of rejections.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd1460cfb5fca52390fcfc4c1d72e3aa13bf2e48d9d63dccef31e6f2130467bc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd1460cfb5fca52390fcfc4c1d72e3aa13bf2e48d9d63dccef31e6f2130467bc7.lean#L916).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `850079f67d6ba4720fd9eb1b13a853cbfcbf4aab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
