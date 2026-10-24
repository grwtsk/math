# contains_slice_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ea66311-f512-3cff-38d1-52b3785d6dc2",
  "kind": "theorem",
  "lexical_name": "contains_slice_iff",
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
  "slug": "contains-slice-iff--0cec61245db575d8d0610618",
  "source": {
    "blob": "71ebdc858eb11a35a30c55f81b928aedc79c4c12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantee5be1bd6b97dbd712c73557e7b2fc564966315e7985f8a5c9e45b1b4c0a84b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cec61245db575d8d06106183032ba9440523f036267433bd26ece999358713d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantee5be1bd6b97dbd712c73557e7b2fc564966315e7985f8a5c9e45b1b4c0a84b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ea66311-f512-3cff-38d1-52b3785d6dc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contains_slice_iff {t s : Slice} :
    s.contains t ↔ t.copy.toList <:+: s.copy.toList := by
  by_cases ht : t.isEmpty
  · simp [contains_eq_true_of_isEmpty ht s, copy_eq_empty_iff.mpr ht, String.toList_empty]
  · simp only [Bool.not_eq_true] at ht
    have := Pattern.Model.ForwardSliceSearcher.strictPatternModel ht
    have := Pattern.Model.ForwardSliceSearcher.lawfulToForwardSearcherModel ht
    simp only [Pattern.Model.contains_eq_true_iff,
      Pattern.Model.ForwardSliceSearcher.exists_matchesAt_iff_eq_append, isInfix_toList_iff]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantee5be1bd6b97dbd712c73557e7b2fc564966315e7985f8a5c9e45b1b4c0a84b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantee5be1bd6b97dbd712c73557e7b2fc564966315e7985f8a5c9e45b1b4c0a84b3.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71ebdc858eb11a35a30c55f81b928aedc79c4c12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
