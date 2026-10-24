# norm_setToL1SCLM_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f6960348d93265cd0740b8ac3057820662352d3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/65be1de468c02ef9df54fa766f1dd1a6519cfed732ddaf916cedc41c950cd5ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:efb02bc8-430d-3895-2e8a-b34e0891a503",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b2bec7b-b32a-e1ce-888c-0f8cb9845b9a",
  "kind": "theorem",
  "lexical_name": "norm_setToL1SCLM_le",
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
  "slug": "norm-settol1sclm-le--9b71adf0ab5afed9cd019fae",
  "source": {
    "blob": "7f6960348d93265cd0740b8ac3057820662352d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 287,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SimpleFunc/Variant65be1de468c02ef9df54fa766f1dd1a6519cfed732ddaf916cedc41c950cd5ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b71adf0ab5afed9cd019faec363f79bbf6418b02f85f40fdd2a1aa4dadecb24",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SimpleFunc/Variant65be1de468c02ef9df54fa766f1dd1a6519cfed732ddaf916cedc41c950cd5ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b2bec7b-b32a-e1ce-888c-0f8cb9845b9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_setToL1SCLM_le {T : Set α → E →L[ℝ] F} {C : ℝ} (hT : DominatedFinMeasAdditive μ T C)
    (hC : 0 ≤ C) : ‖setToL1SCLM α E μ hT‖ ≤ C :=
  LinearMap.mkContinuous_norm_le _ hC _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SimpleFunc/Variant65be1de468c02ef9df54fa766f1dd1a6519cfed732ddaf916cedc41c950cd5ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SimpleFunc/Variant65be1de468c02ef9df54fa766f1dd1a6519cfed732ddaf916cedc41c950cd5ba.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f6960348d93265cd0740b8ac3057820662352d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
