# PartialMatch.isLongestMatchAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfdb9dac-8299-094b-05a1-36979871dd26",
  "kind": "theorem",
  "lexical_name": "PartialMatch.isLongestMatchAt",
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
  "slug": "partialmatch-islongestmatchat--51c9fad3efc9dc0db0cf487e",
  "source": {
    "blob": "89f4a354aa0abd34832b82c03875f86f703da6f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 130,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant35f4cb5a890506fd452bb569ec3779e3e20e60daac67540dee698aaaea806921.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51c9fad3efc9dc0db0cf487ebf43c2cfa2b1791fd30e6cf18773994fc734876b",
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

Occurrence: `result:cfdb9dac-8299-094b-05a1-36979871dd26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PartialMatch.isLongestMatchAt
    {pat s : Slice} (hpat : pat.isEmpty = false)
    {pos : Pos.Raw}
    (h : PartialMatch pat.copy.toByteArray s.copy.toByteArray pat.utf8ByteSize pos.byteIdx)
    (h' : (pos.unoffsetBy pat.rawEndPos).IsValidForSlice s) :
    IsLongestMatchAt pat (s.pos _ h') (s.pos _ (h.isValidForSlice hpat h')) := by
  have : pos.byteIdx = (s.pos _ h').offset.byteIdx + pat.copy.toByteArray.size := by
    have := h.needlePos_le_stackPos
    simp at ⊢ this
    omega
  have h₀ : pos = (pos.unoffsetBy pat.rawEndPos).increaseBy pat.utf8ByteSize := by
    simpa [Pos.Raw.ext_iff] using this
  rw [this, utf8ByteSize_eq_size_toByteArray_copy, ← matchesAt_iff_partialMatch hpat,
    matchesAt_iff_isLongestMatchAt hpat] at h
  conv in s.pos pos _ => simp +singlePass [h₀]
  exact h.2

/--
`prefixFunction pat i …` is the maximum `k` such that `pat[0...k] = pat[stackPos - k + 1...=stackPos]`.

Using the implementation given here, computing a table of `prefixFunction pat i` for `i` in
`0...pat.size` would take cubic time, but we will later show that the `buildTable` function, which
runs in linear time, also computes this table.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant35f4cb5a890506fd452bb569ec3779e3e20e60daac67540dee698aaaea806921.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant35f4cb5a890506fd452bb569ec3779e3e20e60daac67540dee698aaaea806921.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89f4a354aa0abd34832b82c03875f86f703da6f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
