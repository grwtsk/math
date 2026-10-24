# tendsto_T_plus_one_mul_exp_atTop_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d718fe9-ccb0-806c-3ba3-783f5812e714",
  "kind": "lemma",
  "lexical_name": "tendsto_T_plus_one_mul_exp_atTop_nhds_zero",
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
  "slug": "tendsto-t-plus-one-mul-exp-attop-nhds-zero--14abbeb1b6170d5a5ef69886",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3113,
    "line": 3094,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14abbeb1b6170d5a5ef69886a24ecb8211602710d29311e87ab76970c73fa7ce",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d718fe9-ccb0-806c-3ba3-783f5812e714`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3094–3113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_T_plus_one_mul_exp_atTop_nhds_zero {k : ℝ} (hk : k < 0) (C : ℝ) :
    Filter.Tendsto (fun (T : ℝ) ↦ C * (T + 1) * Real.exp (k * T)) Filter.atTop (nhds 0) := by
  have h_top : Filter.Tendsto (fun T ↦ - k * T) Filter.atTop Filter.atTop := by
    apply Filter.tendsto_id.const_mul_atTop (by linarith)
  have h_exp_lim := Real.tendsto_pow_mul_exp_neg_atTop_nhds_zero 1 |>.comp h_top
  have h_exp_lim0 := Real.tendsto_pow_mul_exp_neg_atTop_nhds_zero 0 |>.comp h_top
  simp only [Function.comp_def, pow_one, pow_zero, one_mul, neg_mul, neg_neg] at h_exp_lim h_exp_lim0
  have h_Texp : Filter.Tendsto (fun T ↦ T * Real.exp (k * T)) Filter.atTop (nhds 0) := by
    convert h_exp_lim.const_mul (-k⁻¹) using 1
    · ext T; field_simp [hk.ne]
    · simp
  have h_add : Filter.Tendsto (fun T ↦ (T + 1) * Real.exp (k * T)) Filter.atTop (nhds 0) := by
    simp only [add_mul, one_mul]
    convert h_Texp.add h_exp_lim0 using 1
    simp
  convert h_add.const_mul C using 1
  · ext T; ring
  · simp

/-- A utility lemma for integrability of Fourier-like components along a compact path. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L3094).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
