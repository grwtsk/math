# hausdorffDist_le_of_infDist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b49169fd396a3dbef5d377a7f36c1b858c8db1c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 742,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b534ae49-8e5a-193a-13cd-5e683227edc2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75a9e97b-e8f4-3973-f463-7b8c7bb5825f",
  "kind": "theorem",
  "lexical_name": "hausdorffDist_le_of_infDist",
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
  "slug": "hausdorffdist-le-of-infdist--c19a99bd5b5d3bee17f3fee9",
  "source": {
    "blob": "b49169fd396a3dbef5d377a7f36c1b858c8db1c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 765,
    "line": 742,
    "path": "GRWTSK/Topology/GeneralTopology/HausdorffDistance/Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c19a99bd5b5d3bee17f3fee919a6cb7ca55c7068849f46eb3eb13c7e89d57b82",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HausdorffDistance/Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75a9e97b-e8f4-3973-f463-7b8c7bb5825f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 742–765.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hausdorffDist_le_of_infDist {r : ℝ} (hr : 0 ≤ r) (H1 : ∀ x ∈ s, infDist x t ≤ r)
    (H2 : ∀ x ∈ t, infDist x s ≤ r) : hausdorffDist s t ≤ r := by
  by_cases h1 : hausdorffEdist s t = ⊤
  · rwa [hausdorffDist, h1, ENNReal.top_toReal]
  cases' s.eq_empty_or_nonempty with hs hs
  · rwa [hs, hausdorffDist_empty']
  cases' t.eq_empty_or_nonempty with ht ht
  · rwa [ht, hausdorffDist_empty]
  have : hausdorffEdist s t ≤ ENNReal.ofReal r := by
    apply hausdorffEdist_le_of_infEdist _ _
    · intro x hx
      have I := H1 x hx
      rwa [infDist, ← ENNReal.toReal_ofReal hr,
        ENNReal.toReal_le_toReal (infEdist_ne_top ht) ENNReal.ofReal_ne_top] at I
    · intro x hx
      have I := H2 x hx
      rwa [infDist, ← ENNReal.toReal_ofReal hr,
        ENNReal.toReal_le_toReal (infEdist_ne_top hs) ENNReal.ofReal_ne_top] at I
  rwa [hausdorffDist, ← ENNReal.toReal_ofReal hr,
    ENNReal.toReal_le_toReal h1 ENNReal.ofReal_ne_top]
#align metric.Hausdorff_dist_le_of_inf_dist Metric.hausdorffDist_le_of_infDist

/-- Bounding the Hausdorff distance by exhibiting, for any point in each set,
another point in the other set at controlled distance -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HausdorffDistance/Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HausdorffDistance/Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.lean#L742).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b49169fd396a3dbef5d377a7f36c1b858c8db1c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
