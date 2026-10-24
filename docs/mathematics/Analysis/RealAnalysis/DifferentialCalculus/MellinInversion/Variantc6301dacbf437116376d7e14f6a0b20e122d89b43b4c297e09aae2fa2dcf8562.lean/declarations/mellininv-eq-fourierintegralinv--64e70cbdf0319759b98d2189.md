# mellinInv_eq_fourierIntegralInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35e5e95105a6a7314570a93629a73db8d2e17988",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6301dacbf437116376d7e14f6a0b20e122d89b43b4c297e09aae2fa2dcf8562.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6476fb44-3479-6b29-c87c-6c7460d2d611",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9df8034c-21eb-2b6f-b385-75bb525bb7c8",
  "kind": "theorem",
  "lexical_name": "mellinInv_eq_fourierIntegralInv",
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
  "slug": "mellininv-eq-fourierintegralinv--64e70cbdf0319759b98d2189",
  "source": {
    "blob": "35e5e95105a6a7314570a93629a73db8d2e17988",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc6301dacbf437116376d7e14f6a0b20e122d89b43b4c297e09aae2fa2dcf8562.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64e70cbdf0319759b98d21899d70f4d1b1ebcf857f1b6eebf6dac5ed61617314",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc6301dacbf437116376d7e14f6a0b20e122d89b43b4c297e09aae2fa2dcf8562.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9df8034c-21eb-2b6f-b385-75bb525bb7c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mellinInv_eq_fourierIntegralInv (σ : ℝ) (f : ℂ → E) {x : ℝ} (hx : 0 < x) :
    mellinInv σ f x =
    (x : ℂ) ^ (-σ : ℂ) • 𝓕⁻ (fun (y : ℝ) ↦ f (σ + 2 * π * y * I)) (-Real.log x) := calc
  mellinInv σ f x
    = (x : ℂ) ^ (-σ : ℂ) •
      (∫ (y : ℝ), Complex.exp (2 * π * (y * (-Real.log x)) * I) • f (σ + 2 * π * y * I)) := by
    rw [mellinInv, one_div, ← abs_of_pos (show 0 < (2 * π)⁻¹ by norm_num; exact pi_pos)]
    have hx0 : (x : ℂ) ≠ 0 := ofReal_ne_zero.mpr (ne_of_gt hx)
    simp_rw [neg_add, cpow_add _ _ hx0, mul_smul, integral_smul]
    rw [smul_comm, ← Measure.integral_comp_mul_left]
    congr! 3
    rw [cpow_def_of_ne_zero hx0, ← Complex.ofReal_log hx.le]
    push_cast
    ring_nf
  _ = (x : ℂ) ^ (-σ : ℂ) • 𝓕⁻ (fun (y : ℝ) ↦ f (σ + 2 * π * y * I)) (-Real.log x) := by
    simp [fourierIntegralInv_eq', mul_comm (Real.log _)]

variable [CompleteSpace E]

/-- The inverse Mellin transform of the Mellin transform applied to `x > 0` is x. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc6301dacbf437116376d7e14f6a0b20e122d89b43b4c297e09aae2fa2dcf8562.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc6301dacbf437116376d7e14f6a0b20e122d89b43b4c297e09aae2fa2dcf8562.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35e5e95105a6a7314570a93629a73db8d2e17988` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
