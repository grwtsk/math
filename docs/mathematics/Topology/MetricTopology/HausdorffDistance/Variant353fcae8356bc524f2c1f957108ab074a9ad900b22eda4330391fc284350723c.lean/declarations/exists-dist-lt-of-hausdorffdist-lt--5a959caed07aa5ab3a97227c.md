# exists_dist_lt_of_hausdorffDist_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "650276b2d3fe6b9c2dd842477c22371b9e585bd8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 738,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/353fcae8356bc524f2c1f957108ab074a9ad900b22eda4330391fc284350723c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2bae3ee-c99d-de96-86a8-063ec7e0df18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d5f4163-41aa-fea7-2c1a-1db9b83edc4d",
  "kind": "theorem",
  "lexical_name": "exists_dist_lt_of_hausdorffDist_lt",
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
  "slug": "exists-dist-lt-of-hausdorffdist-lt--5a959caed07aa5ab3a97227c",
  "source": {
    "blob": "650276b2d3fe6b9c2dd842477c22371b9e585bd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 749,
    "line": 738,
    "path": "GRWTSK/Topology/MetricTopology/HausdorffDistance/Variant353fcae8356bc524f2c1f957108ab074a9ad900b22eda4330391fc284350723c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a959caed07aa5ab3a97227cb31bfffab9b41555387f2bc1cc2b01328fdd0be5",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/HausdorffDistance/Variant353fcae8356bc524f2c1f957108ab074a9ad900b22eda4330391fc284350723c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d5f4163-41aa-fea7-2c1a-1db9b83edc4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 738–749.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_dist_lt_of_hausdorffDist_lt {r : ℝ} (h : x ∈ s) (H : hausdorffDist s t < r)
    (fin : hausdorffEdist s t ≠ ⊤) : ∃ y ∈ t, dist x y < r := by
  have r0 : 0 < r := lt_of_le_of_lt hausdorffDist_nonneg H
  have : hausdorffEdist s t < ENNReal.ofReal r := by
    rwa [hausdorffDist, ← ENNReal.toReal_ofReal (le_of_lt r0),
      ENNReal.toReal_lt_toReal fin ENNReal.ofReal_ne_top] at H
  rcases exists_edist_lt_of_hausdorffEdist_lt h this with ⟨y, hy, yr⟩
  rw [edist_dist, ENNReal.ofReal_lt_ofReal_iff r0] at yr
  exact ⟨y, hy, yr⟩

/-- If the Hausdorff distance is `< r`, any point in one of the sets is at distance
`< r` of a point in the other set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/HausdorffDistance/Variant353fcae8356bc524f2c1f957108ab074a9ad900b22eda4330391fc284350723c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/HausdorffDistance/Variant353fcae8356bc524f2c1f957108ab074a9ad900b22eda4330391fc284350723c.lean#L738).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `650276b2d3fe6b9c2dd842477c22371b9e585bd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
