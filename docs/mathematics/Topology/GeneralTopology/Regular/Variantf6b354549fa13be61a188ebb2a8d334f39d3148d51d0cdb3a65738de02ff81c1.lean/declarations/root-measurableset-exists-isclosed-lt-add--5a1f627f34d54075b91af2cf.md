# _root_.MeasurableSet.exists_isClosed_lt_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e8f98e4ffedbc2b95abc544b092b5ddb633ad1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 580,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:766f1b3e-91ca-07dc-74d2-31faeb97a66a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d32618da-e81d-b45a-5355-bdbfb13e84f7",
  "kind": "theorem",
  "lexical_name": "_root_.MeasurableSet.exists_isClosed_lt_add",
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
  "slug": "root-measurableset-exists-isclosed-lt-add--5a1f627f34d54075b91af2cf",
  "source": {
    "blob": "7e8f98e4ffedbc2b95abc544b092b5ddb633ad1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 585,
    "line": 580,
    "path": "GRWTSK/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a1f627f34d54075b91af2cff734c65f612f202c482f25a3934749fc57de2938",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d32618da-e81d-b45a-5355-bdbfb13e84f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 580–585.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.MeasurableSet.exists_isClosed_lt_add [WeaklyRegular μ] {s : Set α}
    (hs : MeasurableSet s) (hμs : μ s ≠ ∞) {ε : ℝ≥0∞} (hε : ε ≠ 0) :
    ∃ K, K ⊆ s ∧ IsClosed K ∧ μ s < μ K + ε :=
  innerRegular_measurable.exists_subset_lt_add isClosed_empty ⟨hs, hμs⟩ hμs hε
#align measurable_set.exists_is_closed_lt_add MeasurableSet.exists_isClosed_lt_add

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean#L580).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e8f98e4ffedbc2b95abc544b092b5ddb633ad1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
