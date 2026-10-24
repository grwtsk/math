# UniformCauchySeqOnFilter.one_smulRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5387c930-5afb-cfd9-6737-0ca66529cd4a",
  "kind": "theorem",
  "lexical_name": "UniformCauchySeqOnFilter.one_smulRight",
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
  "slug": "uniformcauchyseqonfilter-one-smulright--bd19d1ed1f6ccff75740e87e",
  "source": {
    "blob": "2d05eff24a158325e4d1973f9d52564d0a59ff77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 486,
    "line": 465,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd19d1ed1f6ccff75740e87e39431743b7921f9f385ef0b138b179ac33b79e47",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5387c930-5afb-cfd9-6737-0ca66529cd4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 465–486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UniformCauchySeqOnFilter.one_smulRight {l' : Filter 𝕜}
    (hf' : UniformCauchySeqOnFilter f' l l') :
    UniformCauchySeqOnFilter (fun n => fun z => (1 : 𝕜 →L[𝕜] 𝕜).smulRight (f' n z)) l l' := by
  -- The tricky part of this proof is that operator norms are written in terms of `≤` whereas
  -- metrics are written in terms of `<`. So we need to shrink `ε` utilizing the archimedean
  -- property of `ℝ`
  rw [SeminormedAddGroup.uniformCauchySeqOnFilter_iff_tendstoUniformlyOnFilter_zero,
    Metric.tendstoUniformlyOnFilter_iff] at hf' ⊢
  intro ε hε
  obtain ⟨q, hq, hq'⟩ := exists_between hε.lt
  apply (hf' q hq).mono
  intro n hn
  refine' lt_of_le_of_lt _ hq'
  simp only [dist_eq_norm, Pi.zero_apply, zero_sub, norm_neg] at hn ⊢
  refine' ContinuousLinearMap.op_norm_le_bound _ hq.le _
  intro z
  simp only [ContinuousLinearMap.coe_sub', Pi.sub_apply, ContinuousLinearMap.smulRight_apply,
    ContinuousLinearMap.one_apply]
  rw [← smul_sub, norm_smul, mul_comm]
  gcongr
#align uniform_cauchy_seq_on_filter.one_smul_right UniformCauchySeqOnFilter.one_smulRight

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean#L465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d05eff24a158325e4d1973f9d52564d0a59ff77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
