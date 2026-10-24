# actualEulerMellinSlope_variation_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f1cf9f1-3d26-bf11-d6b7-edffb32170d1",
  "kind": "theorem",
  "lexical_name": "actualEulerMellinSlope_variation_lower",
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
  "slug": "actualeulermellinslope-variation-lower--54e82e68bf2c59030a228800",
  "source": {
    "blob": "fdc6d062cde1c661dd1981fa7d0107d82dd77e03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 44,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEulerDerivativeVariation/Variant493ce6c6f7235ddc04cc919dafb4121ca6bd01113fce02de9b70eb0c7c73bff4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54e82e68bf2c59030a2288009dc805972391d869034faf41ec9cd258d021b761",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualEulerDerivativeVariation/Variant493ce6c6f7235ddc04cc919dafb4121ca6bd01113fce02de9b70eb0c7c73bff4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f1cf9f1-3d26-bf11-d6b7-edffb32170d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualEulerMellinSlope_variation_lower (A c T : ℝ)
    (hA : 1 ≤ A) (hT : 0 ≤ T) :
    ‖actualInitialPrimeMellin A (c : ℂ)‖ -
      ‖actualInitialPrimeMellin A ((c : ℂ) + (T : ℂ) * I)‖ ≤
        ∫ t in 0..T, ‖actualEulerMellinSlope A ((c : ℂ) + (t : ℂ) * I)‖ := by
  let s : ℝ → ℂ := fun t => (c : ℂ) + (t : ℂ) * I
  have hs (t : ℝ) : HasDerivAt s I t := by
    simpa [s] using ((hasDerivAt_id t).ofReal_comp.mul_const I).const_add (c : ℂ)
  have hh (t : ℝ) : HasDerivAt (fun t => actualInitialPrimeMellin A (s t))
      (I * actualEulerMellinSlope A (s t)) t := by
    convert! (actualEulerMellin_hasDerivAt A hA (s t)).comp t (hs t) using 1
    exact mul_comm _ _
  have hi : (∫ t in 0..T, I * actualEulerMellinSlope A (s t)) =
      actualInitialPrimeMellin A (s T) - actualInitialPrimeMellin A (s 0) := by
    exact intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hh t)
      ((by have h := slope_continuous A; fun_prop : Continuous
        (fun t => I * actualEulerMellinSlope A (s t))).intervalIntegrable _ _)
  have hn := intervalIntegral.norm_integral_le_integral_norm
    (μ := volume) (f := fun t => I * actualEulerMellinSlope A (s t)) hT
  rw [hi] at hn
  simp only [norm_mul, norm_I, one_mul] at hn
  have hd := norm_sub_norm_le (actualInitialPrimeMellin A (s 0))
    (actualInitialPrimeMellin A (s T))
  rw [norm_sub_rev] at hd
  simpa only [s, Complex.ofReal_zero, zero_mul, add_zero] using hd.trans hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEulerDerivativeVariation/Variant493ce6c6f7235ddc04cc919dafb4121ca6bd01113fce02de9b70eb0c7c73bff4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEulerDerivativeVariation/Variant493ce6c6f7235ddc04cc919dafb4121ca6bd01113fce02de9b70eb0c7c73bff4.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdc6d062cde1c661dd1981fa7d0107d82dd77e03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
