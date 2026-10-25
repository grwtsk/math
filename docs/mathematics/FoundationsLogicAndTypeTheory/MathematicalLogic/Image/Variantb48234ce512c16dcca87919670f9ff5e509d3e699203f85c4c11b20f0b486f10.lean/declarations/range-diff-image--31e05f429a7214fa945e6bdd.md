# range_diff_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "336b47d3cfcd186a1e5606e3a3eb40eb573adbba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b48234ce512c16dcca87919670f9ff5e509d3e699203f85c4c11b20f0b486f10.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a7b48ff-d3de-9778-b610-655cf54d7c01",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aeabe81a-050b-2945-23fa-07cd61ebc0a9",
  "kind": "theorem",
  "lexical_name": "range_diff_image",
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
  "slug": "range-diff-image--31e05f429a7214fa945e6bdd",
  "source": {
    "blob": "336b47d3cfcd186a1e5606e3a3eb40eb573adbba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1137,
    "line": 1132,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variantb48234ce512c16dcca87919670f9ff5e509d3e699203f85c4c11b20f0b486f10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31e05f429a7214fa945e6bdd1052c24b1af914227db28979fec79054720834f5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variantb48234ce512c16dcca87919670f9ff5e509d3e699203f85c4c11b20f0b486f10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aeabe81a-050b-2945-23fa-07cd61ebc0a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1132–1137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_diff_image {f : α → β} (H : Injective f) (s : Set α) : range f \ f '' s = f '' sᶜ :=
  (Subset.antisymm (range_diff_image_subset f s)) fun _ ⟨_, hx, hy⟩ =>
    hy ▸ ⟨mem_range_self _, fun ⟨_, hx', Eq⟩ => hx <| H Eq ▸ hx'⟩
#align set.range_diff_image Set.range_diff_image

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variantb48234ce512c16dcca87919670f9ff5e509d3e699203f85c4c11b20f0b486f10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variantb48234ce512c16dcca87919670f9ff5e509d3e699203f85c4c11b20f0b486f10.lean#L1132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `336b47d3cfcd186a1e5606e3a3eb40eb573adbba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
