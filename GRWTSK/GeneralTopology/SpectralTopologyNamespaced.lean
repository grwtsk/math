-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ZeroIndicator.Variantb3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ZeroIndicator.Variantb3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4","mathematical_subject":"Topology.GeneralTopology","original_sha256":"b3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/N/cord/src/theory/CordTheory/SpectralTopology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import CordTheory.FiniteFunctionAlgebra

/-!
# Discrete finite spectral realization

For the full finite function algebra `X → k`, every subset of `X` is the zero
locus of one coordinate function.  The resulting represented Zariski topology
on the point carrier is therefore discrete.
-/


namespace GRWTSK.Topology.GeneralTopology.ZeroIndicator.Variantb3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4

namespace Cord

section Spectral

variable {X k : Type*} [Fintype X] [DecidableEq X] [Field k]

/-- A coordinate function whose zero locus is exactly `Y`. -/
noncomputable def zeroIndicator (Y : Set X) : X → k :=
  by
    classical
    exact fun x => if x ∈ Y then 0 else 1

omit [Fintype X] [DecidableEq X] in
@[simp] theorem zeroIndicator_eq_zero_iff (Y : Set X) (x : X) :
    zeroIndicator (k := k) Y x = 0 ↔ x ∈ Y := by
  classical
  by_cases hx : x ∈ Y <;> simp [zeroIndicator, hx]

omit [Fintype X] [DecidableEq X] in
/-- Every subset of a finite rhetorical carrier is an algebraic zero set. -/
theorem every_set_is_zero_locus (Y : Set X) :
    {x | zeroIndicator (k := k) Y x = 0} = Y := by
  ext x
  exact zeroIndicator_eq_zero_iff (k := k) Y x

/-- The discrete topology used by the finite spectral realization. -/
@[reducible] def finiteSpectralTopology : TopologicalSpace X where
  IsOpen _ := True
  isOpen_univ := trivial
  isOpen_inter := by
    intro _ _ _ _
    trivial
  isOpen_sUnion := by
    intro _ _
    trivial

omit [Fintype X] [DecidableEq X] in
/-- Every subset is open in the finite spectral realization. -/
theorem finiteSpectralTopology_isOpen (S : Set X) :
    @IsOpen X (finiteSpectralTopology (X := X)) S := by
  trivial

omit [Fintype X] [DecidableEq X] in
/-- Every subset is closed in the finite spectral realization. -/
theorem finiteSpectralTopology_isClosed (S : Set X) :
    @IsClosed X (finiteSpectralTopology (X := X)) S := by
  apply @IsClosed.mk X (finiteSpectralTopology (X := X)) S
  trivial

omit [Fintype X] [DecidableEq X] in
/-- Every singleton is clopen. -/
theorem singleton_clopen (x : X) :
    @IsClopen X (finiteSpectralTopology (X := X)) ({x} : Set X) := by
  exact ⟨finiteSpectralTopology_isClosed ({x} : Set X),
    finiteSpectralTopology_isOpen ({x} : Set X)⟩

omit [Fintype X] in
/-- A determining sample for the full function algebra contains every point. -/
theorem full_function_determining_sample_eq_univ
    (sample : Set X)
    (hdet : DeterminingSample
      (Set.univ : Set (X → k)) sample) :
    sample = Set.univ := by
  apply Set.eq_univ_of_forall
  intro x
  by_contra hx
  let f : X → k := FunctionIdeal.pointMass x 1
  have hEq : f = 0 := by
    apply hdet (by simp) (by simp)
    intro y hy
    have hyx : y ≠ x := by
      intro h
      subst y
      exact hx hy
    simp [f, hyx]
  have hAtX := congrFun hEq x
  simp [f] at hAtX

end Spectral

end Cord
