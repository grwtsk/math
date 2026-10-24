# isCompact_truncatedFundamentalDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:128c8fef-43f8-0a7c-cf6c-ea995da1b260",
  "kind": "lemma",
  "lexical_name": "isCompact_truncatedFundamentalDomain",
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
  "slug": "iscompact-truncatedfundamentaldomain--c951932ea4b17ca43cedce16",
  "source": {
    "blob": "7c6ff5e0ef6481aedbc362481a943158f1515c5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 993,
    "line": 968,
    "path": "GRWTSK/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c951932ea4b17ca43cedce1688cb223d802d31084d70a36715792f80d901480a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:128c8fef-43f8-0a7c-cf6c-ea995da1b260`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 968–993.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCompact_truncatedFundamentalDomain (y : ℝ) :
    IsCompact (truncatedFundamentalDomain y) := by
  rw [isEmbedding_coe.isCompact_iff, coe_truncatedFundamentalDomain,
    Metric.isCompact_iff_isClosed_bounded]
  constructor
  · -- show closed
    apply (isClosed_le continuous_const Complex.continuous_im).inter
    apply (isClosed_le Complex.continuous_im continuous_const).inter
    apply (isClosed_le (continuous_abs.comp Complex.continuous_re) continuous_const).inter
    exact isClosed_le continuous_const continuous_norm
  · -- show bounded
    refine (Metric.isBounded_iff_subset_closedBall 0).mpr ⟨√((1 / 2) ^ 2 + y ^ 2), fun z hz ↦ ?_⟩
    simp only [mem_closedBall_zero_iff]
    refine le_of_sq_le_sq ?_ (by positivity)
    rw [Real.sq_sqrt (by positivity), Complex.norm_eq_sqrt_sq_add_sq, Real.sq_sqrt (by positivity)]
    apply add_le_add
    · rw [sq_le_sq, abs_of_pos <| one_half_pos (α := ℝ)]
      exact hz.2.2.1
    · rw [sq_le_sq₀ hz.1 (hz.1.trans hz.2.1)]
      exact hz.2.1


end Truncated

end FundamentalDomain

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean#L968).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c6ff5e0ef6481aedbc362481a943158f1515c5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
