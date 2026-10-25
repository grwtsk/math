# mem_sInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cdd2cfe1f29c5a393cdf460bc745bd3554925de6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 252,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba0669e001783236d85fe94724fd2a3488a9acb79628700c3722350f3182506d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c0ba6c1-520d-5ff4-c1ed-132d400a97fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c5cfe5c-1dac-92d4-c3d0-8a99831da37c",
  "kind": "theorem",
  "lexical_name": "mem_sInter",
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
  "slug": "mem-sinter--cd3b844719a70ce93a0323a8",
  "source": {
    "blob": "cdd2cfe1f29c5a393cdf460bc745bd3554925de6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 252,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Class/Variantba0669e001783236d85fe94724fd2a3488a9acb79628700c3722350f3182506d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd3b844719a70ce93a0323a86db0d5beb93fdef35a8583607e133cad2c393bf6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Class/Variantba0669e001783236d85fe94724fd2a3488a9acb79628700c3722350f3182506d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c5cfe5c-1dac-92d4-c3d0-8a99831da37c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_sInter {x y : Class.{u}} (h : x.Nonempty) : y ∈ ⋂₀ x ↔ ∀ z, z ∈ x → y ∈ z := by
  refine ⟨fun hy z => mem_of_mem_sInter hy, fun H => ?_⟩
  simp_rw [mem_def, sInter_apply]
  obtain ⟨z, hz⟩ := h
  obtain ⟨y, rfl, _⟩ := H z (coe_mem.2 hz)
  refine ⟨y, rfl, fun w hxw => ?_⟩
  simpa only [coe_mem, coe_apply] using H w (coe_mem.2 hxw)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Class/Variantba0669e001783236d85fe94724fd2a3488a9acb79628700c3722350f3182506d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Class/Variantba0669e001783236d85fe94724fd2a3488a9acb79628700c3722350f3182506d.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdd2cfe1f29c5a393cdf460bc745bd3554925de6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
