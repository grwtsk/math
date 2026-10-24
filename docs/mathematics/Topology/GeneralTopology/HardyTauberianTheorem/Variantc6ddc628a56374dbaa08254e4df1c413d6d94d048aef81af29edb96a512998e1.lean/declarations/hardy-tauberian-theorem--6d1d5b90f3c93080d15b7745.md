# hardy_tauberian_theorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70d22fe46bdb3cee54d3235d96cd5fcf6a216252",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 255,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e64e7b6-72c4-468b-eacb-3894c24ffddb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51da1a8a-6c5f-40d3-67a8-43fdb951eeeb",
  "kind": "theorem",
  "lexical_name": "hardy_tauberian_theorem",
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
  "slug": "hardy-tauberian-theorem--6d1d5b90f3c93080d15b7745",
  "source": {
    "blob": "70d22fe46bdb3cee54d3235d96cd5fcf6a216252",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 255,
    "path": "GRWTSK/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d1d5b90f3c93080d15b7745fadd3a98490e17a2e3029536171c5ddbed86b0d4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51da1a8a-6c5f-40d3-67a8-43fdb951eeeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hardy_tauberian_theorem (u : ℕ → ℝ) (A : ℝ) (S : ℝ)
    (h_conv : Filter.Tendsto (hardy_sigma u) Filter.atTop (nhds S))
    (h_bound : ∀ n ≥ 1, |u n| ≤ A / n) :
    Filter.Tendsto (hardy_s u) Filter.atTop (nhds S) := by
  have hA : 0 ≤ A := by
    have := h_bound 1 le_rfl
    norm_num at this
    exact le_trans (abs_nonneg _) this
  apply tendsto_of_approx_aux hA
  intro ε hε
  let k := hardy_k ε
  have hk_pos : ∀ n, 0 < k n := fun n => lt_of_lt_of_le zero_lt_one (le_max_left _ _)
  use fun n => hardy_sigma_delayed u n (k n)
  constructor
  · apply hardy_sigma_delayed_tendsto u S k h_conv (hardy_k_ratio_bounded ε hε) hk_pos
  · have := hardy_diff_bound u A ε hε h_bound
    filter_upwards [this] with n hn
    rw [abs_sub_comm]
    exact hn
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70d22fe46bdb3cee54d3235d96cd5fcf6a216252` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
