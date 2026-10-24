# not_integrableOn_div_sqrt_of_quarter_power_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fcb8833-2fdd-8869-ee48-341367033014",
  "kind": "theorem",
  "lexical_name": "not_integrableOn_div_sqrt_of_quarter_power_le",
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
  "slug": "not-integrableon-div-sqrt-of-quarter-power-le--76a24796a7419708d19b97fb",
  "source": {
    "blob": "089b8bda4336b4d26f8a627417e5d9f4d8306f75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AbsoluteMertensEnvelopeAudit/Variant72b47ed66f264ea66bd3f9b64ed269b8d77a9e0a012d5ff925b7e9638b5212f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76a24796a7419708d19b97fb93264359dd66ec1a2a79491905cc84cd7b707e6e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AbsoluteMertensEnvelopeAudit/Variant72b47ed66f264ea66bd3f9b64ed269b8d77a9e0a012d5ff925b7e9638b5212f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fcb8833-2fdd-8869-ee48-341367033014`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_integrableOn_div_sqrt_of_quarter_power_le
    (R : ℝ) (hR : 1 ≤ R) (delta : ℝ → ℝ)
    (hdelta : ∀ x : ℝ, R < x → x ^ (-(1 : ℝ) / 4) ≤ delta x) :
    ¬ IntegrableOn (fun x ↦ delta x / Real.sqrt x) (Ioi R) := by
  intro h
  have hRpos : 0 < R := zero_lt_one.trans_le hR
  have hp : IntegrableOn (fun x : ℝ ↦ x ^ (-(3 : ℝ) / 4)) (Ioi R) := by
    apply h.mono' (by fun_prop)
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
    have hxpos : 0 < x := hRpos.trans hx
    rw [Real.norm_eq_abs, abs_of_nonneg (Real.rpow_nonneg hxpos.le _)]
    calc
      x ^ (-(3 : ℝ) / 4) = x ^ (-(1 : ℝ) / 4) / Real.sqrt x :=
        (quarter_power_div_sqrt x hxpos).symm
      _ ≤ delta x / Real.sqrt x :=
        div_le_div_of_nonneg_right (hdelta x hx) (Real.sqrt_nonneg x)
  have hlt := (integrableOn_Ioi_rpow_iff hRpos).mp hp
  norm_num at hlt

end
end EstimateAbsoluteMertensEnvelope
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

set_option pp.fullNames true

#check @FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateAbsoluteMertensEnvelope.quarter_power_div_sqrt
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateAbsoluteMertensEnvelope.quarter_power_div_sqrt
#check @FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateAbsoluteMertensEnvelope.three_quarter_power_integral
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateAbsoluteMertensEnvelope.three_quarter_power_integral
#check @FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateAbsoluteMertensEnvelope.not_integrableOn_div_sqrt_of_quarter_power_le
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateAbsoluteMertensEnvelope.not_integrableOn_div_sqrt_of_quarter_power_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AbsoluteMertensEnvelopeAudit/Variant72b47ed66f264ea66bd3f9b64ed269b8d77a9e0a012d5ff925b7e9638b5212f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AbsoluteMertensEnvelopeAudit/Variant72b47ed66f264ea66bd3f9b64ed269b8d77a9e0a012d5ff925b7e9638b5212f0.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `089b8bda4336b4d26f8a627417e5d9f4d8306f75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
