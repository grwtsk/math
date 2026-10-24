# kernel_sum_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f4fbd21-c3e1-080c-2fcf-16b18729fb59",
  "kind": "theorem",
  "lexical_name": "kernel_sum_bound",
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
  "slug": "kernel-sum-bound--a2a1151465ca42ecea966d7d",
  "source": {
    "blob": "057883a5d3295c4261a07c523ac5c099bfcacff8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 98,
    "path": "GRWTSK/Analysis/Series/DyadicKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2a1151465ca42ecea966d7d5c0869a7b22d6a81c2a20f8acb8e7c968fdd1d7e",
  "verification": {
    "reference": "docs/verification/Analysis/Series/DyadicKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f4fbd21-c3e1-080c-2fcf-16b18729fb59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernel_sum_bound (s A : ℝ) (hs : 0<s) (hsA : s<A) :
    ∃C : ℝ,0<C ∧ ∀t : ℝ,0<t →
      Summable (kernelTerm t s A) ∧ (∑'n : ℕ,kernelTerm t s A n)≤C*t^(-s) := by
  let r : ℝ := (2:ℝ)^s
  let q : ℝ := (2:ℝ)^(s-A)
  have hr : 1<r := Real.one_lt_rpow (by norm_num) hs
  have hq : q<1 := ratio_lt_one s A hsA
  have hq0 : 0≤q := by dsimp [q]; positivity
  let C := r/(r-1)+1/(1-q)
  have hC : 0<C := by dsimp [C]; positivity
  refine ⟨C,hC,?_⟩
  intro t ht
  have hA : 0≤A := by linarith
  have hsum := kernel_summable t s A ht hA hsA
  refine ⟨hsum,?_⟩
  by_cases ht1 : 1≤t
  · have hg := (summable_geometric_of_lt_one hq0 hq).mul_left (t^(-A))
    have hb := hsum.tsum_le_tsum (fun n => kernelTerm_le_tail t s A ht hA n) hg
    change (∑'n : ℕ,kernelTerm t s A n)≤∑'n : ℕ,t^(-A)*q^n at hb
    rw [tsum_mul_left,tsum_geometric_of_lt_one hq0 hq] at hb
    calc
      _ ≤ t^(-A)/(1-q) := by simpa only [div_eq_mul_inv] using hb
      _ ≤ t^(-s)/(1-q) := div_le_div_of_nonneg_right
        (Real.rpow_le_rpow_of_exponent_le ht1 (by linarith)) (by linarith)
      _ ≤ C*t^(-s) := by
        have hp : 0≤r/(r-1)*t^(-s) := by positivity
        calc
          _ ≤ r/(r-1)*t^(-s)+t^(-s)/(1-q) := le_add_of_nonneg_left hp
          _ = C*t^(-s) := by dsimp [C]; ring
  · have ht_le : t≤1 := le_of_not_ge ht1
    have hit : 1≤1/t := (one_le_div ht).mpr ht_le
    obtain ⟨N,hN,hN'⟩ := exists_nat_pow_near hit (by norm_num : (1:ℝ)<2)
    have hheadpow : r^(N+1)≤r*t^(-s) := by
      change ((2:ℝ)^s)^(N+1)≤(2:ℝ)^s*t^(-s)
      rw [←pow_rpow_comm]
      calc
        _ ≤ ((2:ℝ)/t)^s := by
          apply Real.rpow_le_rpow (by positivity) _ hs.le
          rw [pow_succ]
          calc
            _ ≤ (1/t)*2 := mul_le_mul_of_nonneg_right hN (by norm_num)
            _ = 2/t := by ring
        _ = _ := by rw [Real.div_rpow (by norm_num) ht.le,Real.rpow_neg ht.le]; ring
    have htailpow : t^(-A)*q^(N+1)≤t^(-s) := by
      change t^(-A)*((2:ℝ)^(s-A))^(N+1)≤t^(-s)
      rw [←pow_rpow_comm]
      calc
        _ ≤ t^(-A)*(1/t)^(s-A) := mul_le_mul_of_nonneg_left
          (Real.rpow_le_rpow_of_nonpos (by positivity) hN'.le (by linarith)) (by positivity)
        _ = t^(-A)*t^(-(s-A)) := by rw [one_div,Real.inv_rpow ht.le,←Real.rpow_neg ht.le]
        _ = t^(-s) := by rw [←Real.rpow_add ht]; congr 1; ring
    have hb := kernel_sum_cutoff t s A ht hs hsA (N+1)
    change (∑'n : ℕ,kernelTerm t s A n)≤r^(N+1)/(r-1)+t^(-A)*q^(N+1)/(1-q) at hb
    calc
      _ ≤ r^(N+1)/(r-1)+t^(-A)*q^(N+1)/(1-q) := hb
      _ ≤ (r*t^(-s))/(r-1)+t^(-s)/(1-q) := add_le_add
        (div_le_div_of_nonneg_right hheadpow (by linarith))
        (div_le_div_of_nonneg_right htailpow (by linarith))
      _ = C*t^(-s) := by dsimp [C]; ring


end
end GRWTSK.Analysis.Series.DyadicKernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Series/DyadicKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Series/DyadicKernel.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `057883a5d3295c4261a07c523ac5c099bfcacff8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
