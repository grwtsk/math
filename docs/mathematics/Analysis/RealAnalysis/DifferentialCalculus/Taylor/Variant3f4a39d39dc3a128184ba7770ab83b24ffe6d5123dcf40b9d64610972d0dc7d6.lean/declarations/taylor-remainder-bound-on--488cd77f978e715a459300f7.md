# taylor_remainder_bound_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "feca7dade96cdc55e024c788dd77b2c78a3eec8d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 441,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:367bed74-ad49-3bec-3693-5b12596ed352",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d186de7-fcda-b19f-5d3f-78a8a18113b7",
  "kind": "theorem",
  "lexical_name": "taylor_remainder_bound_on",
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
  "slug": "taylor-remainder-bound-on--488cd77f978e715a459300f7",
  "source": {
    "blob": "feca7dade96cdc55e024c788dd77b2c78a3eec8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 484,
    "line": 441,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:488cd77f978e715a459300f7cb3fb2db200ba5628ae9bc4d00423713a2fb2d30",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d186de7-fcda-b19f-5d3f-78a8a18113b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–484.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem taylor_remainder_bound_on {f : ℝ → ℝ} {a b c : ℝ} {n : ℕ} {M : ℝ} {U : Set ℝ}
    (hU_open : IsOpen U) (hI_sub : Set.Icc a b ⊆ U)
    (hca : a ≤ c) (hcb : c ≤ b)
    (hf : ContDiffOn ℝ n f U)
    (hM : ∀ x ∈ Set.Icc a b, ‖iteratedDeriv n f x‖ ≤ M)
    (_hMnonneg : 0 ≤ M) :
    ∀ x ∈ Set.Icc a b,
      ‖f x - ∑ i ∈ Finset.range n, (iteratedDeriv i f c / i.factorial) * (x - c) ^ i‖
        ≤ M * |x - c| ^ n / n.factorial := by
  open Set Finset in
  intro x hx
  cases n with
  | zero =>
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
    · rcases lt_or_gt_of_ne hxc with hxc_lt | hcx_lt
      · exact taylor_remainder_bound_on_x_lt_c hU_open hI_sub hcb hf hM x hx hxc_lt
      · exact taylor_remainder_bound_on_c_lt_x hU_open hI_sub hca hf hM x hx hcx_lt

/-- Key lemma: derivatives of reflected function g(t) = f(2c - t).

For the `x < c` case, we use reflection: define g(t) = f(2c - t), apply Lagrange
to g on [c, 2c-x], then convert back. This lemma shows how g's derivatives
relate to f's derivatives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feca7dade96cdc55e024c788dd77b2c78a3eec8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
