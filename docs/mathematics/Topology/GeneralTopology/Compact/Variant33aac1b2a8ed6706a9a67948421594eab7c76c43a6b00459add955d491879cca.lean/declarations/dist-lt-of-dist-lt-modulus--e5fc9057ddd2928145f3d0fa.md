# dist_lt_of_dist_lt_modulus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44372ea4077fd0b88ed63fdb6296bc228aab8e6c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 376,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/33aac1b2a8ed6706a9a67948421594eab7c76c43a6b00459add955d491879cca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a36eb7e-6dac-be85-2c3b-dc16d0b78492",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97919758-dc54-2bb7-a30c-82e0ab817078",
  "kind": "theorem",
  "lexical_name": "dist_lt_of_dist_lt_modulus",
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
  "slug": "dist-lt-of-dist-lt-modulus--e5fc9057ddd2928145f3d0fa",
  "source": {
    "blob": "44372ea4077fd0b88ed63fdb6296bc228aab8e6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 376,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant33aac1b2a8ed6706a9a67948421594eab7c76c43a6b00459add955d491879cca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5fc9057ddd2928145f3d0fa6a9faa1a21fc790aba82f4233c4bcf1a8b76ce31",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variant33aac1b2a8ed6706a9a67948421594eab7c76c43a6b00459add955d491879cca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97919758-dc54-2bb7-a30c-82e0ab817078`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_lt_of_dist_lt_modulus (f : C(α, β)) (ε : ℝ) (h : 0 < ε) {a b : α}
    (w : dist a b < f.modulus ε h) : dist (f a) (f b) < ε :=
  (Classical.choose_spec (uniform_continuity f ε h)).2 w
#align continuous_map.dist_lt_of_dist_lt_modulus ContinuousMap.dist_lt_of_dist_lt_modulus

end UniformContinuity

end ContinuousMap

section CompLeft

variable (X : Type*) {𝕜 β γ : Type*} [TopologicalSpace X] [CompactSpace X]
  [NontriviallyNormedField 𝕜]

variable [NormedAddCommGroup β] [NormedSpace 𝕜 β] [NormedAddCommGroup γ] [NormedSpace 𝕜 γ]

open ContinuousMap

/-- Postcomposition of continuous functions into a normed module by a continuous linear map is a
continuous linear map.
Transferred version of `ContinuousLinearMap.compLeftContinuousBounded`,
upgraded version of `ContinuousLinearMap.compLeftContinuous`,
similar to `LinearMap.compLeft`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant33aac1b2a8ed6706a9a67948421594eab7c76c43a6b00459add955d491879cca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant33aac1b2a8ed6706a9a67948421594eab7c76c43a6b00459add955d491879cca.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44372ea4077fd0b88ed63fdb6296bc228aab8e6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
