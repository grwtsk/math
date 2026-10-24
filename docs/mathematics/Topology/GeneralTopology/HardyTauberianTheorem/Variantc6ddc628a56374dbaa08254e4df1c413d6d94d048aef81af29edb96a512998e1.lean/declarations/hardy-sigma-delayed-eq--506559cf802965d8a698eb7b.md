# hardy_sigma_delayed_eq

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
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0ee7516-f070-062a-11f5-141b6ca9db72",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0893e02d-73a5-3df2-58a6-2663b696bfea",
  "kind": "theorem",
  "lexical_name": "hardy_sigma_delayed_eq",
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
  "slug": "hardy-sigma-delayed-eq--506559cf802965d8a698eb7b",
  "source": {
    "blob": "70d22fe46bdb3cee54d3235d96cd5fcf6a216252",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 62,
    "path": "GRWTSK/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:506559cf802965d8a698eb7b320efdd59e8fee8c3f6b25938dc581d41f3ab1ec",
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

Occurrence: `result:0893e02d-73a5-3df2-58a6-2663b696bfea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hardy_sigma_delayed_eq (u : ℕ → ℝ) (n k : ℕ) (hk : k ≠ 0) :
    hardy_sigma_delayed u n k =
    ((n + k + 1 : ℝ) / k) * hardy_sigma u (n + k) - ((n + 1 : ℝ) / k) * hardy_sigma u n := by
  field_simp;
  unfold hardy_sigma_delayed hardy_sigma;
  rw [ div_mul_cancel₀ _ ( by positivity ), mul_div ];
  rw [ eq_sub_iff_add_eq, eq_div_iff ] <;> norm_cast ; norm_num;
  rw [ mul_comm, ← Finset.sum_range_add_sum_Ico _ ( by linarith : n + 1 ≤ n + k + 1 ) ];
  field_simp;
  rw [ add_comm, Nat.Ico_succ_right ];
  rw [ Nat.Icc_succ_left ]

/-
If the arithmetic means converge to S, and n/k_n is bounded, then the delayed arithmetic means also converge to S.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70d22fe46bdb3cee54d3235d96cd5fcf6a216252` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
