# nhds_coe_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40340674d46dde433dedcf0e4442180db38f1538",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:76a7c572-15d5-1b61-1dcd-b6400c96dd60",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79abe18f-30e1-a638-f6de-7f0549c10eb2",
  "kind": "theorem",
  "lexical_name": "nhds_coe_coe",
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
  "slug": "nhds-coe-coe--fe58c6634dc0404ffd82d90c",
  "source": {
    "blob": "40340674d46dde433dedcf0e4442180db38f1538",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe58c6634dc0404ffd82d90c26a7a558af4731272b1d155daae7d6a171f8a6f0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79abe18f-30e1-a638-f6de-7f0549c10eb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhds_coe_coe {r p : ℝ≥0} :
    𝓝 ((r : ℝ≥0∞), (p : ℝ≥0∞)) = (𝓝 (r, p)).map fun p : ℝ≥0 × ℝ≥0 => (↑p.1, ↑p.2) :=
  ((isOpenEmbedding_coe.prodMap isOpenEmbedding_coe).map_nhds_eq (r, p)).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40340674d46dde433dedcf0e4442180db38f1538` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
