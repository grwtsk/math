# Pos.Raw.isValid_copy_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "243a0bd99068f54a0ff51fb4622c3786461bbfbd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 842,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e42f494b424f6cb5257b921f94709578f5a9581c9eecdc9c42f5036c4da3e0b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f59cd8be-b4eb-291f-24a6-d83d94936428",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:522cb1fe-02a1-95a2-084a-6288201a9a2c",
  "kind": "theorem",
  "lexical_name": "Pos.Raw.isValid_copy_iff",
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
  "slug": "pos-raw-isvalid-copy-iff--6eff606164a575fd1371bfa6",
  "source": {
    "blob": "243a0bd99068f54a0ff51fb4622c3786461bbfbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 870,
    "line": 842,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante42f494b424f6cb5257b921f94709578f5a9581c9eecdc9c42f5036c4da3e0b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6eff606164a575fd1371bfa696689d5bca429d96ccb5e5a82f308de017848034",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante42f494b424f6cb5257b921f94709578f5a9581c9eecdc9c42f5036c4da3e0b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:522cb1fe-02a1-95a2-084a-6288201a9a2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 842–870.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pos.Raw.isValid_copy_iff {s : Slice} {p : Pos.Raw} :
    p.IsValid s.copy ↔ p.IsValidForSlice s := by
  rw [isValid_iff_isValidUTF8_extract_zero]
  refine ⟨fun ⟨h₁, h₂⟩ => ⟨?_, ?_⟩, fun ⟨h₁, h₂⟩ => ⟨?_, ?_⟩⟩
  · simpa using h₁
  · have := s.startInclusive_le_endExclusive
    simp_all only [Slice.rawEndPos_copy, le_iff, Slice.byteIdx_rawEndPos, Slice.utf8ByteSize_eq,
      Pos.le_iff]
    rw [Slice.toByteArray_copy, ByteArray.extract_extract, Nat.add_zero, Nat.min_eq_left (by omega)] at h₂
    rw [← byteIdx_offsetBy, Pos.Raw.isValidUTF8_extract_iff] at h₂
    · rcases h₂ with (h₂|⟨-, h₂⟩)
      · rw [← h₂]
        exact s.startInclusive.isValid
      · exact h₂
    · simp [le_iff]
    · have := s.endExclusive.isValid.le_rawEndPos
      simp_all [le_iff]
      omega
  · simpa using h₁
  · have := s.startInclusive_le_endExclusive
    simp_all only [le_iff, Slice.byteIdx_rawEndPos, Slice.utf8ByteSize_eq, Pos.le_iff]
    rw [Slice.toByteArray_copy, ByteArray.extract_extract, Nat.add_zero, Nat.min_eq_left (by omega)]
    rw [← byteIdx_offsetBy, Pos.Raw.isValidUTF8_extract_iff]
    · exact Or.inr ⟨s.startInclusive.isValid, h₂⟩
    · simp [le_iff]
    · have := s.endExclusive.isValid.le_rawEndPos
      simp_all [le_iff]
      omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante42f494b424f6cb5257b921f94709578f5a9581c9eecdc9c42f5036c4da3e0b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante42f494b424f6cb5257b921f94709578f5a9581c9eecdc9c42f5036c4da3e0b5.lean#L842).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `243a0bd99068f54a0ff51fb4622c3786461bbfbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
