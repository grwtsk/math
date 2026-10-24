# nnreal_smul_coe_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d9cdc3dbc272b0fa3551ee100f008232454744b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 887,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c955504c3afe89c1c0524f939b5ebec195726997d4cf4fa9975be3352146f51f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f3f4115-66b5-cbb2-1dc8-90b7325d8422",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c32c379-2417-8123-657c-bcee49b0d0ed",
  "kind": "theorem",
  "lexical_name": "nnreal_smul_coe_apply",
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
  "slug": "nnreal-smul-coe-apply--b96b1b8fd11c087ccb13d7b3",
  "source": {
    "blob": "5d9cdc3dbc272b0fa3551ee100f008232454744b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 890,
    "line": 887,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasureSpace/Variantc955504c3afe89c1c0524f939b5ebec195726997d4cf4fa9975be3352146f51f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b96b1b8fd11c087ccb13d7b3812c2423c334d35ee4264eb3d8984576263270ae",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasureSpace/Variantc955504c3afe89c1c0524f939b5ebec195726997d4cf4fa9975be3352146f51f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c32c379-2417-8123-657c-bcee49b0d0ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 887–890.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nnreal_smul_coe_apply {_m : MeasurableSpace α} (c : ℝ≥0) (μ : Measure α) (s : Set α) :
    c • μ s = c * μ s := by
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasureSpace/Variantc955504c3afe89c1c0524f939b5ebec195726997d4cf4fa9975be3352146f51f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasureSpace/Variantc955504c3afe89c1c0524f939b5ebec195726997d4cf4fa9975be3352146f51f.lean#L887).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d9cdc3dbc272b0fa3551ee100f008232454744b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
