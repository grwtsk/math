# fejer_kernel_integral_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84f685935c5324bdcc51c6fdf7db424d8bd5db1c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 406,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e7eaa24-1f4e-364e-2945-cea3ec017571",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1aff681b-15af-a27c-5536-530c7332e3bc",
  "kind": "theorem",
  "lexical_name": "fejer_kernel_integral_one",
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
  "slug": "fejer-kernel-integral-one--88f0cc69bd25644d06dfa56a",
  "source": {
    "blob": "84f685935c5324bdcc51c6fdf7db424d8bd5db1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 406,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88f0cc69bd25644d06dfa56adb64728a017ea3637a2e7b796b6e9d87926db501",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1aff681b-15af-a27c-5536-530c7332e3bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fejer_kernel_integral_one (n : ℕ) : (1 / Real.pi) * ∫ t in (-Real.pi)..Real.pi, fejer_kernel n t = 1 := by
  unfold fejer_kernel;
  -- By Fubini's theorem, we can interchange the order of summation and integration.
  have h_fubini : ∫ t in (-Real.pi)..Real.pi, (∑ j ∈ Finset.range (n + 1), dirichlet_kernel j t) = ∑ j ∈ Finset.range (n + 1), ∫ t in (-Real.pi)..Real.pi, dirichlet_kernel j t := by
    rw [ intervalIntegral.integral_finset_sum ];
    intro i hi; apply_rules [ Continuous.intervalIntegrable ] ; unfold dirichlet_kernel; continuity;
  -- By definition of $D_n(t)$, we know that $\int_{-\pi}^{\pi} D_n(t) \, dt = \pi$.
  have h_dirichlet_integral : ∀ j : ℕ, ∫ t in (-Real.pi)..Real.pi, dirichlet_kernel j t = Real.pi := by
    intro j; unfold dirichlet_kernel; rw [ intervalIntegral.integral_add ] <;> norm_num ; ring;
    · erw [ intervalIntegral.integral_finset_sum ] <;> norm_num;
      · erw [ Finset.sum_eq_zero ] ; intros ; rw [ intervalIntegral.integral_comp_mul_left ] <;> norm_num ; aesop;
      · exact fun _ _ _ => Continuous.intervalIntegrable ( Real.continuous_cos.comp <| by continuity ) _ _;
    · exact Continuous.intervalIntegrable ( continuous_finset_sum _ fun _ _ => Real.continuous_cos.comp ( by continuity ) ) _ _;
  simp_all +decide [ div_eq_inv_mul, mul_assoc, mul_comm, mul_left_comm, ne_of_gt Real.pi_pos ];
  exact mul_inv_cancel₀ ( by positivity )

/-
Property (c) part 1: The Fejér kernel is bounded by (n+1)/2.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84f685935c5324bdcc51c6fdf7db424d8bd5db1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
