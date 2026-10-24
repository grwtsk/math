# sourceMass_lt_reference_norm_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ad299e8-ec0c-7965-1506-1e8ad7f4a5b5",
  "kind": "theorem",
  "lexical_name": "sourceMass_lt_reference_norm_sq",
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
  "slug": "sourcemass-lt-reference-norm-sq--729a471559669beb333a3c07",
  "source": {
    "blob": "9cb6b154192c6589910bbe15075a475067ab95cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 86,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarControllerAudit/Variant0acc887cf31253ae46766e56d42c23636211220f833be2c157b7ab2323cae1fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:729a471559669beb333a3c07b51e89ed63175c7a92e0b13a653c5ae14db051c6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarControllerAudit/Variant0acc887cf31253ae46766e56d42c23636211220f833be2c157b7ab2323cae1fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ad299e8-ec0c-7965-1506-1e8ad7f4a5b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMass_lt_reference_norm_sq (α : ℝ) (hα : 0 < α) :
    sourceMass α < 1 / 2 := by
  have hd : 0 < 2 * (kernelMass ^ 2 + α) :=
    mul_pos (by norm_num) (add_pos_of_nonneg_of_pos (sq_nonneg _) hα)
  have hp : 0 < kappa ^ 2 / (2 * (kernelMass ^ 2 + α)) :=
    div_pos (sq_pos_of_pos kappa_pos) hd
  linarith [sourceMass_le_scalar_improvement α hα]

end
end SourceScalarControllerScratch

set_option pp.proofs true
set_option pp.universes true
set_option pp.fullNames true
set_option pp.maxSteps 10000000
set_option pp.deepTerms true
#print SourceScalarControllerScratch.kappa
#print axioms SourceScalarControllerScratch.kappa
#print SourceScalarControllerScratch.kappa_pos
#print axioms SourceScalarControllerScratch.kappa_pos
#print SourceScalarControllerScratch.reference_source_inner_re
#print axioms SourceScalarControllerScratch.reference_source_inner_re
#print SourceScalarControllerScratch.scaled_reference_full_energy
#print axioms SourceScalarControllerScratch.scaled_reference_full_energy
#print SourceScalarControllerScratch.scalarController
#print axioms SourceScalarControllerScratch.scalarController
#print SourceScalarControllerScratch.scalarController_full_energy_le
#print axioms SourceScalarControllerScratch.scalarController_full_energy_le
#print SourceScalarControllerScratch.sourceMass_le_scalar_improvement
#print axioms SourceScalarControllerScratch.sourceMass_le_scalar_improvement
#print SourceScalarControllerScratch.sourceMass_lt_reference_norm_sq
#print axioms SourceScalarControllerScratch.sourceMass_lt_reference_norm_sq
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarControllerAudit/Variant0acc887cf31253ae46766e56d42c23636211220f833be2c157b7ab2323cae1fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarControllerAudit/Variant0acc887cf31253ae46766e56d42c23636211220f833be2c157b7ab2323cae1fb.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cb6b154192c6589910bbe15075a475067ab95cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
