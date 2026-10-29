-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.UniformMaximalMomentEstimate.Variantdd2c0fbd01d8916c8a2d8b3ed4dfaacaa797233ac19db0b1fe461be90ec54255","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd2c0fbd01d8916c8a2d8b3ed4dfaacaa797233ac19db0b1fe461be90ec54255","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.UniformMaximalMomentEstimate.Variantdd2c0fbd01d8916c8a2d8b3ed4dfaacaa797233ac19db0b1fe461be90ec54255","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"dd2c0fbd01d8916c8a2d8b3ed4dfaacaa797233ac19db0b1fe461be90ec54255","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:a2f9e71745958989db370315/workspace/lib/Surface/Core/ConductorThreePrimeMomentProgram.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeWangZahlTTStar
public import Surface.Core.PrimeLattice.BVMaximalDuality
public import Surface.Core.ConductorThreeMellinLogDerivative
import Mathlib.Tactic

/-!
# The fixed-frame conductor-three prime moment program

This module completes every logical edge after the uniform maximal-moment
estimate.  It does not construct that estimate.  Hence the only unproved
research content remains visible in the inhabitance of
`ConductorThreePrimeMomentProgram`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.UniformMaximalMomentEstimate.Variantdd2c0fbd01d8916c8a2d8b3ed4dfaacaa797233ac19db0b1fe461be90ec54255

public section

namespace Surface.Core.ConductorThreePrimeMoment

noncomputable section

open Surface.Core.ConductorThreeHalfPlusEpsilon
open Surface.Core.ConductorThreeMellinLogDerivative
open Surface.Core.AnalyticPrimeWalk
open Surface.Core.ConductorThreeMomentPackets
open Surface.Core.ConductorThreePacketUnsmoothing
open Surface.Core.PrimeLattice.BVMaximalDuality
open Surface.Core.PrimeLattice.MomentPath

/-- Uniform control of every moment of one fixed packet frame family. -/
@[expose]
def UniformMaximalMomentEstimate
    (route : ConductorThreePrimeMomentRoute) : Prop :=
  ∀ epsilon : ℝ, 0 < epsilon →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ N : ℕ, 2 ≤ N →
        ∀ x : Fin (2 * N + 1),
          ‖(route.frame N).readout (momentState (route.frame N) x)‖ ≤
            C * (N : ℝ) ^ (1 / 2 + epsilon)

/-- The complete unresolved prime-moment program.  The route is fixed before
epsilon is requested. -/
@[expose]
def ConductorThreePrimeMomentProgram : Prop :=
  ∃ route : ConductorThreePrimeMomentRoute,
    UniformMaximalMomentEstimate route

/-- Exact moment readout converts a route-level maximal estimate into the
arithmetic maximal-prefix estimate. -/
@[surface_novel, surface_published]
theorem uniformMaximalMomentEstimate_implies_arithmetic
    (route : ConductorThreePrimeMomentRoute)
    (hmax : UniformMaximalMomentEstimate route) :
    ConductorThreeMaximalMomentEstimate := by
  intro epsilon hepsilon
  obtain ⟨C, hC, hbound⟩ := hmax epsilon hepsilon
  refine ⟨C, hC, ?_⟩
  intro N hN
  unfold maxPrefixNorm
  apply Finset.sup'_le
  intro x hx
  have hxlt : x < 2 * N + 1 := by
    simpa only [Finset.mem_range] using hx
  let moment : Fin (2 * N + 1) := ⟨x, hxlt⟩
  have h := hbound N hN moment
  rw [readout_momentState] at h
  simpa [moment, Complex.norm_real, Real.norm_eq_abs] using h

/-- The fixed-frame maximal program supplies the BV large-sieve endpoint. -/
@[surface_novel, surface_published]
theorem primeMomentProgram_implies_bvPacketEstimate :
    ConductorThreePrimeMomentProgram →
      ConductorThreeBVPacketEstimate := by
  rintro ⟨route, hmax⟩
  exact maximalMomentEstimate_implies_bvPacketEstimate
    (uniformMaximalMomentEstimate_implies_arithmetic route hmax)

/-- Final checked composition: only a Lean proof inhabiting the fixed-frame
prime-moment program can reach conductor-three GRH. -/
@[surface_novel, surface_published]
theorem primeMomentProgram_implies_grh :
    ConductorThreePrimeMomentProgram →
      GRHForConductorThreeCharacter := by
  intro hProgram
  exact halfPlusEpsilon_implies_grh
    (bvPacketEstimate_implies_halfPlusEpsilon
      (primeMomentProgram_implies_bvPacketEstimate hProgram))

end

end Surface.Core.ConductorThreePrimeMoment
