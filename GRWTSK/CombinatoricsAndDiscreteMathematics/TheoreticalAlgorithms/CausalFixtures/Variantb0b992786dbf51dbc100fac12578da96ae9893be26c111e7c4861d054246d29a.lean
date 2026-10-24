import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.FullFixtures

/-!
# Six immutable proposals for a finite scheduler calibration

Only the singleton critical profile is tested. Candidate IDs are their list
positions: bad period, bad cut, bad event, valid, bad boundary mode, bad version.
Every proposal is checked against the same original finite fixture. Failed
proposals are distinct whole declarations, never updates of an accepted model.
This theorem does not measure a native kernel, trusted runtime, or RH progress.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.CausalFixtures

/-- The six scheduler inputs in canonical ID order, with one valid singleton candidate. -/
def proposals : List CriticalCandidate :=
  [⟨1, 2, [], .internalOnly, 0, 0⟩,
   ⟨1, 1, [0], .internalOnly, 0, 0⟩,
   ⟨1, 1, [], .internalOnly, 0, 1⟩,
   ⟨1, 1, [], .internalOnly, 0, 0⟩,
   ⟨1, 1, [], .boundaryCover, 0, 0⟩,
   ⟨2, 1, [], .internalOnly, 0, 0⟩]

/-- Replace only the critical proposal in the fixed whole fixture; accepted state is untouched. -/
def declarationFor (candidate : CriticalCandidate) : FullModelDeclaration :=
  { FullFixtures.declaration with critical := candidate }

/-- Complete finite dispositions, distinct proposals, and preservation of the original model. -/
def CandidateDispositions : Prop :=
  proposals.length = 6 ∧ proposals.Pairwise (· ≠ ·) ∧
  proposals.map (fun candidate => assessCritical (declarationFor candidate)) =
    [.rejected, .rejected, .rejected, .accepted, .rejected, .rejected] ∧
  (∀ candidate ∈ proposals,
    { declarationFor candidate with critical := FullFixtures.declaration.critical } =
      FullFixtures.declaration) ∧
  checkCritical FullFixtures.checkedFull = true

theorem candidate_dispositions : CandidateDispositions := by
  refine ⟨by decide, by decide, by decide, ?_, by decide⟩
  intro candidate _
  rfl

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.CausalFixtures
