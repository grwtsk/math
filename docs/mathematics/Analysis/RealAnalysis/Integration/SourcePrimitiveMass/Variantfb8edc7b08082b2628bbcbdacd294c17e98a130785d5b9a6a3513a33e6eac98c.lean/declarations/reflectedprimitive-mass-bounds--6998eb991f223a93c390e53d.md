# reflectedPrimitive_mass_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25dba02f-0ed4-fbca-3963-2b4543c8bd6d",
  "kind": "theorem",
  "lexical_name": "reflectedPrimitive_mass_bounds",
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
  "slug": "reflectedprimitive-mass-bounds--6998eb991f223a93c390e53d",
  "source": {
    "blob": "9f1cc9144747c3562e45a94a76026eb8c1782c31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variantfb8edc7b08082b2628bbcbdacd294c17e98a130785d5b9a6a3513a33e6eac98c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6998eb991f223a93c390e53dc6bdee840e050c83c0e81d7d7895cca48caec1f8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variantfb8edc7b08082b2628bbcbdacd294c17e98a130785d5b9a6a3513a33e6eac98c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25dba02f-0ed4-fbca-3963-2b4543c8bd6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflectedPrimitive_mass_bounds {A : ℝ} (hA : 1≤A)
    (hthreshold : (136/7:ℝ)≤A^2) :
    0≤(∫ y in (0:ℝ)..(2*A),reflectedPrimitive A y) ∧
      (∫ y in (0:ℝ)..(2*A),reflectedPrimitive A y)≤4032737280 := by
  have hpos : (0:ℝ)≤2*A := by linarith
  have hL : IntegrableOn (reflectedPrimitive A) (Ioc (0:ℝ) (2*A)) :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hpos).mp
      (reflectedPrimitive_intervalIntegrable A 0 (2*A))
  have hE : IntegrableOn reflectedEnvelope (Ioc (0:ℝ) (2*A)) :=
    reflectedEnvelope_integrable.mono_set Ioc_subset_Ioi_self
  rw [intervalIntegral.integral_of_le hpos]
  constructor
  · apply setIntegral_nonneg measurableSet_Ioc
    intro y hy
    exact reflectedPrimitive_nonneg hA hthreshold ⟨hy.1.le,hy.2⟩
  · have hm := setIntegral_mono_on hL hE measurableSet_Ioc
      (fun y hy => reflectedPrimitive_le_envelope hA ⟨hy.1.le,hy.2⟩)
    apply hm.trans
    rw [←reflectedEnvelope_integral]
    apply setIntegral_mono_set reflectedEnvelope_integrable
    · filter_upwards [ae_restrict_mem measurableSet_Ioi] with y hy
      exact reflectedEnvelope_nonneg hy.le
    · exact Filter.Eventually.of_forall (fun y hy => hy.1)

end ContinuousResearch.SourcePrimitiveMass

set_option pp.fullNames true
set_option pp.universes true

#check ContinuousResearch.SourcePrimitiveMass.expHalfMoment_integrable
#print ContinuousResearch.SourcePrimitiveMass.expHalfMoment_integrable
#print axioms ContinuousResearch.SourcePrimitiveMass.expHalfMoment_integrable

#check ContinuousResearch.SourcePrimitiveMass.expHalfMoment_integral
#print ContinuousResearch.SourcePrimitiveMass.expHalfMoment_integral
#print axioms ContinuousResearch.SourcePrimitiveMass.expHalfMoment_integral

#check ContinuousResearch.SourcePrimitiveMass.reflectedEnvelope_integrable
#print ContinuousResearch.SourcePrimitiveMass.reflectedEnvelope_integrable
#print axioms ContinuousResearch.SourcePrimitiveMass.reflectedEnvelope_integrable

#check ContinuousResearch.SourcePrimitiveMass.reflectedEnvelope_integral
#print ContinuousResearch.SourcePrimitiveMass.reflectedEnvelope_integral
#print axioms ContinuousResearch.SourcePrimitiveMass.reflectedEnvelope_integral

#check ContinuousResearch.SourcePrimitiveMass.reflectedPrimitive_intervalIntegrable
#print ContinuousResearch.SourcePrimitiveMass.reflectedPrimitive_intervalIntegrable
#print axioms ContinuousResearch.SourcePrimitiveMass.reflectedPrimitive_intervalIntegrable

#check ContinuousResearch.SourcePrimitiveMass.reflectedPrimitive_mass_bounds
#print ContinuousResearch.SourcePrimitiveMass.reflectedPrimitive_mass_bounds
#print axioms ContinuousResearch.SourcePrimitiveMass.reflectedPrimitive_mass_bounds
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variantfb8edc7b08082b2628bbcbdacd294c17e98a130785d5b9a6a3513a33e6eac98c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variantfb8edc7b08082b2628bbcbdacd294c17e98a130785d5b9a6a3513a33e6eac98c.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f1cc9144747c3562e45a94a76026eb8c1782c31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
