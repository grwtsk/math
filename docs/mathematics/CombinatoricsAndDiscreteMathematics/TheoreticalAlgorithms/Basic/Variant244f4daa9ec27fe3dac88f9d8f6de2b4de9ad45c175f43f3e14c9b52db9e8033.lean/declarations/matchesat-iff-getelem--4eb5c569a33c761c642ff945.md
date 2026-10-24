# matchesAt_iff_getElem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdad6f5c-b1c4-58f0-d67c-3fc06a62e9cb",
  "kind": "theorem",
  "lexical_name": "matchesAt_iff_getElem",
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
  "slug": "matchesat-iff-getelem--4eb5c569a33c761c642ff945",
  "source": {
    "blob": "048ea0d07c008ec637083e66b3513b0cfdb197a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 253,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant244f4daa9ec27fe3dac88f9d8f6de2b4de9ad45c175f43f3e14c9b52db9e8033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4eb5c569a33c761c642ff9457c8b650c03734b537cc6a62374c6d8a3eb6c896b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant244f4daa9ec27fe3dac88f9d8f6de2b4de9ad45c175f43f3e14c9b52db9e8033.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdad6f5c-b1c4-58f0-d67c-3fc06a62e9cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matchesAt_iff_getElem {pat s : Slice} {pos : s.Pos} (h : pat.isEmpty = false) :
    MatchesAt pat pos ↔
      ∃ (h : pos.offset.byteIdx + pat.copy.toByteArray.size ≤ s.copy.toByteArray.size),
        ∀ (j), (hj : j < pat.copy.toByteArray.size) →
          pat.copy.toByteArray[j] = s.copy.toByteArray[pos.offset.byteIdx + j] := by
  rw [matchesAt_iff_isLongestMatchAt h]
  refine ⟨fun ⟨h₁, h₂⟩ => ?_, fun ⟨h₁, h₂⟩ => ?_⟩
  · refine ⟨by simpa using h₁.le_utf8ByteSize, fun j hj => ?_⟩
    rw [isLongestMatchAt_iff_extract h] at h₂
    replace h₂ := congrArg (·[j]?) h₂
    simp only [offset_pos, Pos.Raw.byteIdx_increaseBy] at h₂
    rw [getElem?_pos, getElem?_pos, ByteArray.getElem_extract] at h₂
    · simpa using h₂.symm
    · have := h₁.le_utf8ByteSize
      simp only [Pos.Raw.byteIdx_increaseBy, size_toByteArray, utf8ByteSize_copy,
        ByteArray.size_extract, gt_iff_lt] at this ⊢ hj
      omega
  · suffices s.copy.toByteArray.extract pos.offset.byteIdx
        (pos.offset.byteIdx + pat.copy.toByteArray.size) = pat.copy.toByteArray by
      have h₀ := (((Pos.Raw.isValidUTF8_extract_iff _ _ ?_ ?_).1
        (this ▸ pat.copy.isValidUTF8)).resolve_left ?_).2
      · exact ⟨by simpa using! h₀, (isLongestMatchAt_iff_extract h).2 (by simpa using! this)⟩
      · simp [Pos.Raw.le_iff]
      · simpa [Pos.Raw.le_iff] using h₁
      · simpa [Pos.Raw.ext_iff, ← Slice.isEmpty_iff]
    refine ByteArray.ext_getElem ?_ (fun i hi hi' => ?_)
    · simp only [size_toByteArray, utf8ByteSize_copy, ByteArray.size_extract] at ⊢ h₁
      omega
    · simp [ByteArray.getElem_extract, h₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant244f4daa9ec27fe3dac88f9d8f6de2b4de9ad45c175f43f3e14c9b52db9e8033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant244f4daa9ec27fe3dac88f9d8f6de2b4de9ad45c175f43f3e14c9b52db9e8033.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `048ea0d07c008ec637083e66b3513b0cfdb197a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
