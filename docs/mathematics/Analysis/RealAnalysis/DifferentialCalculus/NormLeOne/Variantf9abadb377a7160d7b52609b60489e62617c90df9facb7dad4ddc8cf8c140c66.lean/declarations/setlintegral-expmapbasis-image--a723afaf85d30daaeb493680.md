# setLIntegral_expMapBasis_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd8fbe0d-453d-e2e1-2927-f908df332f8d",
  "kind": "theorem",
  "lexical_name": "setLIntegral_expMapBasis_image",
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
  "slug": "setlintegral-expmapbasis-image--a723afaf85d30daaeb493680",
  "source": {
    "blob": "0aff246708fc36f4d017192c53af8418ba617fc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 637,
    "line": 606,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variantf9abadb377a7160d7b52609b60489e62617c90df9facb7dad4ddc8cf8c140c66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a723afaf85d30daaeb4936808f93ae1158aa018ea8bbf551d8579512339c8c4d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variantf9abadb377a7160d7b52609b60489e62617c90df9facb7dad4ddc8cf8c140c66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd8fbe0d-453d-e2e1-2927-f908df332f8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 606–637.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setLIntegral_expMapBasis_image {s : Set (realSpace K)} (hs : MeasurableSet s)
    {f : (InfinitePlace K → ℝ) → ℝ≥0∞} (hf : Measurable f) :
    ∫⁻ x in expMapBasis '' s, f x =
      (2 : ℝ≥0∞)⁻¹ ^ nrComplexPlaces K * ENNReal.ofReal (regulator K) * (Module.finrank ℚ K) *
        ∫⁻ x in s, ENNReal.ofReal (Real.exp (x w₀ * Module.finrank ℚ K)) *
          (∏ i : {w : InfinitePlace K // IsComplex w},
            .ofReal (expMapBasis (fun w ↦ x w) i))⁻¹ * f (expMapBasis x) := by
  rw [lintegral_image_eq_lintegral_abs_det_fderiv_mul volume hs
    (fun x _ ↦ (hasFDerivAt_expMapBasis K x).hasFDerivWithinAt) (injective_expMapBasis K).injOn]
  simp_rw [abs_det_fderiv_expMapBasis]
  have : Measurable expMapBasis := (continuous_expMapBasis K).measurable
  rw [← lintegral_const_mul _ (by fun_prop)]
  congr with x
  have : 0 ≤ (∏ w : {w // IsComplex w}, expMapBasis x w.1)⁻¹ :=
    inv_nonneg.mpr <| Finset.prod_nonneg fun _ _ ↦ (expMapBasis_pos _ _).le
  rw [ofReal_mul (by positivity), ofReal_mul (by positivity), ofReal_mul (by positivity),
    ofReal_mul (by positivity), ofReal_pow (by positivity), ofReal_inv_of_pos (Finset.prod_pos
    fun _ _ ↦ expMapBasis_pos _ _), ofReal_inv_of_pos zero_lt_two, ofReal_ofNat, ofReal_natCast,
    ofReal_prod_of_nonneg (fun _ _ ↦ (expMapBasis_pos _ _).le)]
  ring

end expMapBasis

section paramSet

variable [NumberField K]

open scoped Classical in
/--
The set that parametrizes `normAtAllPlaces '' (normLeOne K)`, see
`normAtAllPlaces_normLeOne_eq_image`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variantf9abadb377a7160d7b52609b60489e62617c90df9facb7dad4ddc8cf8c140c66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variantf9abadb377a7160d7b52609b60489e62617c90df9facb7dad4ddc8cf8c140c66.lean#L606).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0aff246708fc36f4d017192c53af8418ba617fc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
