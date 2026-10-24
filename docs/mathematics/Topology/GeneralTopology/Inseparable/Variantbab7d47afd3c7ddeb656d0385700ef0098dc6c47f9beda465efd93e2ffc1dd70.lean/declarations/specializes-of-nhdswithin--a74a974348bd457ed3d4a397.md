# specializes_of_nhdsWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2964dc3b8ece309f0f62f7e1b56141b8900e11d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/bab7d47afd3c7ddeb656d0385700ef0098dc6c47f9beda465efd93e2ffc1dd70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f311759-1830-0291-3f30-3d2df7220824",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b9fdf21-b299-24d8-e842-8f5f22696d44",
  "kind": "theorem",
  "lexical_name": "specializes_of_nhdsWithin",
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
  "slug": "specializes-of-nhdswithin--a74a974348bd457ed3d4a397",
  "source": {
    "blob": "2964dc3b8ece309f0f62f7e1b56141b8900e11d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 139,
    "path": "GRWTSK/Topology/GeneralTopology/Inseparable/Variantbab7d47afd3c7ddeb656d0385700ef0098dc6c47f9beda465efd93e2ffc1dd70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a74a974348bd457ed3d4a397926b8bcfd5681b38c716ad6f94b87428862d0afe",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Inseparable/Variantbab7d47afd3c7ddeb656d0385700ef0098dc6c47f9beda465efd93e2ffc1dd70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b9fdf21-b299-24d8-e842-8f5f22696d44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem specializes_of_nhdsWithin (h₁ : 𝓝[s] x ≤ 𝓝[s] y) (h₂ : x ∈ s) : x ⤳ y :=
  specializes_iff_pure.2 <|
    calc
      pure x ≤ 𝓝[s] x := le_inf (pure_le_nhds _) (le_principal_iff.2 h₂)
      _ ≤ 𝓝[s] y := h₁
      _ ≤ 𝓝 y := inf_le_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Inseparable/Variantbab7d47afd3c7ddeb656d0385700ef0098dc6c47f9beda465efd93e2ffc1dd70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Inseparable/Variantbab7d47afd3c7ddeb656d0385700ef0098dc6c47f9beda465efd93e2ffc1dd70.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2964dc3b8ece309f0f62f7e1b56141b8900e11d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
