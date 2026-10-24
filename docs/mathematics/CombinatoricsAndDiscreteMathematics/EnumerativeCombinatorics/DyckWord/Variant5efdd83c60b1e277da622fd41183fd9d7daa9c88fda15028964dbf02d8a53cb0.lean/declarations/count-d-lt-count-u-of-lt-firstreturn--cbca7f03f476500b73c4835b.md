# count_D_lt_count_U_of_lt_firstReturn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb7d169a4f6a4e154bc5cc66d06c258ab1cc0b60",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 282,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5efdd83c60b1e277da622fd41183fd9d7daa9c88fda15028964dbf02d8a53cb0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e17aaa61-960c-8851-3dc0-d1975c682110",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:635d5655-ccb8-598c-b1b1-0e734bb082be",
  "kind": "lemma",
  "lexical_name": "count_D_lt_count_U_of_lt_firstReturn",
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
  "slug": "count-d-lt-count-u-of-lt-firstreturn--cbca7f03f476500b73c4835b",
  "source": {
    "blob": "eb7d169a4f6a4e154bc5cc66d06c258ab1cc0b60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 282,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variant5efdd83c60b1e277da622fd41183fd9d7daa9c88fda15028964dbf02d8a53cb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbca7f03f476500b73c4835b2e6a313fd734faf17247ca76d94d4083eeb7f9eb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variant5efdd83c60b1e277da622fd41183fd9d7daa9c88fda15028964dbf02d8a53cb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:635d5655-ccb8-598c-b1b1-0e734bb082be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma count_D_lt_count_U_of_lt_firstReturn {i : ℕ} (hi : i < p.firstReturn) :
    (p.toList.take (i + 1)).count D < (p.toList.take (i + 1)).count U := by
  have ne := not_of_lt_findIdx hi
  rw [decide_eq_false_iff_not, ← ne_eq, getElem_range] at ne
  exact lt_of_le_of_ne (p.count_D_le_count_U (i + 1)) ne.symm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variant5efdd83c60b1e277da622fd41183fd9d7daa9c88fda15028964dbf02d8a53cb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variant5efdd83c60b1e277da622fd41183fd9d7daa9c88fda15028964dbf02d8a53cb0.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb7d169a4f6a4e154bc5cc66d06c258ab1cc0b60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
