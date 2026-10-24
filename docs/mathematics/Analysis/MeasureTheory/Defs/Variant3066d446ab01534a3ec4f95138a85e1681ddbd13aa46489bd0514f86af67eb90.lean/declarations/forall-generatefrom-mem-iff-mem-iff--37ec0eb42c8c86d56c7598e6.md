# forall_generateFrom_mem_iff_mem_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e8f3dbe048bb75a79a5598e919021c27240e165",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 345,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/3066d446ab01534a3ec4f95138a85e1681ddbd13aa46489bd0514f86af67eb90.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:729d1c7d-1d23-9c4a-95c8-7e3554478be3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:702e8404-34ec-0af7-e666-f3e60bd2ea59",
  "kind": "theorem",
  "lexical_name": "forall_generateFrom_mem_iff_mem_iff",
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
  "slug": "forall-generatefrom-mem-iff-mem-iff--37ec0eb42c8c86d56c7598e6",
  "source": {
    "blob": "8e8f3dbe048bb75a79a5598e919021c27240e165",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 345,
    "path": "GRWTSK/Analysis/MeasureTheory/Defs/Variant3066d446ab01534a3ec4f95138a85e1681ddbd13aa46489bd0514f86af67eb90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37ec0eb42c8c86d56c7598e6cc2122c084bd09c7c7f242c079ae5a7785df457a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Defs/Variant3066d446ab01534a3ec4f95138a85e1681ddbd13aa46489bd0514f86af67eb90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:702e8404-34ec-0af7-e666-f3e60bd2ea59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forall_generateFrom_mem_iff_mem_iff {S : Set (Set α)} {x y : α} :
    (∀ s, MeasurableSet[generateFrom S] s → (x ∈ s ↔ y ∈ s)) ↔ (∀ s ∈ S, x ∈ s ↔ y ∈ s) := by
  refine ⟨fun H s hs ↦ H s (.basic s hs), fun H s ↦ ?_⟩
  apply generateFrom_induction
  · exact fun s hs _ ↦ H s hs
  · rfl
  · exact fun _ _ ↦ Iff.not
  · intro f _ hf
    simp only [mem_iUnion, hf]

/-- If `g` is a collection of subsets of `α` such that the `σ`-algebra generated from `g` contains
the same sets as `g`, then `g` was already a `σ`-algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Defs/Variant3066d446ab01534a3ec4f95138a85e1681ddbd13aa46489bd0514f86af67eb90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Defs/Variant3066d446ab01534a3ec4f95138a85e1681ddbd13aa46489bd0514f86af67eb90.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e8f3dbe048bb75a79a5598e919021c27240e165` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
