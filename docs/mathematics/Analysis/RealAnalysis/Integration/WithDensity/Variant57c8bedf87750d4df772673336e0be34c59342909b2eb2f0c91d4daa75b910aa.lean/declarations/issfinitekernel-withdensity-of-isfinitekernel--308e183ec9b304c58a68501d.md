# isSFiniteKernel_withDensity_of_isFiniteKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "104718cdaec4cf8adff813f565e1ec6eee904c91",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 196,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57c8bedf87750d4df772673336e0be34c59342909b2eb2f0c91d4daa75b910aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:155da46a-7981-4885-fe4e-b5961047077c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c662d31c-9821-bc3f-78dd-2aaab8d39827",
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
  "slug": "issfinitekernel-withdensity-of-isfinitekernel--308e183ec9b304c58a68501d",
  "source": {
    "blob": "104718cdaec4cf8adff813f565e1ec6eee904c91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 196,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant57c8bedf87750d4df772673336e0be34c59342909b2eb2f0c91d4daa75b910aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:308e183ec9b304c58a68501d64c0c9ed362a77e1ac0c0dad3c248b95c4ea718f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WithDensity/Variant57c8bedf87750d4df772673336e0be34c59342909b2eb2f0c91d4daa75b910aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c662d31c-9821-bc3f-78dd-2aaab8d39827`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–248.

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
    · simpa
    · exact n.cast_nonneg
  have h_zero : ∀ a b n, ⌈(f a b).toReal⌉₊ ≤ n → fs n a b = 0 := by
    intro a b n hn
    suffices min (f a b) (n + 1) = f a b ∧ min (f a b) n = f a b by
      simp_rw [fs, this.1, this.2, tsub_self (f a b)]
    exact ⟨min_eq_left ((h_le a b n hn).trans (le_add_of_nonneg_right zero_le_one)),
      min_eq_left (h_le a b n hn)⟩
  have hf_eq_tsum : f = ∑' n, fs n := by
    have h_sum_a : ∀ a, Summable fun n => fs n a :=
      fun _ => Pi.summable.mpr fun _ => ENNReal.summable
    ext a b : 2
    rw [Pi.tsum_apply (Pi.summable.mpr h_sum_a), Pi.tsum_apply (h_sum_a a),
      ENNReal.tsum_eq_liminf_sum_nat]
    have h_finsetSum : ∀ n, ∑ i ∈ Finset.range n, fs i a b = min (f a b) n := fun n ↦ by
      induction n with
      | zero => simp
      | succ n hn =>
        rw [Finset.sum_range_succ, hn]
        simp [fs]
    simp_rw [h_finsetSum]
    refine (Filter.Tendsto.liminf_eq ?_).symm
    refine Filter.Tendsto.congr' ?_ tendsto_const_nhds
    rw [Filter.EventuallyEq, Filter.eventually_atTop]
    exact ⟨⌈(f a b).toReal⌉₊, fun n hn => (min_eq_left (h_le a b n hn)).symm⟩
  rw [hf_eq_tsum, withDensity_tsum _ fun n : ℕ => _]
  swap; · fun_prop
  refine isSFiniteKernel_sum (hκs := fun n => ?_)
  suffices IsFiniteKernel (withDensity κ (fs n)) by infer_instance
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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WithDensity/Variant57c8bedf87750d4df772673336e0be34c59342909b2eb2f0c91d4daa75b910aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant57c8bedf87750d4df772673336e0be34c59342909b2eb2f0c91d4daa75b910aa.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `104718cdaec4cf8adff813f565e1ec6eee904c91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
