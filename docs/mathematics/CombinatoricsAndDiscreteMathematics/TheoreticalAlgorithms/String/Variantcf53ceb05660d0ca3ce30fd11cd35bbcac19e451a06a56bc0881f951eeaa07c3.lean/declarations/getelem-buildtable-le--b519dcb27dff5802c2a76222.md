# getElem_buildTable_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:141f6afa-a836-45a2-ac66-02821f156176",
  "kind": "theorem",
  "lexical_name": "getElem_buildTable_le",
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
  "slug": "getelem-buildtable-le--b519dcb27dff5802c2a76222",
  "source": {
    "blob": "3523ed6ccc84fefc5c60123b36f02364023cc522",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 78,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b519dcb27dff5802c2a762225c8b4e5c49b8d840f9be30a29837ff87092c5169",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:141f6afa-a836-45a2-ac66-02821f156176`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem_buildTable_le (pat : Slice) (i : Nat) (hi) : (buildTable pat)[i]'hi ≤ i := by
  rw [buildTable]
  split <;> rename_i h
  · simp [h] at hi
  · simp only [Array.emptyWithCapacity_eq, List.push_toArray, List.nil_append]
    suffices ∀ pat' table ht₀ ht h (i : Nat) hi, (buildTable.go pat' table ht₀ ht h)[i]'hi ≤ i from this ..
    intro pat' table ht₀ ht h i hi
    fun_induction buildTable.go with
    | case1 => assumption
    | case2 table ht₀ ht ht' ht'' => apply ht'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3523ed6ccc84fefc5c60123b36f02364023cc522` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
