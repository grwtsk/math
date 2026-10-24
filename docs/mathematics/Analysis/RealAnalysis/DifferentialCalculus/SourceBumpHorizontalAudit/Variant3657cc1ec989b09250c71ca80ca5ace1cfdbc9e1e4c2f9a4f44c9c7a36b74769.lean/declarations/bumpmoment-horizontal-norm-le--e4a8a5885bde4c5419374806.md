# bumpMoment_horizontal_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f7caa9f-75ff-7a50-fb6f-0b4fd8c2bdcb",
  "kind": "theorem",
  "lexical_name": "bumpMoment_horizontal_norm_le",
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
  "slug": "bumpmoment-horizontal-norm-le--e4a8a5885bde4c5419374806",
  "source": {
    "blob": "66230497e382cde186eeb9077b13b4ec3a71662c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 493,
    "line": 465,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variant3657cc1ec989b09250c71ca80ca5ace1cfdbc9e1e4c2f9a4f44c9c7a36b74769.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4a8a5885bde4c541937480642826e7480091391c63c245ac8696c01b0bc3d46",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variant3657cc1ec989b09250c71ca80ca5ace1cfdbc9e1e4c2f9a4f44c9c7a36b74769.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f7caa9f-75ff-7a50-fb6f-0b4fd8c2bdcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 465–493.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bumpMoment_horizontal_norm_le (ε t : ℝ) (hε : 0 ≤ ε) :
    ‖bumpMoment 0 ((t : ℂ) * Complex.I)‖ ≤
      ‖bumpMoment 0 ((ε : ℂ) + (t : ℂ) * Complex.I)‖ := by
  simpa only [Complex.ofReal_zero, zero_add] using
    bumpMoment_horizontal_norm_monotone t (show (0 : ℝ) ∈ Ici 0 from by simp)
      (show ε ∈ Ici 0 from hε) hε

end
end SourceBumpHorizontalScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @SourceBumpHorizontalScratch.radial_boundary_energy_identity
#print SourceBumpHorizontalScratch.radial_boundary_energy_identity
#print axioms SourceBumpHorizontalScratch.radial_boundary_energy_identity
#check @SourceBumpHorizontalScratch.bumpMoment_derivative_pairing_nonneg
#print SourceBumpHorizontalScratch.bumpMoment_derivative_pairing_nonneg
#print axioms SourceBumpHorizontalScratch.bumpMoment_derivative_pairing_nonneg
#check @SourceBumpHorizontalScratch.bumpMoment_horizontal_norm_sq_hasDerivAt
#print SourceBumpHorizontalScratch.bumpMoment_horizontal_norm_sq_hasDerivAt
#print axioms SourceBumpHorizontalScratch.bumpMoment_horizontal_norm_sq_hasDerivAt
#check @SourceBumpHorizontalScratch.bumpMoment_horizontal_norm_monotone
#print SourceBumpHorizontalScratch.bumpMoment_horizontal_norm_monotone
#print axioms SourceBumpHorizontalScratch.bumpMoment_horizontal_norm_monotone
#check @SourceBumpHorizontalScratch.bumpMoment_horizontal_norm_le
#print SourceBumpHorizontalScratch.bumpMoment_horizontal_norm_le
#print axioms SourceBumpHorizontalScratch.bumpMoment_horizontal_norm_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variant3657cc1ec989b09250c71ca80ca5ace1cfdbc9e1e4c2f9a4f44c9c7a36b74769.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variant3657cc1ec989b09250c71ca80ca5ace1cfdbc9e1e4c2f9a4f44c9c7a36b74769.lean#L465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66230497e382cde186eeb9077b13b4ec3a71662c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
