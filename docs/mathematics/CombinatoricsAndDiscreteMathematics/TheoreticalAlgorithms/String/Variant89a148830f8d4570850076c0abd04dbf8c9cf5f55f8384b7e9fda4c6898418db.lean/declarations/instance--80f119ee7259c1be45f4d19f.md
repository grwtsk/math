# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5cf90aaea43a0068237dc430eccb2113b23bf588071987bd3cc9f5c887ed425",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--80f119ee7259c1be45f4d19f",
  "source": {
    "blob": "b3210bc02d20d31d80f7c04af8dca1a398f61ceb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80f119ee7259c1be45f4d19f5adeee569485eab02e4aa06108b8a7e6c5e3daa7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5cf90aaea43a0068237dc430eccb2113b23bf588071987bd3cc9f5c887ed425`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (s : Slice) : Std.Iterator (ForwardSliceSearcher s) Id (SearchStep s) where
  IsPlausibleStep it
    | .yield it' out | .skip it' =>
     match it.internalState with
      | .emptyBefore pos => (∃ h, it'.internalState = .emptyAt pos h) ∨ it'.internalState = .atEnd
      | .emptyAt pos h => ∃ newPos, pos < newPos ∧ it'.internalState = .emptyBefore newPos
      | .proper needle table ht stackPos needlePos hn =>
        (∃ newStackPos newNeedlePos hn,
          it'.internalState = .proper needle table ht newStackPos newNeedlePos hn ∧
            ((s.utf8ByteSize - newStackPos.byteIdx < s.utf8ByteSize - stackPos.byteIdx) ∨
              (newStackPos = stackPos ∧ newNeedlePos < needlePos))) ∨
        it'.internalState = .atEnd
      | .atEnd => False
    | .done => True
  step := fun ⟨iter⟩ =>
    match iter with
    | .emptyBefore pos =>
      let res := .matched pos pos
      if h : pos ≠ s.endPos then
        pure (.deflate ⟨.yield ⟨.emptyAt pos h⟩ res, by simp [h]⟩)
      else
        pure (.deflate ⟨.yield ⟨.atEnd⟩ res, by simp⟩)
    | .emptyAt pos h =>
      let res := .rejected pos (pos.next h)
      pure (.deflate ⟨.yield ⟨.emptyBefore (pos.next h)⟩ res, by simp⟩)
    | .proper needle table htable stackPos needlePos hn =>
      -- The code that follows is verified in `Init.Data.String.lemmas.Pattern.String.KMP`. There it
      -- is shown that all of the `pos!` invocations do not panic and that the code correctly
      -- searches the stack for the needle.
      --
      -- To make the code easier to follow, we document the invariants already here.
      -- **Invariant 1:** we have already covered everything up until `stackPos - needlePos` (exclusive),
      -- with matches and rejections.
      -- **Invariant 2:** `stackPos - needlePos` is a valid position
      -- **Invariant 3:** the range from `stackPos - needlePos` to `stackPos` (exclusive) is a
      -- prefix of the pattern.
      if h₁' : (stackPos.unoffsetBy needlePos).increaseBy needle.utf8ByteSize ≤ s.rawEndPos then
        have h₁ : stackPos < s.rawEndPos := by simp [Pos.Raw.lt_iff, Pos.Raw.le_iff] at ⊢ hn h₁'; omega
        let stackByte := s.getUTF8Byte stackPos h₁
        let patByte := needle.getUTF8Byte needlePos hn
        if stackByte = patByte then
          let nextStackPos := stackPos.inc
          let nextNeedlePos := needlePos.inc
          if h : nextNeedlePos = needle.rawEndPos then
            -- Safety: the section from `nextStackPos.decreaseBy needle.utf8ByteSize` to `nextStackPos`
            -- (exclusive) is exactly the needle, so it must represent a valid range.
            let res := .matched (s.pos! (nextStackPos.unoffsetBy nextNeedlePos)) (s.pos! nextStackPos)
            -- Invariants still satisfied
            pure (.deflate ⟨.yield ⟨.proper needle table htable nextStackPos 0
              (by simp [Pos.Raw.lt_iff] at hn ⊢; omega)⟩ res,
               by simpa using ⟨_, _, ⟨rfl, rfl⟩, by simp [Pos.Raw.lt_iff] at hn ⊢; omega,
                Or.inl (by simp [nextStackPos, Pos.Raw.lt_iff] at h₁ ⊢; omega)⟩⟩)
          else
            -- Invariants still satisfied
            pure (.deflate ⟨.skip ⟨.proper needle table htable nextStackPos nextNeedlePos
              (by simp [Pos.Raw.lt_iff, nextNeedlePos, Pos.Raw.ext_iff] at h hn ⊢; omega)⟩,
               by simpa using ⟨_, _, ⟨rfl, rfl⟩, by simp [nextNeedlePos, Pos.Raw.lt_iff, Pos.Raw.ext_iff] at h hn ⊢; omega,
                Or.inl (by simp [nextStackPos, Pos.Raw.lt_iff] at h₁ ⊢; omega)⟩⟩)
        else
          if hnp : needlePos = 0 then
            -- Safety: by invariant 2
            let basePos := s.pos! stackPos
            -- Since we report (mis)matches by code point and not by byte, missing in the first byte
            -- means that we should skip ahead to the next code point.
            let nextStackPos := s.posGT stackPos h₁
            let res := .rejected basePos nextStackPos
            -- Invariants still satisfied
            pure (.deflate ⟨.yield ⟨.proper needle table htable nextStackPos.offset 0
              (by simp [Pos.Raw.lt_iff] at hn ⊢; omega)⟩ res,
               by simpa using ⟨_, _, ⟨rfl, rfl⟩, by simp [Pos.Raw.lt_iff] at hn ⊢; omega,
                Or.inl (by
                  have := lt_offset_posGT (h := h₁)
                  have t₀ := (posGT _ _ h₁).isValidForSlice.le_utf8ByteSize
                  simp [nextStackPos, Pos.Raw.lt_iff] at this ⊢; omega)⟩⟩)
          else
            let newNeedlePos := table[needlePos.byteIdx - 1]'(by simp [Pos.Raw.lt_iff] at hn; omega)
            if newNeedlePos = 0 then
              -- Safety: by invariant 2
              let basePos := s.pos! (stackPos.unoffsetBy needlePos)
              -- Since we report (mis)matches by code point and not by byte, missing in the first byte
              -- means that we should skip ahead to the next code point.
              let nextStackPos := s.posGE stackPos (Pos.Raw.le_of_lt h₁)
              let res := .rejected basePos nextStackPos
              -- Invariants still satisfied
              pure (.deflate ⟨.yield ⟨.proper needle table htable nextStackPos.offset 0
                (by simp [Pos.Raw.lt_iff] at hn ⊢; omega)⟩ res,
                 by simpa using ⟨_, _, ⟨rfl, rfl⟩, by simp [Pos.Raw.lt_iff] at hn ⊢; omega, by
                  have h₂ := le_offset_posGE (h := Pos.Raw.le_of_lt h₁)
                  have h₃ := (s.posGE _ (Pos.Raw.le_of_lt h₁)).isValidForSlice.le_utf8ByteSize
                  simp [Pos.Raw.le_iff, Pos.Raw.lt_iff, Pos.Raw.ext_iff, nextStackPos] at ⊢ h₂ hnp
                  omega⟩⟩)
            else
              -- Safety: by invariant 2
              let oldBasePos := s.pos! (stackPos.unoffsetBy needlePos)
              -- Safety : by invariant 2 and the definition of the prefix table
              let newBasePos := s.pos! (stackPos.unoffsetBy ⟨newNeedlePos⟩)
              let res := .rejected oldBasePos newBasePos
              -- Invariants still satisfied by definition of the prefix table
              pure (.deflate ⟨.yield ⟨.proper needle table htable stackPos ⟨newNeedlePos⟩
                (by
                  subst htable
                  have := getElem_buildTable_le needle (needlePos.byteIdx - 1) (by simp [Pos.Raw.lt_iff] at hn; omega)
                  simp [newNeedlePos, Pos.Raw.lt_iff] at hn ⊢
                  omega)⟩ res,
                by
                  simp only [proper.injEq, heq_eq_eq, true_and, exists_and_left, exists_prop,
                    reduceCtorEq, or_false]
                  refine ⟨_, _, ⟨rfl, rfl⟩, ?_, Or.inr ⟨rfl, ?_⟩⟩
                  all_goals
                    subst htable
                    have := getElem_buildTable_le needle (needlePos.byteIdx - 1) (by simp [Pos.Raw.lt_iff] at hn; omega)
                    simp [newNeedlePos, Pos.Raw.lt_iff] at hn hnp ⊢
                    omega⟩)
      else
        if stackPos.unoffsetBy needlePos < s.rawEndPos then
          let basePos := stackPos.unoffsetBy needlePos
          -- Safety: by invariant 2
          let res := .rejected (s.pos! basePos) s.endPos
          pure (.deflate ⟨.yield ⟨.atEnd⟩ res, by simp⟩)
        else
          pure (.deflate ⟨.done, by simp⟩)
    | .atEnd => pure (.deflate ⟨.done, by simp⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3210bc02d20d31d80f7c04af8dca1a398f61ceb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
