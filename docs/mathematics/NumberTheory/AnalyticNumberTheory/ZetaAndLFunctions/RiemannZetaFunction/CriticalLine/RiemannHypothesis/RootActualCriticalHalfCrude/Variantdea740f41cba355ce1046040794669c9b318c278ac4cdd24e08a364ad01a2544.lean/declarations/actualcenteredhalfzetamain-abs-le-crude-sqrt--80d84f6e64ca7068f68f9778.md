# actualCenteredHalfZetaMain_abs_le_crude_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f113d138-ee6f-29a9-21f6-c87aab859ce1",
  "kind": "theorem",
  "lexical_name": "actualCenteredHalfZetaMain_abs_le_crude_sqrt",
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
  "slug": "actualcenteredhalfzetamain-abs-le-crude-sqrt--80d84f6e64ca7068f68f9778",
  "source": {
    "blob": "114283bb52e51d3a5fca13b9df3818ceba05b13f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variantdea740f41cba355ce1046040794669c9b318c278ac4cdd24e08a364ad01a2544.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80d84f6e64ca7068f68f9778cef8893a8ed392a21599e61fbd918c6766d787e5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variantdea740f41cba355ce1046040794669c9b318c278ac4cdd24e08a364ad01a2544.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f113d138-ee6f-29a9-21f6-c87aab859ce1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredHalfZetaMain_abs_le_crude_sqrt (U : ℕ) (hU : 1 ≤ U) :
    |actualCenteredHalfZetaMain U| ≤ actualCriticalHalfCrudeConstant * Real.sqrt (U : ℝ) := by
  let Z := |(riemannZeta (1 / 2 : ℂ)).re|
  let H := finiteHalfHarmonic U
  have hH : 0 ≤ H := half_harmonic_nonneg U
  have hM := actualCriticalMoebiusHalf_abs_le_harmonic U
  have ha := actual_alpha_abs_le_one U
  have hab : |alpha U - actualCriticalMoebiusHalf U| ≤ 1 + H :=
    (abs_sub _ _).trans (add_le_add ha hM)
  have hp : |alpha U * H| ≤ H := by
    rw [abs_mul, abs_of_nonneg hH]
    simpa using mul_le_mul_of_nonneg_right ha hH
  have hm : |actualCenteredHalfZetaMain U| ≤ Z * (1 + H) + 1 + H := by
    unfold actualCenteredHalfZetaMain
    apply (abs_sub _ _).trans
    have hh := abs_add_le ((riemannZeta (1 / 2 : ℂ)).re *
      (alpha U - actualCriticalMoebiusHalf U)) (1 : ℝ)
    rw [abs_mul, abs_one] at hh
    exact (add_le_add hh hp).trans
      (add_le_add_right (add_le_add_right
        (mul_le_mul_of_nonneg_left hab (abs_nonneg _)) 1) H)
  have hcal : H ≤ 2 * Real.sqrt (U : ℝ) + Z + 1 :=
    finiteHalfHarmonic_le_calibrated_sqrt U hU
  have hs : (1 : ℝ) ≤ Real.sqrt (U : ℝ) := by
    have hn : (1 : ℝ) ≤ (U : ℝ) := by exact_mod_cast hU
    simpa using Real.sqrt_le_sqrt hn
  have hZ : 0 ≤ Z := abs_nonneg _
  have hHbound : 1 + H ≤ (4 + Z) * Real.sqrt (U : ℝ) := by
    nlinarith [mul_nonneg hZ (sub_nonneg.mpr hs)]
  unfold actualCriticalHalfCrudeConstant
  change |actualCenteredHalfZetaMain U| ≤ (Z + 1) * (4 + Z) * Real.sqrt (U : ℝ)
  calc
    _ ≤ (Z + 1) * (1 + H) := by nlinarith [hm]
    _ ≤ (Z + 1) * ((4 + Z) * Real.sqrt (U : ℝ)) :=
      mul_le_mul_of_nonneg_left hHbound (by positivity)
    _ = _ := by ring

end
end FormalResearch.RiemannHypothesis.RootActualCriticalHalfCrude
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variantdea740f41cba355ce1046040794669c9b318c278ac4cdd24e08a364ad01a2544.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variantdea740f41cba355ce1046040794669c9b318c278ac4cdd24e08a364ad01a2544.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `114283bb52e51d3a5fca13b9df3818ceba05b13f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
