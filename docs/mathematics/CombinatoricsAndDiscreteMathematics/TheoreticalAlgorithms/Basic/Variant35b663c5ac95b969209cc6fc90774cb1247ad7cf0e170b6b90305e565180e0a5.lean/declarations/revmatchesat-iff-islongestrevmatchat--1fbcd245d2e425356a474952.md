# revMatchesAt_iff_isLongestRevMatchAt

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
      "line": 497,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35b663c5ac95b969209cc6fc90774cb1247ad7cf0e170b6b90305e565180e0a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a78e48b-61f3-eb12-94cd-21ad5835326f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5595bab1-d196-dbbd-c329-74887125767d",
  "kind": "theorem",
  "lexical_name": "revMatchesAt_iff_isLongestRevMatchAt",
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
  "slug": "revmatchesat-iff-islongestrevmatchat--1fbcd245d2e425356a474952",
  "source": {
    "blob": "6cd613c06ef0f10061ebc6e78ebb9ca5b2ec1dc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 497,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant35b663c5ac95b969209cc6fc90774cb1247ad7cf0e170b6b90305e565180e0a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fbcd245d2e425356a474952233fdf2178b2002a293162f25600a61e451db6f3",
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

Occurrence: `result:5595bab1-d196-dbbd-c329-74887125767d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 497–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem revMatchesAt_iff_isLongestRevMatchAt {pat : String} {s : Slice} {pos : s.Pos}
    (h : pat ≠ "") :
    RevMatchesAt pat pos ↔
      ∃ (h : (pos.offset.decreaseBy pat.utf8ByteSize).IsValidForSlice s),
        IsLongestRevMatchAt pat (s.pos _ h) pos := by
  have key := ForwardSliceSearcher.revMatchesAt_iff_isLongestRevMatchAt (pat := pat.toSlice)
    (by simpa) (pos := pos)
  simp only [utf8ByteSize_toSlice, ← isLongestRevMatchAt_iff_isLongestRevMatchAt_toSlice] at key
  rwa [revMatchesAt_iff_toSlice]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant35b663c5ac95b969209cc6fc90774cb1247ad7cf0e170b6b90305e565180e0a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant35b663c5ac95b969209cc6fc90774cb1247ad7cf0e170b6b90305e565180e0a5.lean#L497).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cd613c06ef0f10061ebc6e78ebb9ca5b2ec1dc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
