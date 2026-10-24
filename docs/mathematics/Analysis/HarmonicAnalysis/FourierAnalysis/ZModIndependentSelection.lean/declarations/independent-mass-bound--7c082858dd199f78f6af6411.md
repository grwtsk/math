# independent_mass_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bb1a717-1c45-8814-b64c-fa73be7a1ad0",
  "kind": "theorem",
  "lexical_name": "independent_mass_bound",
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
  "slug": "independent-mass-bound--7c082858dd199f78f6af6411",
  "source": {
    "blob": "81445acd3340984720843e8bc6b5ec40f5adecce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 181,
    "path": "GRWTSK/Analysis/Fourier/ZModIndependentSelection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c082858dd199f78f6af6411c6fef363fc562f5aa0753dee30bccf2da7b8f875",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bb1a717-1c45-8814-b64c-fa73be7a1ad0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem independent_mass_bound
    (value : ∀ i, κ i → ZMod p) (z : ZMod p) :
    valueProbability (selectionSum value) z ≤ (p : ℝ)⁻¹ *
      ∑ χ : ZMod p, ∏ i, ‖coordinateCharacterAverage value i χ‖ := by
  have h : ‖(valueProbability (selectionSum value) z : ℂ)‖ ≤
      (p : ℝ)⁻¹ * ∑ χ : ZMod p, ∏ i, ‖coordinateCharacterAverage value i χ‖ := by
    rw [independent_fourier_formula, norm_mul]
    simp only [norm_inv, Complex.norm_natCast]
    apply mul_le_mul_of_nonneg_left _ (by positivity)
    calc
      ‖∑ χ : ZMod p, ZMod.stdAddChar (-(χ * z)) *
          ∏ i, coordinateCharacterAverage value i χ‖ ≤
          ∑ χ : ZMod p, ‖ZMod.stdAddChar (-(χ * z)) *
            ∏ i, coordinateCharacterAverage value i χ‖ := norm_sum_le _ _
      _ = ∑ χ : ZMod p, ∏ i, ‖coordinateCharacterAverage value i χ‖ := by simp
  simpa only [Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (valueProbability_nonneg _ _)] using h

omit [Fintype ι] [DecidableEq ι] in
/-- The zero-frequency character average is exactly one for every nonempty part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModIndependentSelection.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81445acd3340984720843e8bc6b5ec40f5adecce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
