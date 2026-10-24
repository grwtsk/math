# set_lintegral_condKernelReal_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fcf65f53557e43ad0721daecd32d7d5458b505b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e7f76c4-8c40-7188-9cbb-3e0575bc6556",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d4424b8-71e6-a092-82f3-aea76167b60b",
  "kind": "theorem",
  "lexical_name": "set_lintegral_condKernelReal_prod",
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
  "slug": "set-lintegral-condkernelreal-prod--7aba7c5b345b057475506e6d",
  "source": {
    "blob": "fcf65f53557e43ad0721daecd32d7d5458b505b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 97,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7aba7c5b345b057475506e6d274b782c172564c8d44e34f29f3125fed1ba7cba",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d4424b8-71e6-a092-82f3-aea76167b60b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem set_lintegral_condKernelReal_prod {s : Set α} (hs : MeasurableSet s) {t : Set ℝ}
    (ht : MeasurableSet t) : ∫⁻ a in s, condKernelReal ρ a t ∂ρ.fst = ρ (s ×ˢ t) := by
  -- `set_lintegral_condKernelReal_Iic` gives the result for `t = Iic x`. These sets form a
  -- π-system that generates the Borel σ-algebra, hence we can get the same equality for any
  -- measurable set `t`.
  apply MeasurableSpace.induction_on_inter (borel_eq_generateFrom_Iic ℝ) isPiSystem_Iic _ _ _ _ ht
  · simp only [measure_empty, lintegral_const, zero_mul, prod_empty]
  · rintro t ⟨q, rfl⟩
    exact set_lintegral_condKernelReal_Iic ρ q hs
  · intro t ht ht_lintegral
    calc
      ∫⁻ a in s, condKernelReal ρ a tᶜ ∂ρ.fst =
          ∫⁻ a in s, condKernelReal ρ a univ - condKernelReal ρ a t ∂ρ.fst := by
        congr with a; rw [measure_compl ht (measure_ne_top (condKernelReal ρ a) _)]
      _ = ∫⁻ a in s, condKernelReal ρ a univ ∂ρ.fst - ∫⁻ a in s, condKernelReal ρ a t ∂ρ.fst := by
        rw [lintegral_sub (kernel.measurable_coe (condKernelReal ρ) ht)]
        · rw [ht_lintegral]
          exact measure_ne_top ρ _
        · exact eventually_of_forall fun a => measure_mono (subset_univ _)
      _ = ρ (s ×ˢ univ) - ρ (s ×ˢ t) := by
        rw [set_lintegral_condKernelReal_univ ρ hs, ht_lintegral]
      _ = ρ (s ×ˢ tᶜ) := by
        rw [← measure_diff _ (hs.prod ht) (measure_ne_top ρ _)]
        · rw [prod_diff_prod, compl_eq_univ_diff]
          simp only [diff_self, empty_prod, union_empty]
        · rw [prod_subset_prod_iff]
          exact Or.inl ⟨subset_rfl, subset_univ t⟩
  · intro f hf_disj hf_meas hf_eq
    simp_rw [measure_iUnion hf_disj hf_meas]
    rw [lintegral_tsum fun i => (kernel.measurable_coe _ (hf_meas i)).aemeasurable.restrict,
      prod_iUnion, measure_iUnion]
    · simp_rw [hf_eq]
    · intro i j hij
      rw [Function.onFun, disjoint_prod]
      exact Or.inr (hf_disj hij)
    · exact fun i => MeasurableSet.prod hs (hf_meas i)
#align probability_theory.set_lintegral_cond_kernel_real_prod ProbabilityTheory.set_lintegral_condKernelReal_prod

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcf65f53557e43ad0721daecd32d7d5458b505b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
