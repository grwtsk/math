# inner_vsub_vsub_right_eq_dist_sq_right_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e621f5659fc20516fa34673fe6d457831287dd5e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e209fe64b95567af29eec56f80bddd289b117c5a9edb8cb64a55458a1537b56f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:857f4067-abe0-663b-6686-e8040a1d24ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6861c6f7-631c-2989-9a90-4a03d6ca6c76",
  "kind": "theorem",
  "lexical_name": "inner_vsub_vsub_right_eq_dist_sq_right_iff",
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
  "slug": "inner-vsub-vsub-right-eq-dist-sq-right-iff--4ec21553e2417afddede3e9d",
  "source": {
    "blob": "e621f5659fc20516fa34673fe6d457831287dd5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 61,
    "path": "GRWTSK/Topology/MetricTopology/Affine/Variante209fe64b95567af29eec56f80bddd289b117c5a9edb8cb64a55458a1537b56f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ec21553e2417afddede3e9d103b74f332a16227e20d582efc6cf0c5004c93d2",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Affine/Variante209fe64b95567af29eec56f80bddd289b117c5a9edb8cb64a55458a1537b56f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6861c6f7-631c-2989-9a90-4a03d6ca6c76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_vsub_vsub_right_eq_dist_sq_right_iff {a b c : P} :
    ⟪a -ᵥ c, b -ᵥ c⟫ = dist b c ^ 2 ↔ ⟪a -ᵥ b, b -ᵥ c⟫ = 0 := by
  rw [real_inner_comm, inner_vsub_vsub_right_eq_dist_sq_left_iff, real_inner_comm]

/-- Squared distance between two points on lines from a common origin,
given orthogonality of the direction vectors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Affine/Variante209fe64b95567af29eec56f80bddd289b117c5a9edb8cb64a55458a1537b56f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Affine/Variante209fe64b95567af29eec56f80bddd289b117c5a9edb8cb64a55458a1537b56f.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e621f5659fc20516fa34673fe6d457831287dd5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
