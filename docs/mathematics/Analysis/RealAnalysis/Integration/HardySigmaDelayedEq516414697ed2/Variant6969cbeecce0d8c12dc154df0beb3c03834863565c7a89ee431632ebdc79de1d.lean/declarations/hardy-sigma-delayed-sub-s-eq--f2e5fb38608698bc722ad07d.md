# hardy_sigma_delayed_sub_s_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c88c60c5-c268-c178-e878-ad08e8410dc6",
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
  "slug": "hardy-sigma-delayed-sub-s-eq--f2e5fb38608698bc722ad07d",
  "source": {
    "blob": "738b9a07216212d85fc41196714020e6eae78238",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 136,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2e5fb38608698bc722ad07d23e85c98e8b315fa5f5e0389c29edd81f57db7fb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c88c60c5-c268-c178-e878-ad08e8410dc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hardy_sigma_delayed_sub_s_eq (u : ℕ → ℝ) (n k : ℕ) (hk : k ≠ 0) :
    hardy_sigma_delayed u n k - hardy_s u n =
    (1 / k) * ∑ j ∈ Finset.Icc 1 k, (k - j + 1 : ℝ) * u (n + j) := by
  field_simp;
  -- By definition of $hardy_sigma_delayed$, we can rewrite the left-hand side of the equation.
  have h_def : hardy_sigma_delayed u n k - hardy_s u n = (1 / k : ℝ) * ∑ j ∈ Finset.Icc 1 k, (hardy_s u (n + j) - hardy_s u n) := by
    unfold hardy_sigma_delayed hardy_s; norm_num [ Finset.sum_Ioc_succ_top, (Nat.succ_eq_succ ▸ Finset.Icc_succ_left_eq_Ioc) ] ; ring_nf;
    rw [ show ( Finset.Ioc n ( n + k ) ) = Finset.image ( fun x => n + x ) ( Finset.Ioc 0 k ) from ?_, Finset.sum_image ] <;> norm_num ; ring_nf;
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
  simp_all +decide;
  rw [ inv_mul_eq_div, div_mul_cancel₀ _ ( by positivity ), Finset.sum_congr rfl ] ; intros ; rw [ Nat.cast_sub ] <;> push_cast <;> linarith [ Finset.mem_Icc.mp ‹_› ] ;

/-
Bound on the difference between delayed arithmetic mean and partial sum.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `738b9a07216212d85fc41196714020e6eae78238` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
