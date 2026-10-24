# integral_scaleWindow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db685ae2-40eb-6a16-e763-06d3966bf8e0",
  "kind": "theorem",
  "lexical_name": "integral_scaleWindow",
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
  "slug": "integral-scalewindow--a1e27181b1375d5dc5c96dcc",
  "source": {
    "blob": "c63361f92fc8f634bbe903cddee8ff7740b59f57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant45c67d848356c6a6e62bdf0b69682b039bed0e28bfad2c813ea0077a5f054ecd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1e27181b1375d5dc5c96dcccdbe059d168397e7e609d4f1aa6c67a49d4c797e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant45c67d848356c6a6e62bdf0b69682b039bed0e28bfad2c813ea0077a5f054ecd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db685ae2-40eb-6a16-e763-06d3966bf8e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_scaleWindow (T : ℝ) (m d k : ℕ) (hT : 1 ≤ T)
    (hn : 1 ≤ m * d * k) :
    (∫ A in (1:ℝ)..T, scaleWindow A (Real.log ((m*d*k : ℕ) : ℝ)) m d) =
      omegaWeight T m d k := by
  let t := Real.log ((m*d*k : ℕ) : ℝ)
  have ht : 0 ≤ t := Real.log_nonneg (by exact_mod_cast hn)
  rw [intervalIntegral.integral_of_le hT,
    integral_congr_ae (scaleWindow_ae T t m d ht), setIntegral_indicator measurableSet_Ioc]
  have hsub : Ioc (lowerScale t) (upperScale T m d) ⊆ Ioc 1 T := by
    intro A hA
    exact ⟨(le_max_left _ _).trans_lt hA.1, hA.2.trans (min_le_left _ _)⟩
  rw [inter_eq_right.mpr hsub]
  unfold omegaWeight
  change (∫ A in Ioc (lowerScale t) (upperScale T m d), scalePolynomial A t) =
    if lowerScale t < upperScale T m d then
      scalePrimitive (upperScale T m d) t - scalePrimitive (lowerScale t) t else 0
  split_ifs with h
  · rw [← intervalIntegral.integral_of_le h.le]
    apply intervalIntegral.integral_eq_sub_of_hasDerivAt (f := fun A ↦ scalePrimitive A t)
    · intro A _
      exact scalePrimitive_hasDerivAt A t
    · exact (by unfold scalePolynomial; fun_prop :
        Continuous (fun A ↦ scalePolynomial A t)).intervalIntegrable _ _
  · rw [Ioc_eq_empty_of_le (le_of_not_gt h), setIntegral_empty]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant45c67d848356c6a6e62bdf0b69682b039bed0e28bfad2c813ea0077a5f054ecd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant45c67d848356c6a6e62bdf0b69682b039bed0e28bfad2c813ea0077a5f054ecd.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c63361f92fc8f634bbe903cddee8ff7740b59f57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
