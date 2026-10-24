# taylor_remainder_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89f2e984-09d7-ec8c-4c82-31c656da5417",
  "kind": "theorem",
  "lexical_name": "taylor_remainder_bound",
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
  "slug": "taylor-remainder-bound--b703fa772546d8e8cc1d8c24",
  "source": {
    "blob": "daa674e10401043ad9a6d9d86250f10900fcc053",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 769,
    "line": 725,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b703fa772546d8e8cc1d8c243e45b3d555d74e91ed1b1bf474939b1ee67129c4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89f2e984-09d7-ec8c-4c82-31c656da5417`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 725–769.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem taylor_remainder_bound {f : ℝ → ℝ} {a b c : ℝ} {n : ℕ} {M : ℝ}
    (_hab : a ≤ b) (hca : a ≤ c) (hcb : c ≤ b)
    (hf : ContDiff ℝ n f)
    (hM : ∀ x ∈ Set.Icc a b, ‖iteratedDeriv n f x‖ ≤ M)
    (_hMnonneg : 0 ≤ M) :
    ∀ x ∈ Set.Icc a b,
      ‖f x - ∑ i ∈ Finset.range n, (iteratedDeriv i f c / i.factorial) * (x - c) ^ i‖
        ≤ M * |x - c| ^ n / n.factorial := by
  open Set Finset in
  intro x hx
  cases n with
  | zero =>
    -- Case n = 0: sum is empty, need ‖f x‖ ≤ M
    simp only [range_zero, sum_empty, sub_zero, Nat.factorial_zero, Nat.cast_one,
      div_one, pow_zero, mul_one]
    have h : f = iteratedDeriv 0 f := iteratedDeriv_zero.symm
    rw [h]
    exact hM x hx
  | succ m =>
    by_cases hxc : x = c
    · -- Case x = c: both sides are 0
      have hrhs : M * |x - c| ^ (m + 1) / ↑(m + 1).factorial = 0 := by
        rw [hxc, sub_self, abs_zero, zero_pow (Nat.succ_ne_zero m), mul_zero, zero_div]
      rw [hrhs]
      have hsum : ∑ i ∈ range (m + 1), (iteratedDeriv i f c / i.factorial) * (x - c) ^ i = f c := by
        rw [hxc]
        simp only [sub_self]
        rw [sum_eq_single 0]
        · simp [iteratedDeriv_zero]
        · intro i _ hi
          have hpos : 0 < i := Nat.pos_of_ne_zero hi
          have : (0 : ℝ) ^ i = 0 := zero_pow hpos.ne'
          simp [this]
        · simp
      rw [hsum, hxc, sub_self, norm_zero]
    · -- Case x ≠ c
      rcases lt_or_gt_of_ne hxc with hxc_lt | hcx_lt
      · -- Case x < c: use reflection approach
        exact taylor_remainder_bound_x_lt_c hcb hf hM x hx hxc_lt
      · -- Case c < x: fully proved
        exact taylor_remainder_bound_c_lt_x hca hf hM x hx hcx_lt

/-! ### Common Taylor expansions -/

/-- Taylor coefficients for exp at 0: 1/n! -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean#L725).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daa674e10401043ad9a6d9d86250f10900fcc053` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
