# repairedTransfer_zero_occurrence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9cb3a4e05d3ee70ba135372f1237d9522a157470",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dfcc4019-c2c3-14a5-fc93-dc3fb339662d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd655df5-d0ea-c6fa-7fbb-9bc89cb02dc0",
  "kind": "theorem",
  "lexical_name": "repairedTransfer_zero_occurrence",
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
  "slug": "repairedtransfer-zero-occurrence--4fb714a14021c9e0e8e751f5",
  "source": {
    "blob": "9cb3a4e05d3ee70ba135372f1237d9522a157470",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 113,
    "path": "GRWTSK/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fb714a14021c9e0e8e751f5c1d469b39c48b1e32580fa14cfd16cc713cbd4f1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd655df5-d0ea-c6fa-7fbb-9bc89cb02dc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem repairedTransfer_zero_occurrence (o : ZeroObject.ZeroOccurrence) :
    repairedTransfer (ZeroObject.shiftedValue o) = 0 := by
  rw [repairedTransfer_eq_product _ (ZeroObject.shiftedValue_ne_half o)]
  rw [show (1 / 2 : ℂ) + ZeroObject.shiftedValue o = o.1.val by
    unfold ZeroObject.shiftedValue; ring, o.1.property.1]
  simp

/-- Any finite-valued replacement of zeta retains the source's zero at the pole. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cb3a4e05d3ee70ba135372f1237d9522a157470` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
