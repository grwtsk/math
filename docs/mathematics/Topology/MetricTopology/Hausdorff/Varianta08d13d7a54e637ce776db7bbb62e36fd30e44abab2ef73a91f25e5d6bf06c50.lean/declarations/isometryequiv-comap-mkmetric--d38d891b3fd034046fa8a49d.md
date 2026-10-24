# isometryEquiv_comap_mkMetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d2ad65c1e4383e93c02ed7834c589c2f4dfd211",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 377,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a08d13d7a54e637ce776db7bbb62e36fd30e44abab2ef73a91f25e5d6bf06c50.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4e5d03b-8fa7-c9d1-ed18-b0a58ff7fa2b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a13dfb10-759f-b1f7-112f-62c062929aa4",
  "kind": "theorem",
  "lexical_name": "isometryEquiv_comap_mkMetric",
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
  "slug": "isometryequiv-comap-mkmetric--d38d891b3fd034046fa8a49d",
  "source": {
    "blob": "3d2ad65c1e4383e93c02ed7834c589c2f4dfd211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 377,
    "path": "GRWTSK/Topology/MetricTopology/Hausdorff/Varianta08d13d7a54e637ce776db7bbb62e36fd30e44abab2ef73a91f25e5d6bf06c50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d38d891b3fd034046fa8a49d87951b038e265c4455a29a1a76dd58440261aede",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hausdorff/Varianta08d13d7a54e637ce776db7bbb62e36fd30e44abab2ef73a91f25e5d6bf06c50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a13dfb10-759f-b1f7-112f-62c062929aa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isometryEquiv_comap_mkMetric (m : ℝ≥0∞ → ℝ≥0∞) (f : X ≃ᵢ Y) :
    comap f (mkMetric m) = mkMetric m :=
  isometry_comap_mkMetric _ f.isometry (Or.inr f.surjective)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hausdorff/Varianta08d13d7a54e637ce776db7bbb62e36fd30e44abab2ef73a91f25e5d6bf06c50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hausdorff/Varianta08d13d7a54e637ce776db7bbb62e36fd30e44abab2ef73a91f25e5d6bf06c50.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d2ad65c1e4383e93c02ed7834c589c2f4dfd211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
