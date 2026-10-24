# lintegral_abs_det_fderiv_le_addHaar_image_aux2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ddb4cfe-6a46-5ea3-0dbf-089fc77a7296",
  "kind": "theorem",
  "lexical_name": "lintegral_abs_det_fderiv_le_addHaar_image_aux2",
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
  "slug": "lintegral-abs-det-fderiv-le-addhaar-image-aux2--02f440a7fe858a4bef4720ff",
  "source": {
    "blob": "f7cad2063b178cca3d9a88bb2ae37986675b0814",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1040,
    "line": 1023,
    "path": "GRWTSK/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02f440a7fe858a4bef4720ffeb217dbbf003df742403db1c3d739d9b4d73eec9",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ddb4cfe-6a46-5ea3-0dbf-089fc77a7296`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1023–1040.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_abs_det_fderiv_le_addHaar_image_aux2 (hs : MeasurableSet s) (h's : μ s ≠ ∞)
    (hf' : ∀ x ∈ s, HasFDerivWithinAt f (f' x) s x) (hf : InjOn f s) :
    (∫⁻ x in s, ENNReal.ofReal |(f' x).det| ∂μ) ≤ μ (f '' s) := by
  -- We just need to let the error tend to `0` in the previous lemma.
  have :
    Tendsto (fun ε : ℝ≥0 => μ (f '' s) + 2 * ε * μ s) (𝓝[>] 0)
      (𝓝 (μ (f '' s) + 2 * (0 : ℝ≥0) * μ s)) := by
    apply Tendsto.mono_left _ nhdsWithin_le_nhds
    refine tendsto_const_nhds.add ?_
    refine ENNReal.Tendsto.mul_const ?_ (Or.inr h's)
    exact ENNReal.Tendsto.const_mul (ENNReal.tendsto_coe.2 tendsto_id) (Or.inr ENNReal.coe_ne_top)
  simp only [add_zero, zero_mul, mul_zero, ENNReal.coe_zero] at this
  apply ge_of_tendsto this
  filter_upwards [self_mem_nhdsWithin]
  intro ε εpos
  rw [mem_Ioi] at εpos
  exact lintegral_abs_det_fderiv_le_addHaar_image_aux1 μ hs hf' hf εpos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean#L1023).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7cad2063b178cca3d9a88bb2ae37986675b0814` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
