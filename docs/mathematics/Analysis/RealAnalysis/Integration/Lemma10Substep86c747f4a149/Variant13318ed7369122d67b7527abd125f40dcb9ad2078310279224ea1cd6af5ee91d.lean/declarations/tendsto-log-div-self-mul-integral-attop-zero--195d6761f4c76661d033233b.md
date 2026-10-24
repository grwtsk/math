# tendsto_log_div_self_mul_integral_atTop_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51a4199d-a7e1-036b-c246-ed771edf5505",
  "kind": "lemma",
  "lexical_name": "tendsto_log_div_self_mul_integral_atTop_zero",
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
  "slug": "tendsto-log-div-self-mul-integral-attop-zero--195d6761f4c76661d033233b",
  "source": {
    "blob": "96412d1ff7921d8348f589fce58fc9abd41397e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3177,
    "line": 3163,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:195d6761f4c76661d033233b2ae2dcbca69f0bd2293010c214a837138f7965c6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51a4199d-a7e1-036b-c246-ed771edf5505`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3163–3177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_log_div_self_mul_integral_atTop_zero {x₁ : ℝ} (hx₁ : 14 ≤ x₁) :
    Filter.Tendsto (fun y ↦ (Real.log y / y) * ∫ s in x₁..y, 1 / (Real.log s) ^ 2) Filter.atTop (nhds 0) := by
  have h_lim : Filter.Tendsto (fun y ↦ Real.log x₁ / (Real.log x₁ - 2) / Real.log y) Filter.atTop (nhds 0) := by
    have h_inv : Filter.Tendsto (fun y ↦ (Real.log y)⁻¹) Filter.atTop (nhds 0) :=
      Filter.Tendsto.comp tendsto_inv_atTop_zero Real.tendsto_log_atTop
    have := tendsto_const_nhds (x := Real.log x₁ / (Real.log x₁ - 2)) |>.mul h_inv
    simp only [mul_zero] at this
    rwa [show (fun x ↦ Real.log x₁ / (Real.log x₁ - 2) * (Real.log x)⁻¹) =
        (fun y ↦ Real.log x₁ / (Real.log x₁ - 2) / Real.log y) by ext y; ring] at this
  refine tendsto_of_tendsto_of_tendsto_of_le_of_le' tendsto_const_nhds h_lim ?_ ?_
  · filter_upwards [Filter.eventually_ge_atTop x₁] with y hy
    exact log_div_self_mul_integral_nonneg hx₁ hy
  · filter_upwards [Filter.eventually_ge_atTop x₁] with y hy
    exact log_div_self_mul_integral_le_of_ge hx₁ hy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean#L3163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96412d1ff7921d8348f589fce58fc9abd41397e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
