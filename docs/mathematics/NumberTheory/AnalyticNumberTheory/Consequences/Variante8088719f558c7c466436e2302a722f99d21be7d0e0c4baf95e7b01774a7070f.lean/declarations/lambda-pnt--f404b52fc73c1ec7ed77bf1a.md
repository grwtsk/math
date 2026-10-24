# lambda_pnt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:156bf1d6-4378-01e7-adf7-d56c5080a608",
  "kind": "theorem",
  "lexical_name": "lambda_pnt",
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
  "slug": "lambda-pnt--f404b52fc73c1ec7ed77bf1a",
  "source": {
    "blob": "0d55aed8d28b87d0341356666e0dbf58ba828e44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2263,
    "line": 2227,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f404b52fc73c1ec7ed77bf1a8354e6a961f9a482c61e601b2d90ccfb2772f328",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:156bf1d6-4378-01e7-adf7-d56c5080a608`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2227–2263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lambda_pnt : (fun x : ℝ ↦ ∑ n ∈ range ⌊x⌋₊, (-1)^(Ω n)) =o[atTop] fun x ↦ x := by
  have h_lambda_pnt : (fun N : ℕ => ∑ n ∈ Finset.range N, (-1 : ℝ) ^ (Nat.factorization n).sum (fun p k => k)) =o[Filter.atTop] (fun N : ℕ => (N : ℝ)) := by
    have h_lambda_pnt : (fun N : ℕ => ∑ n ∈ Finset.Icc 1 N, (-1 : ℝ) ^ (Nat.factorization n).sum (fun p k => k)) =o[Filter.atTop] (fun N : ℕ => (N : ℝ)) := by
      have h_lambda_pnt : (fun N : ℕ => ∑ d ∈ Finset.Icc 1 (Nat.sqrt N), ∑ k ∈ Finset.Icc 1 (N / d^2), (μ k : ℝ)) =o[Filter.atTop] (fun N : ℕ => (N : ℝ)) := by
        exact sum_mu_div_sq_isLittleO
      convert h_lambda_pnt using 2;
      convert sum_lambda_eq_sum_mu_div_sq _;
      exact Eq.symm cardFactors_eq_sum_factorization
    have h_lambda_pnt : (fun N : ℕ => ∑ n ∈ Finset.range (N + 1), (-1 : ℝ) ^ (Nat.factorization n).sum (fun p k => k)) =o[Filter.atTop] (fun N : ℕ => (N : ℝ)) := by
      rw [ Asymptotics.isLittleO_iff_tendsto' ] at * <;> norm_num at *;
      · convert h_lambda_pnt.add ( show Filter.Tendsto ( fun x : ℕ => ( 1 : ℝ ) / x ) Filter.atTop ( nhds 0 ) from tendsto_const_nhds.div_atTop tendsto_natCast_atTop_atTop ) using 2 <;> norm_num [ Finset.sum_Ico_eq_sum_range ];
        erw [ Finset.sum_Ico_eq_sub _ _ ] <;> norm_num [ Finset.sum_range_succ' ] ; ring_nf;
      · exact ⟨ 1, by aesop ⟩;
      · exact ⟨ 1, by aesop ⟩;
    simp_all +decide only [Finset.sum_range_succ]
    have := h_lambda_pnt.sub ( show ( fun N : ℕ => ( -1 : ℝ ) ^ N.factorization.sum fun p k => k ) =o[Filter.atTop] fun N : ℕ => ( N : ℝ ) from ?_ );
    · aesop;
    · rw [ Asymptotics.isLittleO_iff_tendsto' ] <;> norm_num;
      · exact tendsto_zero_iff_norm_tendsto_zero.mpr ( by simpa using tendsto_inv_atTop_nhds_zero_nat );
      · exact ⟨ 1, fun n hn => by positivity ⟩;
  have h_floor : (fun x : ℝ => ∑ n ∈ Finset.range ⌊x⌋₊, (-1 : ℝ) ^ (Nat.factorization n).sum (fun p k => k)) =o[Filter.atTop] (fun x : ℝ => (⌊x⌋₊ : ℝ)) := by
    rw [ Asymptotics.isLittleO_iff_tendsto' ] at * <;> norm_num at *;
    · exact h_lambda_pnt.comp <| tendsto_nat_floor_atTop;
    · exact ⟨ 1, by aesop ⟩;
    · exact ⟨ 1, by intros; linarith ⟩;
  rw [ Asymptotics.isLittleO_iff ] at *;
  intro c hc
  filter_upwards [h_floor (half_pos hc), Filter.eventually_gt_atTop 1] with x hx₁ hx₂
  refine le_trans ?_ (le_trans hx₁ ?_)
  · norm_num [ Norm.norm ];
    convert le_rfl using 2;
    congr! 2;
    exact Eq.symm cardFactors_eq_sum_factorization
  · norm_num [ abs_of_nonneg, Nat.floor_le, hx₂.le ];
    rw [ abs_of_nonneg ( by positivity ) ] ; nlinarith [ Nat.floor_le ( by positivity : 0 ≤ x ) ]


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean#L2227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d55aed8d28b87d0341356666e0dbf58ba828e44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
