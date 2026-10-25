# same_leaf_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d3d1050165b46d7884238b50bb22edb7f903ecaf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/6659fb38d1184e7f80f80643d935b695331ca1c7557383462efa2c00d62efbcb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4fef3859-4016-ed11-2964-efd2bef9b38a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4314fec5-86b3-9caa-23f6-cc91d41e5899",
  "kind": "theorem",
  "lexical_name": "same_leaf_equiv",
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
  "slug": "same-leaf-equiv--c728c99d8adb0e1f08da74a4",
  "source": {
    "blob": "d3d1050165b46d7884238b50bb22edb7f903ecaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variant6659fb38d1184e7f80f80643d935b695331ca1c7557383462efa2c00d62efbcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c728c99d8adb0e1f08da74a41debd4c3e297f9ee321c8601660a26aa2c3b7613",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variant6659fb38d1184e7f80f80643d935b695331ca1c7557383462efa2c00d62efbcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4314fec5-86b3-9caa-23f6-cc91d41e5899`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem same_leaf_equiv {x y : V} (h : G.SameLeaf x y) :
    Nonempty ((G.interface x).Carrier ≃ (G.interface y).Carrier) := by
  induction h with
  | rel x y hxy => exact G.invertible_edge_equiv hxy
  | refl x => exact ⟨Equiv.refl _⟩
  | symm x y _ ih =>
      obtain ⟨e⟩ := ih
      exact ⟨e.symm⟩
  | trans x y z _ _ ih₁ ih₂ =>
      obtain ⟨e⟩ := ih₁
      obtain ⟨f⟩ := ih₂
      exact ⟨e.trans f⟩

/-- Only the selected nodes inhabit the finite semantic leaf quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variant6659fb38d1184e7f80f80643d935b695331ca1c7557383462efa2c00d62efbcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variant6659fb38d1184e7f80f80643d935b695331ca1c7557383462efa2c00d62efbcb.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3d1050165b46d7884238b50bb22edb7f903ecaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
