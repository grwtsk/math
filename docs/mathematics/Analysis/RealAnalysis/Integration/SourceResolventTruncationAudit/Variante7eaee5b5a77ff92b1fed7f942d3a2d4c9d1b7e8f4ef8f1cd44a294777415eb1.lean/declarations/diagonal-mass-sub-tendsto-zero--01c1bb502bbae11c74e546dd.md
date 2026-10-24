# diagonal_mass_sub_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e217827-94a7-c7ce-3af1-bf754cd9db7d",
  "kind": "theorem",
  "lexical_name": "diagonal_mass_sub_tendsto_zero",
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
  "slug": "diagonal-mass-sub-tendsto-zero--01c1bb502bbae11c74e546dd",
  "source": {
    "blob": "bd0c92783cfc84b347170b477a6f75b1d1dd1d28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 814,
    "line": 754,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationAudit/Variante7eaee5b5a77ff92b1fed7f942d3a2d4c9d1b7e8f4ef8f1cd44a294777415eb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01c1bb502bbae11c74e546dd95c48c11599322178110f1dad98770dd327ebd99",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceResolventTruncationAudit/Variante7eaee5b5a77ff92b1fed7f942d3a2d4c9d1b7e8f4ef8f1cd44a294777415eb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e217827-94a7-c7ce-3af1-bf754cd9db7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 754–814.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonal_mass_sub_tendsto_zero :
    Tendsto (fun α : ℝ => sourceMass α - truncatedMass (diagonalCutoff α) α)
      (𝓝[>] (0 : ℝ)) (𝓝 0) := by
  apply tendsto_zero_iff_norm_tendsto_zero.mpr
  simpa only [Real.norm_eq_abs] using diagonal_mass_sub_abs_tendsto_zero

end
end FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000

#check @FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.sourceMass
#print FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.sourceMass
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.sourceMass

#check @FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.truncatedMass
#print FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.truncatedMass
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.truncatedMass

#check @FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.sourceShift_isUnit
#print FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.sourceShift_isUnit
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.sourceShift_isUnit

#check @FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.truncatedShift_isUnit
#print FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.truncatedShift_isUnit
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.truncatedShift_isUnit

#check @FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.sourceMass_nonneg
#print FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.sourceMass_nonneg
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.sourceMass_nonneg

#check @FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.truncatedMass_nonneg
#print FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.truncatedMass_nonneg
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.truncatedMass_nonneg

#check @FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.sourceMass_le_half
#print FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.sourceMass_le_half
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.sourceMass_le_half

#check @FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.truncatedMass_le_half
#print FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.truncatedMass_le_half
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.truncatedMass_le_half

#check @FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.mass_sub_abs_le
#print FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.mass_sub_abs_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.mass_sub_abs_le

#check @FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.diagonal_mass_sub_abs_le
#print FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.diagonal_mass_sub_abs_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.diagonal_mass_sub_abs_le

#check @FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.diagonal_mass_sub_abs_tendsto_zero
#print FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.diagonal_mass_sub_abs_tendsto_zero
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.diagonal_mass_sub_abs_tendsto_zero

#check @FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.diagonal_mass_sub_tendsto_zero
#print FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.diagonal_mass_sub_tendsto_zero
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.diagonal_mass_sub_tendsto_zero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceResolventTruncationAudit/Variante7eaee5b5a77ff92b1fed7f942d3a2d4c9d1b7e8f4ef8f1cd44a294777415eb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationAudit/Variante7eaee5b5a77ff92b1fed7f942d3a2d4c9d1b7e8f4ef8f1cd44a294777415eb1.lean#L754).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd0c92783cfc84b347170b477a6f75b1d1dd1d28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
