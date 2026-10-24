# schnirelmannDensity_le_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5c5972424d93a43008c64807b91b2f8755c4aa8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1da36a463bc5a71ecbeb8dac2d988fb8baa2d5e215f8caeff64831bcd9f4b617.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cfc76a14-1ad7-28f1-b8a5-c3a9e97c97ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02e599b2-dfa2-2b09-7cc9-bb31849ccebd",
  "kind": "lemma",
  "lexical_name": "schnirelmannDensity_le_of_le",
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
  "slug": "schnirelmanndensity-le-of-le--f66e8145f3c055e6a6fe3699",
  "source": {
    "blob": "f5c5972424d93a43008c64807b91b2f8755c4aa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 86,
    "path": "GRWTSK/Topology/GeneralTopology/Schnirelmann/Variant1da36a463bc5a71ecbeb8dac2d988fb8baa2d5e215f8caeff64831bcd9f4b617.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f66e8145f3c055e6a6fe36995cb2ca8ddefa451e802b860109e100c6af4f5762",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Schnirelmann/Variant1da36a463bc5a71ecbeb8dac2d988fb8baa2d5e215f8caeff64831bcd9f4b617.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02e599b2-dfa2-2b09-7cc9-bb31849ccebd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma schnirelmannDensity_le_of_le {x : ℝ} (n : ℕ) (hn : n ≠ 0)
    (hx : #{a ∈ Ioc 0 n | a ∈ A} / n ≤ x) : schnirelmannDensity A ≤ x :=
  (schnirelmannDensity_le_div hn).trans hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Schnirelmann/Variant1da36a463bc5a71ecbeb8dac2d988fb8baa2d5e215f8caeff64831bcd9f4b617.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Schnirelmann/Variant1da36a463bc5a71ecbeb8dac2d988fb8baa2d5e215f8caeff64831bcd9f4b617.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5c5972424d93a43008c64807b91b2f8755c4aa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
