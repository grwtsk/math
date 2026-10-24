# isSome_succMany?_of_lt_length_toList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc976d5553f3aa67ec79cec0d3bce3678eff4f28",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3053,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69454bcb5d2eecfd1d211d3033942ffbc895954a52df62224e1b0927d57a87b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40c420f5-38c4-3b42-42a0-4306dab8d73a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7347fbd-eca6-3e07-bd2f-86c40aead12c",
  "kind": "theorem",
  "lexical_name": "isSome_succMany?_of_lt_length_toList",
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
  "slug": "issome-succmany-of-lt-length-tolist--7e273ebb9a864fd0153b9a29",
  "source": {
    "blob": "dc976d5553f3aa67ec79cec0d3bce3678eff4f28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3060,
    "line": 3053,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant69454bcb5d2eecfd1d211d3033942ffbc895954a52df62224e1b0927d57a87b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e273ebb9a864fd0153b9a294a183488ab7d5f61279f6dc7b9ad2238033baa1f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant69454bcb5d2eecfd1d211d3033942ffbc895954a52df62224e1b0927d57a87b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7347fbd-eca6-3e07-bd2f-86c40aead12c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3053–3060.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSome_succMany?_of_lt_length_toList [LE α] [DecidableLE α] [UpwardEnumerable α]
    [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLE α] [Rxc.IsAlwaysFinite α]
    {i} (h : i < r.toList.length) :
    (UpwardEnumerable.succMany? (i + 1) r.lower).isSome := by
  have : r.toList[i]?.isSome := by simp [h]
  simp only [getElem?_toList_eq, Option.isSome_filter] at this
  exact Option.isSome_of_any this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant69454bcb5d2eecfd1d211d3033942ffbc895954a52df62224e1b0927d57a87b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant69454bcb5d2eecfd1d211d3033942ffbc895954a52df62224e1b0927d57a87b8.lean#L3053).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc976d5553f3aa67ec79cec0d3bce3678eff4f28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
