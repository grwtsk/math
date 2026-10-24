# sumA2gCoprime_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bf3bbe8-652c-cded-a34f-ee9497b59743",
  "kind": "theorem",
  "lexical_name": "sumA2gCoprime_lower",
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
  "slug": "suma2gcoprime-lower--946efee05aa72ee317cde0ec",
  "source": {
    "blob": "3f951dc0e8825b99c9f30a71911a84172574dac8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 867,
    "line": 812,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:946efee05aa72ee317cde0ec22a5d431ffe1f618bf3752d21707f7943805a470",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bf3bbe8-652c-cded-a34f-ee9497b59743`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 812–867.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sumA2gCoprime_lower (hchebq : ChebyshevMertensCoprime q) (_hlam : 0 < lam ∧ lam ≤ 1) :
    ∃ C : ℝ, EventuallyAt cϱ lam (fun p F =>
      (p.L - 2 * p.w) ^ 3 / 6 - C * p.L ^ 2 ≤ sumA2gCoprime q p.X F.g) := by
  obtain ⟨C, hC⟩ := hchebq.cheb2b
  refine ⟨max C 0, 0, fun p F _ _ hF => ?_⟩
  set L' := p.L - 2 * p.w with hL'
  set x' := Real.exp L' with hx'
  have hL'pos : 6 ≤ L' := by have := hF.w_le; have := hF.eight_le_L; rw [hL']; linarith
  have hL'le : L' ≤ p.L := by rw [hL']; linarith [hF.one_le_w]
  have hx'2 : 2 ≤ x' := by linarith [Real.add_one_le_exp L']
  have hx'X : x' ≤ p.X := Real.exp_le_exp.mpr hL'le
  have hlogx' : Real.log x' = L' := Real.log_exp _
  have hsub : (Finset.Ioc 0 ⌊x'⌋₊).filter (fun n => Nat.Coprime n q)
      ⊆ (Finset.Ioc 0 ⌊p.X⌋₊).filter (fun n => Nat.Coprime n q) :=
    Finset.filter_subset_filter _ (Finset.Ioc_subset_Ioc_right (Nat.floor_le_floor hx'X))
  have h1 : ∑ n ∈ (Finset.Ioc 0 ⌊x'⌋₊).filter (fun n => Nat.Coprime n q),
      (Λ n : ℝ) ^ 2 / n * (Real.log x' - Real.log n) ≤ sumA2gCoprime q p.X F.g := by
    unfold sumA2gCoprime
    calc ∑ n ∈ (Finset.Ioc 0 ⌊x'⌋₊).filter (fun n => Nat.Coprime n q),
          (Λ n : ℝ) ^ 2 / n * (Real.log x' - Real.log n)
        ≤ ∑ n ∈ (Finset.Ioc 0 ⌊x'⌋₊).filter (fun n => Nat.Coprime n q),
            (Λ n : ℝ) ^ 2 / n * F.g (Real.log n) := by
          refine Finset.sum_le_sum fun n hn => mul_le_mul_of_nonneg_left ?_ (a2_nonneg n)
          have hn' : n ∈ primeRange x' := (Finset.mem_filter.mp hn).1
          calc Real.log x' - Real.log n ≤ max (p.L - 2 * p.w - |Real.log n|) 0 := by
                rw [hlogx', abs_of_nonneg (log_nonneg_of_mem_primeRange hn'), hL']
                exact le_max_left _ _
            _ ≤ F.g (Real.log n) := hF.g_lower _
      _ ≤ ∑ n ∈ (Finset.Ioc 0 ⌊p.X⌋₊).filter (fun n => Nat.Coprime n q),
            (Λ n : ℝ) ^ 2 / n * F.g (Real.log n) := by
          apply Finset.sum_le_sum_of_subset_of_nonneg hsub
          intro n _ _
          have : 0 ≤ F.g (Real.log n) := le_trans (le_max_right _ _) (hF.g_lower _)
          exact mul_nonneg (a2_nonneg n) this
  have h2 := hC x' hx'2
  rw [hlogx'] at h2
  have h3 := (abs_le.mp h2).1
  have hCmax : C * L' ^ 2 ≤ max C 0 * p.L ^ 2 := by
    calc C * L' ^ 2 ≤ max C 0 * L' ^ 2 :=
          mul_le_mul_of_nonneg_right (le_max_left _ _) (sq_nonneg _)
      _ ≤ max C 0 * p.L ^ 2 := by
          apply mul_le_mul_of_nonneg_left _ (le_max_right _ _)
          exact pow_le_pow_left₀ (by linarith) hL'le 2
  rw [hlogx'] at h1
  linarith

end SandwichChi

/-! ## Assembly: [prop:PP] for L(s,chi) -/

section Results

/-- **prop_PP_chi, q-uniform form** (hybrid range, [rem:otherL](i)): the same constant and
threshold for every modulus and unimodular coefficient sequence — the ∃ C T₀ sit outside (q, c).
(The constant does not depend on (q, c); unimodularity enters only through the norm bound and the
diagonal identity.  `prop_PP_chi` below is the (q, c)-specialisation of this theorem.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean#L812).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f951dc0e8825b99c9f30a71911a84172574dac8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
