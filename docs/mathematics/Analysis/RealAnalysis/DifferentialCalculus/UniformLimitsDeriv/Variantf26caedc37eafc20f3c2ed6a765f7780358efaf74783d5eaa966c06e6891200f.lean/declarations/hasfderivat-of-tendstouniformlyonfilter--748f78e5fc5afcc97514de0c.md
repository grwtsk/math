# hasFDerivAt_of_tendstoUniformlyOnFilter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "586af740a70451f1d7493a9fc68b7999c4d729b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 305,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a680a92-fdbc-a2e8-18c5-dab8ab666d9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b4318466-424c-9fef-f8ff-99dbb42e24de",
  "kind": "theorem",
  "lexical_name": "hasFDerivAt_of_tendstoUniformlyOnFilter",
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
  "slug": "hasfderivat-of-tendstouniformlyonfilter--748f78e5fc5afcc97514de0c",
  "source": {
    "blob": "586af740a70451f1d7493a9fc68b7999c4d729b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 305,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:748f78e5fc5afcc97514de0c3fb72271dc774ba3f41870f88238e2ffde3b84bb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4318466-424c-9fef-f8ff-99dbb42e24de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFDerivAt_of_tendstoUniformlyOnFilter [NeBot l]
    (hf' : TendstoUniformlyOnFilter f' g' l (𝓝 x))
    (hf : ∀ᶠ n : ι × E in l ×ˢ 𝓝 x, HasFDerivAt (f n.1) (f' n.1 n.2) n.2)
    (hfg : ∀ᶠ y in 𝓝 x, Tendsto (fun n => f n y) l (𝓝 (g y))) : HasFDerivAt g (g' x) x := by
  letI : RCLike 𝕜 := IsRCLikeNormedField.rclike 𝕜
  -- The proof strategy follows several steps:
  --   1. The quantifiers in the definition of the derivative are
  --      `∀ ε > 0, ∃δ > 0, ∀y ∈ B_δ(x)`. We will introduce a quantifier in the middle:
  --      `∀ ε > 0, ∃N, ∀n ≥ N, ∃δ > 0, ∀y ∈ B_δ(x)` which will allow us to introduce the `f(') n`
  --   2. The order of the quantifiers `hfg` are opposite to what we need. We will be able to swap
  --      the quantifiers using the uniform convergence assumption
  rw [hasFDerivAt_iff_tendsto]
  -- Introduce extra quantifier via curried filters
  suffices
    Tendsto (fun y : ι × E => ‖y.2 - x‖⁻¹ * ‖g y.2 - g x - (g' x) (y.2 - x)‖)
      (l.curry (𝓝 x)) (𝓝 0) by
    rw [Metric.tendsto_nhds] at this ⊢
    intro ε hε
    specialize this ε hε
    rw [eventually_curry_iff] at this
    simp only at this
    exact (eventually_const.mp this).mono (by simp only [imp_self, forall_const])
  -- With the new quantifier in hand, we can perform the famous `ε/3` proof. Specifically,
  -- we will break up the limit (the difference functions minus the derivative go to 0) into 3:
  --   * The difference functions of the `f n` converge *uniformly* to the difference functions
  --     of the `g n`
  --   * The `f' n` are the derivatives of the `f n`
  --   * The `f' n` converge to `g'` at `x`
  conv =>
    congr
    ext
    rw [← abs_norm, ← abs_inv, ← @RCLike.norm_ofReal 𝕜 _ _, RCLike.ofReal_inv, ← norm_smul]
  rw [← tendsto_zero_iff_norm_tendsto_zero]
  have :
    (fun a : ι × E => (‖a.2 - x‖⁻¹ : 𝕜) • (g a.2 - g x - (g' x) (a.2 - x))) =
      ((fun a : ι × E => (‖a.2 - x‖⁻¹ : 𝕜) • (g a.2 - g x - (f a.1 a.2 - f a.1 x))) +
          fun a : ι × E =>
          (‖a.2 - x‖⁻¹ : 𝕜) • (f a.1 a.2 - f a.1 x - ((f' a.1 x) a.2 - (f' a.1 x) x))) +
        fun a : ι × E => (‖a.2 - x‖⁻¹ : 𝕜) • (f' a.1 x - g' x) (a.2 - x) := by
    ext; simp only [Pi.add_apply]; rw [← smul_add, ← smul_add]; congr
    simp only [map_sub, sub_add_sub_cancel, ContinuousLinearMap.coe_sub', Pi.sub_apply]
    abel
  simp_rw [this]
  have : 𝓝 (0 : G) = 𝓝 (0 + 0 + 0) := by simp only [add_zero]
  rw [this]
  refine Tendsto.add (Tendsto.add ?_ ?_) ?_
  · have := difference_quotients_converge_uniformly hf' hf hfg
    rw [Metric.tendstoUniformlyOnFilter_iff] at this
    rw [Metric.tendsto_nhds]
    intro ε hε
    apply ((this ε hε).filter_mono curry_le_prod).mono
    intro n hn
    rw [dist_eq_norm] at hn ⊢
    convert hn using 2
    module
  · -- (Almost) the definition of the derivatives
    rw [Metric.tendsto_nhds]
    intro ε hε
    rw [eventually_curry_iff]
    refine hf.curry.mono fun n hn => ?_
    have := hn.self_of_nhds
    rw [hasFDerivAt_iff_tendsto, Metric.tendsto_nhds] at this
    refine (this ε hε).mono fun y hy => ?_
    rw [dist_eq_norm] at hy ⊢
    simp only [sub_zero, map_sub, norm_mul, norm_inv, norm_norm] at hy ⊢
    rw [norm_smul, norm_inv, RCLike.norm_coe_norm]
    exact hy
  · -- hfg' after specializing to `x` and applying the definition of the operator norm
    refine Tendsto.mono_left ?_ curry_le_prod
    have h1 : Tendsto (fun n : ι × E => g' n.2 - f' n.1 n.2) (l ×ˢ 𝓝 x) (𝓝 0) := by
      rw [Metric.tendstoUniformlyOnFilter_iff] at hf'
      exact Metric.tendsto_nhds.mpr fun ε hε => by simpa using hf' ε hε
    have h2 : Tendsto (fun n : ι => g' x - f' n x) l (𝓝 0) := by
      rw [Metric.tendsto_nhds] at h1 ⊢
      exact fun ε hε => (h1 ε hε).curry.mono fun n hn => hn.self_of_nhds
    refine squeeze_zero_norm ?_
      (tendsto_zero_iff_norm_tendsto_zero.mp (tendsto_fst.comp (h2.prodMap tendsto_id)))
    intro n
    simp_rw [norm_smul, norm_inv, RCLike.norm_coe_norm]
    by_cases hx : x = n.2; · simp [hx]
    have hnx : 0 < ‖n.2 - x‖ := by
      rw [norm_pos_iff]; intro hx'; exact hx (eq_of_sub_eq_zero hx').symm
    rw [inv_mul_le_iff₀ hnx, mul_comm]
    simp only [Function.comp_apply, Prod.map_apply']
    rw [norm_sub_rev]
    exact (f' n.1 x - g' x).le_opNorm (n.2 - x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `586af740a70451f1d7493a9fc68b7999c4d729b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
