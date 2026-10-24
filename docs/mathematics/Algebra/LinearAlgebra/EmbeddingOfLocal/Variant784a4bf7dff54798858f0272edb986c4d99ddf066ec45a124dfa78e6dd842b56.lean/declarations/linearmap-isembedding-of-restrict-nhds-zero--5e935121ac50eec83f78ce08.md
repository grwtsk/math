# LinearMap.isEmbedding_of_restrict_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6ca6ddc-ca3d-b1b7-3283-a9583ba12273",
  "kind": "lemma",
  "lexical_name": "LinearMap.isEmbedding_of_restrict_nhds_zero",
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
  "slug": "linearmap-isembedding-of-restrict-nhds-zero--5e935121ac50eec83f78ce08",
  "source": {
    "blob": "f41f63c573f952eaf4c222df2553fa19a538b854",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 165,
    "path": "GRWTSK/Algebra/LinearAlgebra/EmbeddingOfLocal/Variant784a4bf7dff54798858f0272edb986c4d99ddf066ec45a124dfa78e6dd842b56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e935121ac50eec83f78ce083a710dda6d127dc59f353d6800544244ac6b110d",
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

Occurrence: `result:c6ca6ddc-ca3d-b1b7-3283-a9583ba12273`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearMap.isEmbedding_of_restrict_nhds_zero {V : Set E}
    (V_mem : V ∈ 𝓝 0) (H : IsEmbedding (Set.domRestrict V f)) : IsEmbedding f := by
  refine ⟨isInducing_of_restrict_nhds_zero V_mem H.isInducing, ?_⟩
  have f_injOn : InjOn f V := injOn_iff_injective.2 H.injective
  rw [← LinearMap.ker_eq_bot, Submodule.eq_bot_iff]
  intro x hx
  obtain ⟨c, hc, c_ne : c ≠ 0⟩ := absorbent_nhds_zero (𝕜 := 𝕜₁) V_mem
    |>.eventually_nhdsNE_zero x |>.and eventually_mem_nhdsWithin |>.exists
  rw [← smul_eq_zero_iff_right c_ne, ← f_injOn.eq_iff hc (mem_of_mem_nhds V_mem), map_zero,
    map_smulₛₗ, hx, smul_zero]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EmbeddingOfLocal/Variant784a4bf7dff54798858f0272edb986c4d99ddf066ec45a124dfa78e6dd842b56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EmbeddingOfLocal/Variant784a4bf7dff54798858f0272edb986c4d99ddf066ec45a124dfa78e6dd842b56.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f41f63c573f952eaf4c222df2553fa19a538b854` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
