# matchesAt_iff_isLongestMatchAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6cd613c06ef0f10061ebc6e78ebb9ca5b2ec1dc6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 488,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35b663c5ac95b969209cc6fc90774cb1247ad7cf0e170b6b90305e565180e0a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39aa4e08-bc7d-54ee-2304-83b09f4c50b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e80f403a-3c52-f22d-d437-2b4a14977f14",
  "kind": "theorem",
  "lexical_name": "matchesAt_iff_isLongestMatchAt",
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
  "slug": "matchesat-iff-islongestmatchat--cde758949ffb935c60b01e29",
  "source": {
    "blob": "6cd613c06ef0f10061ebc6e78ebb9ca5b2ec1dc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 496,
    "line": 488,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant35b663c5ac95b969209cc6fc90774cb1247ad7cf0e170b6b90305e565180e0a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cde758949ffb935c60b01e2956754268a3c042ff55fefc32674a103a22f1d7c3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant35b663c5ac95b969209cc6fc90774cb1247ad7cf0e170b6b90305e565180e0a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e80f403a-3c52-f22d-d437-2b4a14977f14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 488–496.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matchesAt_iff_isLongestMatchAt {pat : String} {s : Slice} {pos : s.Pos}
    (h : pat ≠ "") :
    MatchesAt pat pos ↔ ∃ (h : (pos.offset.increaseBy pat.utf8ByteSize).IsValidForSlice s),
      IsLongestMatchAt pat pos (s.pos _ h) := by
  have key := ForwardSliceSearcher.matchesAt_iff_isLongestMatchAt (pat := pat.toSlice)
    (by simpa) (pos := pos)
  simp only [utf8ByteSize_toSlice, ← isLongestMatchAt_iff_isLongestMatchAt_toSlice] at key
  rwa [matchesAt_iff_toSlice]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant35b663c5ac95b969209cc6fc90774cb1247ad7cf0e170b6b90305e565180e0a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant35b663c5ac95b969209cc6fc90774cb1247ad7cf0e170b6b90305e565180e0a5.lean#L488).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cd613c06ef0f10061ebc6e78ebb9ca5b2ec1dc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
