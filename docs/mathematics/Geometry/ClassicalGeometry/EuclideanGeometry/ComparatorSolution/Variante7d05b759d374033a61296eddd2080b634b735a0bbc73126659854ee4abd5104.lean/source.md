# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.ComparatorSolution.Variante7d05b759d374033a61296eddd2080b634b735a0bbc73126659854ee4abd5104

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8cdc3476aac40a9a65e402d941eda96e597912dc` · SHA-256 `908b08f2d044c58e7da0d80a604c66449d069837084caa12ff7a18326c2ae38d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.ClassicalGeometry.EuclideanGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.NavierStokesBreakdownR3.Variant52950d5d618a8d34c9bfbdb16641c81c276e97b6d7fd2a76c08577353f0b0227","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"52950d5d618a8d34c9bfbdb16641c81c276e97b6d7fd2a76c08577353f0b0227","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.EuclideanGeometry.SourceCorpus.NavierStokesBreakdownR3.Variant52950d5d618a8d34c9bfbdb16641c81c276e97b6d7fd2a76c08577353f0b0227","mathematical_subject":"Geometry.EuclideanGeometry","original_sha256":"52950d5d618a8d34c9bfbdb16641c81c276e97b6d7fd2a76c08577353f0b0227","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh-issue-5/external-comparison/NavierStokes/ComparatorSolution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import NavierStokes.ComparatorR3Theorem
import NavierStokes.ComparatorTheorem

/-!
# Navier–Stokes Comparator submission: options (C) and (D)

Expose the project's proof adapters under the reference theorem names.
The adapters import `ComparatorDefinitions`, never the challenge module.
-/


namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.NavierStokesBreakdownR3.Variant52950d5d618a8d34c9bfbdb16641c81c276e97b6d7fd2a76c08577353f0b0227

namespace NavierStokes.Comparator

local notation "ℝ³" => EuclideanSpace ℝ (Fin 3)

/-- (C) Breakdown of Navier–Stokes solutions on ℝ³. -/
theorem navier_stokes_breakdown_R3 (nu : ℝ) (hnu : nu > 0) :
    ∃ (u₀ : ℝ³ → ℝ³) (f : ℝ³ → ℝ → ℝ³),
    InitialVelocityConditionDecay u₀ ∧ ForceConditionDecay f ∧
    ¬ (∃ v p, NavierStokesExistenceAndSmoothnessRn nu u₀ f v p) := by
  exact ComparatorBridge.navier_stokes_breakdown_R3 nu hnu

/-- (D) Breakdown of Navier–Stokes solutions on ℝ³/ℤ³. -/
theorem navier_stokes_breakdown_periodic (nu : ℝ) (hnu : nu > 0) :
    ∃ (u₀ : ℝ³ → ℝ³) (f : ℝ³ → ℝ → ℝ³),
    InitialVelocityConditionPeriodic u₀ ∧ ForceConditionPeriodic f ∧
    ¬ (∃ v p, NavierStokesExistenceAndSmoothnessPeriodic nu u₀ f v p) := by
  exact ComparatorBridge.navier_stokes_breakdown_periodic nu hnu

end NavierStokes.Comparator

#print axioms NavierStokes.Comparator.navier_stokes_breakdown_R3
#print axioms NavierStokes.Comparator.navier_stokes_breakdown_periodic
```
