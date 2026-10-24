# countable_cover_nhdsWithin_of_sigmaCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4c1d79b-690d-f93e-7a88-b8f7c254d867",
  "kind": "theorem",
  "lexical_name": "countable_cover_nhdsWithin_of_sigmaCompact",
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
  "slug": "countable-cover-nhdswithin-of-sigmacompact--ecb3c5a98a690939c5f4b478",
  "source": {
    "blob": "0dd298a20448c6ef208bf901868dcded37334039",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 309,
    "path": "GRWTSK/Topology/GeneralTopology/SigmaCompact/Variantaa6f8dbee6e44e9cb7f88d30ca77ee6cbcd11ac3f3fef89039fbe8ef62ec00ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecb3c5a98a690939c5f4b478786c62ebd346d44c27105ae4e0fdf4703700a604",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SigmaCompact/Variantaa6f8dbee6e44e9cb7f88d30ca77ee6cbcd11ac3f3fef89039fbe8ef62ec00ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4c1d79b-690d-f93e-7a88-b8f7c254d867`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countable_cover_nhdsWithin_of_sigmaCompact {f : X → Set X} {s : Set X} (hs : IsClosed s)
    (hf : ∀ x ∈ s, f x ∈ 𝓝[s] x) : ∃ t ⊆ s, t.Countable ∧ s ⊆ ⋃ x ∈ t, f x := by
  simp only [nhdsWithin, mem_inf_principal] at hf
  choose t ht hsub using fun n =>
    ((isCompact_compactCovering X n).inter_right hs).elim_nhds_subcover _ fun x hx => hf x hx.right
  refine
    ⟨⋃ n, (t n : Set X), iUnion_subset fun n x hx => (ht n x hx).2,
      countable_iUnion fun n => (t n).countable_toSet, fun x hx => mem_iUnion₂.2 ?_⟩
  rcases exists_mem_compactCovering x with ⟨n, hn⟩
  rcases mem_iUnion₂.1 (hsub n ⟨hn, hx⟩) with ⟨y, hyt : y ∈ t n, hyf : x ∈ s → x ∈ f y⟩
  exact ⟨y, mem_iUnion.2 ⟨n, hyt⟩, hyf hx⟩

@[deprecated (since := "2024-11-13")] alias
countable_cover_nhdsWithin_of_sigma_compact := countable_cover_nhdsWithin_of_sigmaCompact

/-- In a topological space with sigma compact topology, if `f` is a function that sends each
point `x` to a neighborhood of `x`, then for some countable set `s`, the neighborhoods `f x`,
`x ∈ s`, cover the whole space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SigmaCompact/Variantaa6f8dbee6e44e9cb7f88d30ca77ee6cbcd11ac3f3fef89039fbe8ef62ec00ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SigmaCompact/Variantaa6f8dbee6e44e9cb7f88d30ca77ee6cbcd11ac3f3fef89039fbe8ef62ec00ff.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dd298a20448c6ef208bf901868dcded37334039` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
