# isSFiniteKernel_withDensity_of_isFiniteKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cda9a10e-642f-070e-dcde-1c921cfaed4a",
  "kind": "theorem",
  "lexical_name": "isSFiniteKernel_withDensity_of_isFiniteKernel",
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
  "slug": "issfinitekernel-withdensity-of-isfinitekernel--9416d1ef6c7644d767e8a766",
  "source": {
    "blob": "84bc1fddd889e8bf7cea60414b37e8c9d66b263d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 203,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9416d1ef6c7644d767e8a76657425e3253b47c36be81c13a113568bf2e4673ef",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cda9a10e-642f-070e-dcde-1c921cfaed4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSFiniteKernel_withDensity_of_isFiniteKernel (κ : Kernel α β) [IsFiniteKernel κ]
    (hf_ne_top : ∀ a b, f a b ≠ ∞) : IsSFiniteKernel (withDensity κ f) := by
  -- We already have that for `f` bounded from above and a `κ` a finite kernel,
  -- `withDensity κ f` is finite. We write any function as a countable sum of bounded
  -- functions, and decompose an s-finite kernel as a sum of finite kernels. We then use that
  -- `withDensity` commutes with sums for both arguments and get a sum of finite kernels.
  by_cases hf : Measurable (Function.uncurry f)
  swap; · rw [withDensity_of_not_measurable _ hf]; infer_instance
  let fs : ℕ → α → β → ℝ≥0∞ := fun n a b => min (f a b) (n + 1) - min (f a b) n
  have h_le : ∀ a b n, ⌈(f a b).toReal⌉₊ ≤ n → f a b ≤ n := by
    intro a b n hn
    have : (f a b).toReal ≤ n := Nat.le_of_ceil_le hn
    rw [← ENNReal.le_ofReal_iff_toReal_le (hf_ne_top a b) _] at this
    · refine this.trans (le_of_eq ?_)
      rw [ENNReal.ofReal_natCast]
    · norm_cast
      exact zero_le _
  have h_zero : ∀ a b n, ⌈(f a b).toReal⌉₊ ≤ n → fs n a b = 0 := by
    intro a b n hn
    suffices min (f a b) (n + 1) = f a b ∧ min (f a b) n = f a b by
      simp_rw [fs, this.1, this.2, tsub_self (f a b)]
    exact ⟨min_eq_left ((h_le a b n hn).trans (le_add_of_nonneg_right zero_le_one)),
      min_eq_left (h_le a b n hn)⟩
  have hf_eq_tsum : f = ∑' n, fs n := by
    have h_sum_a : ∀ a, Summable fun n => fs n a := by
      refine fun a => Pi.summable.mpr fun b => ?_
      suffices ∀ n, n ∉ Finset.range ⌈(f a b).toReal⌉₊ → fs n a b = 0 from
        summable_of_ne_finset_zero this
      intro n hn_notMem
      rw [Finset.mem_range, not_lt] at hn_notMem
      exact h_zero a b n hn_notMem
    ext a b : 2
    rw [tsum_apply (Pi.summable.mpr h_sum_a), tsum_apply (h_sum_a a),
      ENNReal.tsum_eq_liminf_sum_nat]
    have h_finset_sum : ∀ n, ∑ i ∈ Finset.range n, fs i a b = min (f a b) n := fun n ↦ by
      induction n with
      | zero => simp
      | succ n hn =>
        rw [Finset.sum_range_succ, hn]
        simp [fs]
    simp_rw [h_finset_sum]
    refine (Filter.Tendsto.liminf_eq ?_).symm
    refine Filter.Tendsto.congr' ?_ tendsto_const_nhds
    rw [Filter.EventuallyEq, Filter.eventually_atTop]
    exact ⟨⌈(f a b).toReal⌉₊, fun n hn => (min_eq_left (h_le a b n hn)).symm⟩
  rw [hf_eq_tsum, withDensity_tsum _ fun n : ℕ => _]
  swap; · fun_prop
  refine isSFiniteKernel_sum (hκs := fun n => ?_)
  suffices IsFiniteKernel (withDensity κ (fs n)) by haveI := this; infer_instance
  refine isFiniteKernel_withDensity_of_bounded _ (ENNReal.coe_ne_top : ↑n + 1 ≠ ∞) fun a b => ?_
  -- After https://github.com/leanprover/lean4/pull/2734, we need to do beta reduction before `norm_cast`
  beta_reduce
  norm_cast
  calc
    fs n a b ≤ min (f a b) (n + 1) := tsub_le_self
    _ ≤ n + 1 := min_le_right _ _
    _ = ↑(n + 1) := by norm_cast

/-- For an s-finite kernel `κ` and a function `f : α → β → ℝ≥0∞` which is everywhere finite,
`withDensity κ f` is s-finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant8f338afe7f2e90019c8c2a4da1a39e95277da95a31145d9936666812603cd95d.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84bc1fddd889e8bf7cea60414b37e8c9d66b263d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
