# discreteTopology_iff_orderTopology_of_pred_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ffd0c404f1b353072a2899fb215df6f5fc9cdd4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89a2be02-9214-f550-dd0b-7bb0783bbb26",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4ab831b-71ab-ccae-af7a-2b5c29636042",
  "kind": "theorem",
  "lexical_name": "discreteTopology_iff_orderTopology_of_pred_succ",
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
  "slug": "discretetopology-iff-ordertopology-of-pred-succ--1cc8c07710aa03b58b6741a3",
  "source": {
    "blob": "1ffd0c404f1b353072a2899fb215df6f5fc9cdd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 54,
    "path": "GRWTSK/Topology/Discrete/Variant6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cc8c07710aa03b58b6741a3ce9d153cf2c564351364729754caf32cc4c151ed",
  "verification": {
    "reference": "docs/verification/Topology/Discrete/Variant6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4ab831b-71ab-ccae-af7a-2b5c29636042`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discreteTopology_iff_orderTopology_of_pred_succ [LinearOrder α] [PredOrder α]
    [SuccOrder α] : DiscreteTopology α ↔ OrderTopology α := by
  refine ⟨fun h ↦ ⟨?_⟩, fun h ↦ .of_predOrder_succOrder⟩
  rw [h.eq_bot, LinearOrder.bot_topologicalSpace_eq_preorderTopology]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Discrete/Variant6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Discrete/Variant6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ffd0c404f1b353072a2899fb215df6f5fc9cdd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
