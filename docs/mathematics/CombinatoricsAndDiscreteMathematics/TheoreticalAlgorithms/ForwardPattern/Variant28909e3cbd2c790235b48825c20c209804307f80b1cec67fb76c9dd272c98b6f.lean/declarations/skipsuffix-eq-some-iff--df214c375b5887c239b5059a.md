# skipSuffix?_eq_some_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62ec44d69252e68c0540b8510bc4348fb4ae5be6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28909e3cbd2c790235b48825c20c209804307f80b1cec67fb76c9dd272c98b6f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:673457e4-37ef-be60-bd20-ae8114313224",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13250f2a-7044-e9b1-3419-963485c06ecf",
  "kind": "theorem",
  "lexical_name": "skipSuffix?_eq_some_iff",
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
  "slug": "skipsuffix-eq-some-iff--df214c375b5887c239b5059a",
  "source": {
    "blob": "62ec44d69252e68c0540b8510bc4348fb4ae5be6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 123,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variant28909e3cbd2c790235b48825c20c209804307f80b1cec67fb76c9dd272c98b6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df214c375b5887c239b5059ae636a88631a12d8a05988b0445f0c3620379c727",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variant28909e3cbd2c790235b48825c20c209804307f80b1cec67fb76c9dd272c98b6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13250f2a-7044-e9b1-3419-963485c06ecf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem skipSuffix?_eq_some_iff {pat s : Slice} {pos : s.Pos} :
    skipSuffix? pat s = some pos ↔ (s.sliceFrom pos).copy = pat.copy := by
  fun_cases skipSuffix? with
  | case1 h =>
    simp only [Option.some.injEq]
    obtain ⟨t, ht⟩ := endsWith_iff.1 h
    have hpc : pat.copy.utf8ByteSize = pat.utf8ByteSize := Slice.utf8ByteSize_copy
    have hsz : s.utf8ByteSize = t.utf8ByteSize + pat.utf8ByteSize := by
      have := congrArg String.utf8ByteSize ht
      simp only [utf8ByteSize_append, Slice.utf8ByteSize_copy] at this
      exact this
    have hoff : (s.endPos.offset.unoffsetBy pat.rawEndPos) = t.rawEndPos := by
      ext
      simp only [offset_endPos, Pos.Raw.byteIdx_unoffsetBy, byteIdx_rawEndPos,
        String.byteIdx_rawEndPos]
      omega
    have hval : (s.endPos.offset.unoffsetBy pat.rawEndPos).IsValidForSlice s :=
      Pos.Raw.isValidForSlice_iff_exists_append.mpr ⟨t, pat.copy, ht, hoff⟩
    have hsp : (s.pos _ hval).Splits t pat.copy := ⟨ht, hoff⟩
    rw [Slice.pos!_eq_pos hval]
    exact ⟨(· ▸ hsp.copy_sliceFrom_eq),
      fun h => hsp.pos_eq_of_eq_right (h ▸ pos.splits)⟩
  | case2 h =>
    simp only [endsWith_iff, not_exists] at h
    simp only [reduceCtorEq, false_iff]
    intro heq
    have := h (s.sliceTo pos).copy
    simp [← heq, -sliceTo_append_sliceFrom, pos.splits.eq_append] at this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variant28909e3cbd2c790235b48825c20c209804307f80b1cec67fb76c9dd272c98b6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variant28909e3cbd2c790235b48825c20c209804307f80b1cec67fb76c9dd272c98b6f.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62ec44d69252e68c0540b8510bc4348fb4ae5be6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
