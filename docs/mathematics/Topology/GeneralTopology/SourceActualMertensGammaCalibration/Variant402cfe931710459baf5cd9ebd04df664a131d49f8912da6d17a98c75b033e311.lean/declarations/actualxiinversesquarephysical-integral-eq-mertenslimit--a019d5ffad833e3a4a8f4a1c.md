# actualXiInverseSquarePhysical_integral_eq_mertensLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:188feff0-686a-3ebe-8867-bc13dc724a9d",
  "kind": "theorem",
  "lexical_name": "actualXiInverseSquarePhysical_integral_eq_mertensLimit",
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
  "slug": "actualxiinversesquarephysical-integral-eq-mertenslimit--a019d5ffad833e3a4a8f4a1c",
  "source": {
    "blob": "a6a5fb6e18a31defc17a2fee30b6186aed1ff42a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 45,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualMertensGammaCalibration/Variant402cfe931710459baf5cd9ebd04df664a131d49f8912da6d17a98c75b033e311.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a019d5ffad833e3a4a8f4a1c9956bd45c4230bc03722faf91b63e25c7ecca8cf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualMertensGammaCalibration/Variant402cfe931710459baf5cd9ebd04df664a131d49f8912da6d17a98c75b033e311.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:188feff0-686a-3ebe-8867-bc13dc724a9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiInverseSquarePhysical_integral_eq_mertensLimit :
    (∫ y in Ioi (7 : ℝ), shiftedActualChebyshev y / y ^ 2) =
      actualPntMertensLimit - mangoldtLogError (Real.log 7) - 1 +
        (Chebyshev.psi 7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) / 7 := by
  have ha : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  have hd0 := SourceActualPsiPntTimeDecay.actualRelativePsiTimeError_integrableOn.mono_set
    (Ioi_subset_Ici_self : Ioi (0 : ℝ) ⊆ Ici 0)
  have hda := hd0.mono_set (Ioi_subset_Ioi ha)
  have he := (integrableOn_exp_neg_Ioi (Real.log (7 : ℝ))).const_mul
    (2 * (Real.eulerMascheroniConstant + 1 - Real.log 2))
  have hs := intervalIntegral.integral_Ioi_sub_Ioi hd0 ha
  have hf := mangoldtLogError_eq_pnt_relative_primitive ha
  have hdelta : SourceActualPsiPntTimeDecay.actualRelativePsiTimeError (Real.log 7) =
      Chebyshev.psi 7 / 7 - 1 := by
    simp only [SourceActualPsiPntTimeDecay.actualRelativePsiTimeError,
      Real.exp_log (by norm_num : (0 : ℝ) < 7), Real.exp_neg]
    ring
  have hx : Real.exp (-Real.log (7 : ℝ)) = 1 / 7 := by
    rw [Real.exp_neg, Real.exp_log (by norm_num : (0 : ℝ) < 7)]
    norm_num
  rw [actualXiInverseSquarePhysical_integral_eq_time]
  rw [setIntegral_congr_fun measurableSet_Ioi
    (fun t _ => actualXiInverseSquareTimeDensity_eq_relative t)]
  rw [integral_add hda he, integral_const_mul, integral_exp_neg_Ioi, hx]
  rw [hdelta] at hf
  unfold actualPntMertensLimit
  nlinarith

/-- The complete analytic pole value is the same actual closed-seven scalar. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualMertensGammaCalibration/Variant402cfe931710459baf5cd9ebd04df664a131d49f8912da6d17a98c75b033e311.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualMertensGammaCalibration/Variant402cfe931710459baf5cd9ebd04df664a131d49f8912da6d17a98c75b033e311.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6a5fb6e18a31defc17a2fee30b6186aed1ff42a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
