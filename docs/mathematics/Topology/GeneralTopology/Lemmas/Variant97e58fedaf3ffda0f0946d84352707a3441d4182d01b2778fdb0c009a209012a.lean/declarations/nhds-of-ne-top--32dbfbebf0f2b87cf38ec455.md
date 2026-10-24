# nhds_of_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "991ff3ff54c2c6b84eae48c935d8aab3ab0c6ac3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97e58fedaf3ffda0f0946d84352707a3441d4182d01b2778fdb0c009a209012a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec08e75d-430e-a153-7f6a-ed21f3abfc17",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:858e24fa-eeac-37b3-21a7-646c23c2b4da",
  "kind": "theorem",
  "lexical_name": "nhds_of_ne_top",
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
  "slug": "nhds-of-ne-top--32dbfbebf0f2b87cf38ec455",
  "source": {
    "blob": "991ff3ff54c2c6b84eae48c935d8aab3ab0c6ac3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 229,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant97e58fedaf3ffda0f0946d84352707a3441d4182d01b2778fdb0c009a209012a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32dbfbebf0f2b87cf38ec45519d2b3f738f49ad2681ff6015cf1d5158e623b78",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant97e58fedaf3ffda0f0946d84352707a3441d4182d01b2778fdb0c009a209012a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:858e24fa-eeac-37b3-21a7-646c23c2b4da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhds_of_ne_top (xt : x ≠ ∞) : 𝓝 x = ⨅ ε > 0, 𝓟 (Icc (x - ε) (x + ε)) :=
  (hasBasis_nhds_of_ne_top xt).eq_biInf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant97e58fedaf3ffda0f0946d84352707a3441d4182d01b2778fdb0c009a209012a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant97e58fedaf3ffda0f0946d84352707a3441d4182d01b2778fdb0c009a209012a.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `991ff3ff54c2c6b84eae48c935d8aab3ab0c6ac3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
