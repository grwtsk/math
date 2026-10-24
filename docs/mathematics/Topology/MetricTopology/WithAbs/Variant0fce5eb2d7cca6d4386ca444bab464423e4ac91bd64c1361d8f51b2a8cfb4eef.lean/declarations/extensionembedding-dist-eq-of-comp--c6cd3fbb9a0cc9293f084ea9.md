# extensionEmbedding_dist_eq_of_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d0104f4-b7b4-0db2-95ca-674da742f0ed",
  "kind": "theorem",
  "lexical_name": "extensionEmbedding_dist_eq_of_comp",
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
  "slug": "extensionembedding-dist-eq-of-comp--c6cd3fbb9a0cc9293f084ea9",
  "source": {
    "blob": "1af53476f1f147f967f02a37480551bc637bbb69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 105,
    "path": "GRWTSK/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6cd3fbb9a0cc9293f084ea9715a6df5a791c4ff02c3d0cf743d0f6567db882e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d0104f4-b7b4-0db2-95ca-674da742f0ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extensionEmbedding_dist_eq_of_comp (h : ∀ x, ‖f x‖ = v x) (x y : v.Completion) :
    dist (extensionEmbedding_of_comp h x) (extensionEmbedding_of_comp h y) =
      dist x y := by
  refine UniformSpace.Completion.induction_on₂ x y ?_ (fun x y => ?_)
  · refine isClosed_eq ?_ continuous_dist
    exact continuous_iff_continuous_dist.1 UniformSpace.Completion.continuous_extension
  · simp only [extensionEmbedding_of_comp_coe]
    exact UniformSpace.Completion.dist_eq x y ▸ (WithAbs.isometry_of_comp h).dist_eq _ _

/-- If the absolute value of a normed field factors through an embedding into another normed field,
then the extended embedding `v.Completion →+* L` is an isometry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1af53476f1f147f967f02a37480551bc637bbb69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
