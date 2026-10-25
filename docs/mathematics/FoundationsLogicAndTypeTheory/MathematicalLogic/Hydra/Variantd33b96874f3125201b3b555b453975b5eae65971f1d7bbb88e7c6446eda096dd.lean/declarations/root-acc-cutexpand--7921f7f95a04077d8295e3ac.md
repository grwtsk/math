# _root_.Acc.cutExpand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad6a3dd7d5381455f9ea9a4bd0eba61cf9541563",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4a6a92c-b637-f01a-479c-85db9e5d33c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1cb3f9b0-6629-1707-7f80-2ead7117bf7a",
  "kind": "theorem",
  "lexical_name": "_root_.Acc.cutExpand",
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
  "slug": "root-acc-cutexpand--7921f7f95a04077d8295e3ac",
  "source": {
    "blob": "ad6a3dd7d5381455f9ea9a4bd0eba61cf9541563",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 165,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7921f7f95a04077d8295e3ac2795469193d48cbafc5c0e2412db6ef8d6f52c70",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cb3f9b0-6629-1707-7f80-2ead7117bf7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Acc.cutExpand [IsIrrefl α r] {a : α} (hacc : Acc r a) : Acc (CutExpand r) {a} := by
  induction hacc with | _ a h ih
  refine Acc.intro _ fun s ↦ ?_
  classical
  simp only [cutExpand_iff, mem_singleton]
  rintro ⟨t, a, hr, rfl, rfl⟩
  refine acc_of_singleton fun a' ↦ ?_
  rw [erase_singleton, zero_add]
  exact ih a' ∘ hr a'

/-- `CutExpand r` is well-founded when `r` is. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad6a3dd7d5381455f9ea9a4bd0eba61cf9541563` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
