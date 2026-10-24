# actual_mellin_halfstrip_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98077f96-3fcf-e23b-9650-a6ff3c5327d2",
  "kind": "theorem",
  "lexical_name": "actual_mellin_halfstrip_nonzero",
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
  "slug": "actual-mellin-halfstrip-nonzero--065ec64a374529439540d257",
  "source": {
    "blob": "98146d4a733ec24962d9077dceb75b7303eac8be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 145,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:065ec64a374529439540d257d49d80141e16ceee48f14ac709b045c6194336f1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98077f96-3fcf-e23b-9650-a6ff3c5327d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_mellin_halfstrip_nonzero {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hl : 1/2 < s.re) (hu : s.re < 1) :
    mellin (fun x => (ContinuousResearch.LogarithmicSource.actualLogSource A x : ℂ)) s ≠ 0 := by
  apply (actual_mellin_halfstrip_nonzero_iff_quartic hA hl hu).mpr
  exact literal_quartic_nonzero (actual_halfstrip_quartic_argument_pos hA hl)

end ContinuousResearch.QuarticBumpEnergy

#check ContinuousResearch.QuarticBumpEnergy.rayValue
#print axioms ContinuousResearch.QuarticBumpEnergy.rayValue
#print ContinuousResearch.QuarticBumpEnergy.rayValue

#check ContinuousResearch.QuarticBumpEnergy.raySlope
#print axioms ContinuousResearch.QuarticBumpEnergy.raySlope
#print ContinuousResearch.QuarticBumpEnergy.raySlope

#check ContinuousResearch.QuarticBumpEnergy.weightedMass
#print axioms ContinuousResearch.QuarticBumpEnergy.weightedMass
#print ContinuousResearch.QuarticBumpEnergy.weightedMass

#check ContinuousResearch.QuarticBumpEnergy.weightedEnergy
#print axioms ContinuousResearch.QuarticBumpEnergy.weightedEnergy
#print ContinuousResearch.QuarticBumpEnergy.weightedEnergy

#check ContinuousResearch.QuarticBumpEnergy.rayValue_hasDerivAt
#print axioms ContinuousResearch.QuarticBumpEnergy.rayValue_hasDerivAt
#print ContinuousResearch.QuarticBumpEnergy.rayValue_hasDerivAt

#check ContinuousResearch.QuarticBumpEnergy.raySlope_hasDerivAt
#print axioms ContinuousResearch.QuarticBumpEnergy.raySlope_hasDerivAt
#print ContinuousResearch.QuarticBumpEnergy.raySlope_hasDerivAt

#check ContinuousResearch.QuarticBumpEnergy.rayValue_continuous
#print axioms ContinuousResearch.QuarticBumpEnergy.rayValue_continuous
#print ContinuousResearch.QuarticBumpEnergy.rayValue_continuous

#check ContinuousResearch.QuarticBumpEnergy.raySlope_continuous
#print axioms ContinuousResearch.QuarticBumpEnergy.raySlope_continuous
#print ContinuousResearch.QuarticBumpEnergy.raySlope_continuous

#check ContinuousResearch.QuarticBumpEnergy.weightedRay_hasDerivAt
#print axioms ContinuousResearch.QuarticBumpEnergy.weightedRay_hasDerivAt
#print ContinuousResearch.QuarticBumpEnergy.weightedRay_hasDerivAt

#check ContinuousResearch.QuarticBumpEnergy.conjugateRay_hasDerivAt
#print axioms ContinuousResearch.QuarticBumpEnergy.conjugateRay_hasDerivAt
#print ContinuousResearch.QuarticBumpEnergy.conjugateRay_hasDerivAt

#check ContinuousResearch.QuarticBumpEnergy.mass_integrand_continuous
#print axioms ContinuousResearch.QuarticBumpEnergy.mass_integrand_continuous
#print ContinuousResearch.QuarticBumpEnergy.mass_integrand_continuous

#check ContinuousResearch.QuarticBumpEnergy.energy_integrand_continuous
#print axioms ContinuousResearch.QuarticBumpEnergy.energy_integrand_continuous
#print ContinuousResearch.QuarticBumpEnergy.energy_integrand_continuous

#check ContinuousResearch.QuarticBumpEnergy.weightedEnergy_nonneg
#print axioms ContinuousResearch.QuarticBumpEnergy.weightedEnergy_nonneg
#print ContinuousResearch.QuarticBumpEnergy.weightedEnergy_nonneg

#check ContinuousResearch.QuarticBumpEnergy.rayValue_zero
#print axioms ContinuousResearch.QuarticBumpEnergy.rayValue_zero
#print ContinuousResearch.QuarticBumpEnergy.rayValue_zero

#check ContinuousResearch.QuarticBumpEnergy.weightedMass_pos
#print axioms ContinuousResearch.QuarticBumpEnergy.weightedMass_pos
#print ContinuousResearch.QuarticBumpEnergy.weightedMass_pos

#check ContinuousResearch.QuarticBumpEnergy.weighted_energy_identity
#print axioms ContinuousResearch.QuarticBumpEnergy.weighted_energy_identity
#print ContinuousResearch.QuarticBumpEnergy.weighted_energy_identity

#check ContinuousResearch.QuarticBumpEnergy.literal_quartic_nonzero
#print axioms ContinuousResearch.QuarticBumpEnergy.literal_quartic_nonzero
#print ContinuousResearch.QuarticBumpEnergy.literal_quartic_nonzero

#check ContinuousResearch.QuarticBumpEnergy.actual_mellin_halfstrip_nonzero
#print axioms ContinuousResearch.QuarticBumpEnergy.actual_mellin_halfstrip_nonzero
#print ContinuousResearch.QuarticBumpEnergy.actual_mellin_halfstrip_nonzero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98146d4a733ec24962d9077dceb75b7303eac8be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
