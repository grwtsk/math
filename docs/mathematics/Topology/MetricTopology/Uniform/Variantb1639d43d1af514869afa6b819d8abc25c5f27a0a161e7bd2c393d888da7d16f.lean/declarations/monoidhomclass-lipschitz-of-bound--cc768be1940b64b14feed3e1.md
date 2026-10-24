# MonoidHomClass.lipschitz_of_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18eae4ff-907d-11f7-3414-22e11e3ba181",
  "kind": "theorem",
  "lexical_name": "MonoidHomClass.lipschitz_of_bound",
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
  "slug": "monoidhomclass-lipschitz-of-bound--cc768be1940b64b14feed3e1",
  "source": {
    "blob": "8a9b3355a7c933dd6917d0b676aa637e6470b729",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 78,
    "path": "GRWTSK/Topology/MetricTopology/Uniform/Variantb1639d43d1af514869afa6b819d8abc25c5f27a0a161e7bd2c393d888da7d16f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc768be1940b64b14feed3e1b9daf5d04a43fe25f93cc596407d1caef9831f76",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Uniform/Variantb1639d43d1af514869afa6b819d8abc25c5f27a0a161e7bd2c393d888da7d16f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18eae4ff-907d-11f7-3414-22e11e3ba181`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonoidHomClass.lipschitz_of_bound [MonoidHomClass 𝓕 E F] (f : 𝓕) (C : ℝ)
    (h : ∀ x, ‖f x‖ ≤ C * ‖x‖) : LipschitzWith (Real.toNNReal C) f :=
  LipschitzWith.of_dist_le' fun x y => by simpa only [dist_eq_norm_div, map_div] using h (x / y)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Uniform/Variantb1639d43d1af514869afa6b819d8abc25c5f27a0a161e7bd2c393d888da7d16f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Uniform/Variantb1639d43d1af514869afa6b819d8abc25c5f27a0a161e7bd2c393d888da7d16f.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a9b3355a7c933dd6917d0b676aa637e6470b729` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
