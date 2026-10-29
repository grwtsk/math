-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.RawRhetoricalVector.Variantf730a3c45bcfaf5f888ca2af904b05ccbf09dc1a73ec14940263259b2c28f1f2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f730a3c45bcfaf5f888ca2af904b05ccbf09dc1a73ec14940263259b2c28f1f2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.RawRhetoricalVector.Variantf730a3c45bcfaf5f888ca2af904b05ccbf09dc1a73ec14940263259b2c28f1f2","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"f730a3c45bcfaf5f888ca2af904b05ccbf09dc1a73ec14940263259b2c28f1f2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Rhetorical/Hilbert/Raw.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Rhetorical.Kernel.Core
import DAF.Rhetorical.Role
import Mathlib.Analysis.InnerProductSpace.Completion

/-!
# Raw finite kernel combinations

The raw carrier consists of finitely supported complex coefficient families.
Its inner product may be degenerate.  We therefore install only the
positive-semidefinite `PreInnerProductSpace.Core` here; the Hausdorff quotient
is constructed explicitly in `DAF.Rhetorical.Hilbert.Quotient`.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.RawRhetoricalVector.Variantf730a3c45bcfaf5f888ca2af904b05ccbf09dc1a73ec14940263259b2c28f1f2

noncomputable section

namespace DAF.Rhetorical

open scoped ComplexConjugate ComplexInnerProductSpace ComplexOrder

universe u

/-- Project-level raw coefficient carrier before a kernel is selected. -/
abbrev RawRhetoricalVector := RhetoricalIndex →₀ ℂ

/-- Formal finite linear combinations of kernel indices.  The kernel
parameter keeps the induced seminorm from being conflated with that of a
different kernel on the same index type. -/
@[reducible]
def Raw {Index : Type u} (_kernel : PositiveKernel Index) := Index →₀ ℂ

namespace Raw

variable {Index : Type u} (kernel : PositiveKernel Index)

/-- The finitely supported coefficient family underlying a raw vector. -/
def toFinsupp : Raw kernel ≃ₗ[ℂ] Index →₀ ℂ :=
  LinearEquiv.refl ℂ _

/-- The kernel sesquilinear form on finite combinations. -/
def inner (f g : Raw kernel) : ℂ :=
  f.sum fun i ai ↦ g.sum fun j aj ↦ star ai * kernel i j * aj

/-- The exact positive-semidefinite pre-inner-product core induced by the
kernel. -/
@[reducible]
def core : PreInnerProductSpace.Core ℂ (Raw kernel) where
  inner := inner kernel
  conj_inner_symm f g := by
    unfold inner
    rw [Finsupp.sum_comm]
    simp only [map_finsuppSum]
    congr! 6
    simp only [starRingEnd_apply, map_mul, star_star,
      kernel.conj_matrix_apply_symm]
    ring
  re_inner_nonneg f := by
    exact (RCLike.nonneg_iff.mp (kernel.quadratic_nonnegative f)).1
  add_left _ _ _ := by
    unfold inner
    rw [Finsupp.sum_add_index'] <;>
      simp [← Finsupp.sum_add, add_mul]
  smul_left _ _ _ := by
    unfold inner
    rw [Finsupp.sum_smul_index] <;>
      simp [Finsupp.mul_sum, ← mul_assoc]

/-- The kernel seminorm as an explicit function.  In particular, the raw
carrier deliberately receives no global `SeminormedAddCommGroup` or
`InnerProductSpace` instance: a semidefinite form is not exposed as the
project's inner-product-space boundary before quotienting its radical. -/
def seminorm (f : Raw kernel) : ℝ :=
  Real.sqrt (Raw.inner kernel f f).re

/-- The fixed project convention is conjugate-linear in the first slot. -/
theorem conjugate_linear_left
    (scalar : ℂ) (f g : Raw kernel) :
    Raw.inner kernel (scalar • f) g =
      star scalar * Raw.inner kernel f g :=
  (core kernel).smul_left f g scalar

/-- Hermitian conjugate symmetry of the kernel form. -/
theorem inner_conj_symm (f g : Raw kernel) :
    Raw.inner kernel f g = star (Raw.inner kernel g f) :=
  ((core kernel).conj_inner_symm f g).symm

/-- The fixed project convention is linear in the second slot. -/
theorem linear_right
    (scalar : ℂ) (f g : Raw kernel) :
    Raw.inner kernel f (scalar • g) =
      scalar * Raw.inner kernel f g := by
  letI : PreInnerProductSpace.Core ℂ (Raw kernel) := core kernel
  exact InnerProductSpace.Core.inner_smul_right (𝕜 := ℂ) f g

/-- Additivity in the conjugate-linear slot. -/
theorem add_left (f g h : Raw kernel) :
    Raw.inner kernel (f + g) h =
      Raw.inner kernel f h + Raw.inner kernel g h :=
  (core kernel).add_left f g h

/-- Additivity in the linear slot. -/
theorem add_right (f g h : Raw kernel) :
    Raw.inner kernel f (g + h) =
      Raw.inner kernel f g + Raw.inner kernel f h := by
  letI : PreInnerProductSpace.Core ℂ (Raw kernel) := core kernel
  exact InnerProductSpace.Core.inner_add_right (𝕜 := ℂ) f g h

/-- Nonnegativity of the real kernel energy. -/
theorem inner_self_nonneg (f : Raw kernel) :
    0 ≤ (Raw.inner kernel f f).re :=
  (core kernel).re_inner_nonneg f

/-- Kernel Cauchy--Schwarz inequality on the semidefinite raw span. -/
theorem kernel_cauchy_schwarz (f g : Raw kernel) :
    ‖Raw.inner kernel f g‖ ≤
      Raw.seminorm kernel f * Raw.seminorm kernel g := by
  letI : PreInnerProductSpace.Core ℂ (Raw kernel) := core kernel
  have bound := InnerProductSpace.Core.norm_inner_le_norm
    (𝕜 := ℂ) f g
  change ‖Raw.inner kernel f g‖ ≤
    Real.sqrt (Raw.inner kernel f f).re *
      Real.sqrt (Raw.inner kernel g g).re at bound
  exact bound

/-- A kernel index as a raw basis vector. -/
def basisVector (index : Index) : Raw kernel :=
  Finsupp.single index 1

@[simp]
theorem inner_basisVector_basisVector (i j : Index) :
    Raw.inner kernel (basisVector kernel i) (basisVector kernel j) =
      kernel i j := by
  classical
  simp [basisVector, inner]

end Raw

end DAF.Rhetorical
