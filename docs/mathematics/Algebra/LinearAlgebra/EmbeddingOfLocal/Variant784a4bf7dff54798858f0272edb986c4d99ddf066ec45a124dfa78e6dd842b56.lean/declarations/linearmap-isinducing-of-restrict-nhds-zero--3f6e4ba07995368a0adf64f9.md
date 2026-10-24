# LinearMap.isInducing_of_restrict_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20417125-4f49-4b77-da94-ce8715c0c217",
  "kind": "lemma",
  "lexical_name": "LinearMap.isInducing_of_restrict_nhds_zero",
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
  "slug": "linearmap-isinducing-of-restrict-nhds-zero--3f6e4ba07995368a0adf64f9",
  "source": {
    "blob": "f41f63c573f952eaf4c222df2553fa19a538b854",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 153,
    "path": "GRWTSK/Algebra/LinearAlgebra/EmbeddingOfLocal/Variant784a4bf7dff54798858f0272edb986c4d99ddf066ec45a124dfa78e6dd842b56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f6e4ba07995368a0adf64f97b03668844872121f9ed3bbb4a4d32a11fea044b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EmbeddingOfLocal/Variant784a4bf7dff54798858f0272edb986c4d99ddf066ec45a124dfa78e6dd842b56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20417125-4f49-4b77-da94-ce8715c0c217`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearMap.isInducing_of_restrict_nhds_zero {V : Set E}
    (V_mem : V ∈ 𝓝 0) (H : IsInducing (Set.domRestrict V f)) : IsInducing f := by
  rw [isInducing_iff]
  -- Call `t₁` the original topology on `E`, and `t₂` the topology induced by `f`. Because
  -- `f` is linear, `t₂` is also a vector space topology.
  have := isTopologicalAddGroup_induced f
  have := continuousSMul_inducedₛₗ f σ.isometry.continuous
  -- Because `Set.domRestrict V f` is an inducing, `t₁` and `t₂` induce the same topology
  -- on `V`, so we get `t₁ = t₂` from the lemmas above.
  apply ContinuousSMul.topology_eq_of_induced_eq 𝕜₁ _ (.induced f _) V_mem
  rw [induced_compose, ← domRestrict_eq, ← H.eq_induced, ← IsInducing.subtypeVal.eq_induced]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EmbeddingOfLocal/Variant784a4bf7dff54798858f0272edb986c4d99ddf066ec45a124dfa78e6dd842b56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EmbeddingOfLocal/Variant784a4bf7dff54798858f0272edb986c4d99ddf066ec45a124dfa78e6dd842b56.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f41f63c573f952eaf4c222df2553fa19a538b854` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
