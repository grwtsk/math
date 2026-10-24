# exists_iUnion_ball_eq_radius_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dee16f8ed7dab77217176904667d16907730e734",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb54a84fa51a432de386de9b0198dcd89ac798a543329f57146b922e8a29f924.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23ac4c0e-6b81-5fd0-1534-5edd4eb4573b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7a078da-69a1-a680-a6b3-6d99960562ff",
  "kind": "theorem",
  "lexical_name": "exists_iUnion_ball_eq_radius_lt",
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
  "slug": "exists-iunion-ball-eq-radius-lt--b5dd4a6c3dd9fded223763d0",
  "source": {
    "blob": "dee16f8ed7dab77217176904667d16907730e734",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 53,
    "path": "GRWTSK/Topology/MetricTopology/ShrinkingLemma/Varianteb54a84fa51a432de386de9b0198dcd89ac798a543329f57146b922e8a29f924.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5dd4a6c3dd9fded223763d0f5c45b5e4cde0e756a8915600f58a4cc4db216bf",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ShrinkingLemma/Varianteb54a84fa51a432de386de9b0198dcd89ac798a543329f57146b922e8a29f924.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7a078da-69a1-a680-a6b3-6d99960562ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_iUnion_ball_eq_radius_lt {r : ι → ℝ} (uf : ∀ x, { i | x ∈ ball (c i) (r i) }.Finite)
    (uU : ⋃ i, ball (c i) (r i) = univ) :
    ∃ r' : ι → ℝ, ⋃ i, ball (c i) (r' i) = univ ∧ ∀ i, r' i < r i :=
  let ⟨r', hU, hv⟩ := exists_subset_iUnion_ball_radius_lt isClosed_univ (fun x _ => uf x) uU.ge
  ⟨r', univ_subset_iff.1 hU, hv⟩

/-- Shrinking lemma for coverings by open balls in a proper metric space. A point-finite open cover
of a closed subset of a proper metric space by nonempty open balls can be shrunk to a new cover by
nonempty open balls so that each of the new balls has strictly smaller radius than the old one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ShrinkingLemma/Varianteb54a84fa51a432de386de9b0198dcd89ac798a543329f57146b922e8a29f924.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ShrinkingLemma/Varianteb54a84fa51a432de386de9b0198dcd89ac798a543329f57146b922e8a29f924.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dee16f8ed7dab77217176904667d16907730e734` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
