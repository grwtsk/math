# hardy_sigma_delayed_sub_s_eq

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
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81e9e3df-143b-bba6-0101-9ff57c45fdd6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d540f25-34d7-5d25-8367-2a85f704c2a5",
  "kind": "theorem",
  "lexical_name": "hardy_sigma_delayed_sub_s_eq",
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
  "slug": "hardy-sigma-delayed-sub-s-eq--cbc13a806a783ee373741aa2",
  "source": {
    "blob": "70d22fe46bdb3cee54d3235d96cd5fcf6a216252",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 122,
    "path": "GRWTSK/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbc13a806a783ee373741aa285ccb640cb4c1a28ed3d207a4ee0c6234c6984d4",
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

Occurrence: `result:1d540f25-34d7-5d25-8367-2a85f704c2a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hardy_sigma_delayed_sub_s_eq (u : ℕ → ℝ) (n k : ℕ) (hk : k ≠ 0) :
    hardy_sigma_delayed u n k - hardy_s u n =
    (1 / k) * ∑ j ∈ Finset.Icc 1 k, (k - j + 1 : ℝ) * u (n + j) := by
  field_simp;
  -- By definition of $hardy_sigma_delayed$, we can rewrite the left-hand side of the equation.
  have h_def : hardy_sigma_delayed u n k - hardy_s u n = (1 / k : ℝ) * ∑ j ∈ Finset.Icc 1 k, (hardy_s u (n + j) - hardy_s u n) := by
    unfold hardy_sigma_delayed hardy_s; norm_num [ Finset.sum_Ioc_succ_top, (Nat.succ_eq_succ ▸ Finset.Icc_succ_left_eq_Ioc) ] ; ring;
    rw [ show ( Finset.Ioc n ( n + k ) ) = Finset.image ( fun x => n + x ) ( Finset.Ioc 0 k ) from ?_, Finset.sum_image ] <;> norm_num ; ring;
    norm_num [ hk ];
  -- By definition of $hardy_s$, we can rewrite the sum inside the parentheses.
  have h_sum : ∑ j ∈ Finset.Icc 1 k, (hardy_s u (n + j) - hardy_s u n) = ∑ j ∈ Finset.Icc 1 k, ∑ m ∈ Finset.Icc 1 j, u (n + m) := by
    refine' Finset.sum_congr rfl fun j hj => _;
    erw [ Finset.sum_Ico_eq_sub _ _ ] <;> norm_num [ Finset.sum_range_succ, hardy_s ];
    rw [ Finset.sum_range_add ] ; ring;
  -- By interchanging the order of summation, we can rewrite the double sum.
  have h_interchange : ∑ j ∈ Finset.Icc 1 k, ∑ m ∈ Finset.Icc 1 j, u (n + m) = ∑ m ∈ Finset.Icc 1 k, ∑ j ∈ Finset.Icc m k, u (n + m) := by
    erw [ Finset.sum_Ico_Ico_comm ];
    rfl;
  simp_all +decide [ Finset.sum_mul _ _ _ ];
  rw [ inv_mul_eq_div, div_mul_cancel₀ _ ( by positivity ), Finset.sum_congr rfl ] ; intros ; rw [ Nat.cast_sub ] <;> push_cast <;> linarith [ Finset.mem_Icc.mp ‹_› ] ;

/-
Bound on the difference between delayed arithmetic mean and partial sum.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70d22fe46bdb3cee54d3235d96cd5fcf6a216252` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
