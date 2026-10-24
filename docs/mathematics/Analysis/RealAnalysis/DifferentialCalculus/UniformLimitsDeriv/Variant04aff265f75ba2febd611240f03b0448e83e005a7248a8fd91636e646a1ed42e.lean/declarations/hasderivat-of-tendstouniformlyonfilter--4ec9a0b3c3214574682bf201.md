# hasDerivAt_of_tendstoUniformlyOnFilter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "02f0ab0d1bf8a64b632f46baaf0433dd90d24e1f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 499,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04aff265f75ba2febd611240f03b0448e83e005a7248a8fd91636e646a1ed42e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3d50731-a38a-b840-b1db-b36cba4eeab1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8d4ec66-f655-e896-e707-c45bbfc7719f",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_of_tendstoUniformlyOnFilter",
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
  "slug": "hasderivat-of-tendstouniformlyonfilter--4ec9a0b3c3214574682bf201",
  "source": {
    "blob": "02f0ab0d1bf8a64b632f46baaf0433dd90d24e1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 499,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant04aff265f75ba2febd611240f03b0448e83e005a7248a8fd91636e646a1ed42e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ec9a0b3c3214574682bf201a23a7d9775f82dbf17cad6b468f35005bd0c6bba",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant04aff265f75ba2febd611240f03b0448e83e005a7248a8fd91636e646a1ed42e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8d4ec66-f655-e896-e707-c45bbfc7719f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 499–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_of_tendstoUniformlyOnFilter [NeBot l]
    (hf' : TendstoUniformlyOnFilter f' g' l (𝓝 x))
    (hf : ∀ᶠ n : ι × 𝕜 in l ×ˢ 𝓝 x, HasDerivAt (f n.1) (f' n.1 n.2) n.2)
    (hfg : ∀ᶠ y in 𝓝 x, Tendsto (fun n => f n y) l (𝓝 (g y))) : HasDerivAt g (g' x) x := by
  -- The first part of the proof rewrites `hf` and the goal to be functions so that Lean
  -- can recognize them when we apply `hasFDerivAt_of_tendstoUniformlyOnFilter`
  let F' n z := (1 : 𝕜 →L[𝕜] 𝕜).smulRight (f' n z)
  let G' z := (1 : 𝕜 →L[𝕜] 𝕜).smulRight (g' z)
  simp_rw [hasDerivAt_iff_hasFDerivAt] at hf ⊢
  -- Now we need to rewrite hf' in terms of continuous_linear_maps. The tricky part is that
  -- operator norms are written in terms of `≤` whereas metrics are written in terms of `<`. So we
  -- need to shrink `ε` utilizing the archimedean property of `ℝ`
  have hf' : TendstoUniformlyOnFilter F' G' l (𝓝 x) := by
    rw [Metric.tendstoUniformlyOnFilter_iff] at hf' ⊢
    intro ε hε
    obtain ⟨q, hq, hq'⟩ := exists_between hε.lt
    apply (hf' q hq).mono
    intro n hn
    refine' lt_of_le_of_lt _ hq'
    simp only [dist_eq_norm] at hn ⊢
    refine' ContinuousLinearMap.op_norm_le_bound _ hq.le _
    intro z
    simp only [ContinuousLinearMap.coe_sub', Pi.sub_apply, ContinuousLinearMap.smulRight_apply,
      ContinuousLinearMap.one_apply]
    rw [← smul_sub, norm_smul, mul_comm]
    gcongr
  exact hasFDerivAt_of_tendstoUniformlyOnFilter hf' hf hfg
#align has_deriv_at_of_tendsto_uniformly_on_filter hasDerivAt_of_tendstoUniformlyOnFilter

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant04aff265f75ba2febd611240f03b0448e83e005a7248a8fd91636e646a1ed42e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant04aff265f75ba2febd611240f03b0448e83e005a7248a8fd91636e646a1ed42e.lean#L499).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02f0ab0d1bf8a64b632f46baaf0433dd90d24e1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
