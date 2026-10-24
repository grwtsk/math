# aux_tendsto_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dae96ff1-4351-dac6-20b1-c8372bee4e9d",
  "kind": "lemma",
  "lexical_name": "aux_tendsto_tsum",
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
  "slug": "aux-tendsto-tsum--406466334d7bfb7ccd810d62",
  "source": {
    "blob": "9bb830fcbf9f3bb0d2783810427812e64068a064",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 257,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant5e3214493e8f81c42bb2867266d17538bd2a0b8556c23f066ab5b95633ae877a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:406466334d7bfb7ccd810d6241046ff432e12d31c49c9e2081ef1ffb8cf8985d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Summable/Variant5e3214493e8f81c42bb2867266d17538bd2a0b8556c23f066ab5b95633ae877a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dae96ff1-4351-dac6-20b1-c8372bee4e9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma aux_tendsto_tsum : Tendsto (fun n : ℕ ↦ 2 / z *
    ∑' (m : ℕ+), (1 / (-(n : ℂ) / z - m) + 1 / (-n / z + m))) atTop (𝓝 (-2 * π * I / z)) := by
  rw [← PNat.tendsto_comp_val_iff]
  have H0 : (fun n : ℕ+ ↦ (2 / z * ∑' (m : ℕ+), (1 / (-(n : ℂ) / z - m) + 1 / (-n / z + m)))) =
      (fun n : ℕ+ ↦ (-2 * π * I / z) - (2 / z * (2 * π * I)) *
      (∑' m : ℕ+, cexp (2 * π * I * (-n / z)) ^ (m : ℕ)) + 2 / n) := by
    ext N
    have h2 := cot_series_rep <| coe_mem_integerComplement ⟨-N / z, im_pnat_div_pos N z⟩
    rw [pi_mul_cot_pi_q_exp, ← sub_eq_iff_eq_add', one_div, inv_div, neg_mul, ← h2,
      ← tsum_zero_pnat_eq_tsum_nat
      (by simpa using norm_exp_two_pi_I_lt_one ⟨-N / z, im_pnat_div_pos N z⟩)] at *
    field [ne_zero z]
  rw [H0]
  nth_rw 2 [show -2 * π * I / z = (-2 * π * I / z) - (2 / z * (2 * π * I)) * 0 + 2 * 0 by ring]
  refine aux_tendsto_tsum_cexp_pnat z |>.const_mul _ |>.const_sub _ |>.add (.const_mul _ ?_)
  exact PNat.tendsto_comp_val_iff.mpr tendsto_inv_atTop_nhds_zero_nat

/- This shows that the limit of the conditional sum over larger intervals tends
to `-2 * π * I / z`. We will then show, in `tsum_tsum_symmetricIco_sub_eq` that if we swap the
order of the sum it tends to `0` instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Summable/Variant5e3214493e8f81c42bb2867266d17538bd2a0b8556c23f066ab5b95633ae877a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant5e3214493e8f81c42bb2867266d17538bd2a0b8556c23f066ab5b95633ae877a.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bb830fcbf9f3bb0d2783810427812e64068a064` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
