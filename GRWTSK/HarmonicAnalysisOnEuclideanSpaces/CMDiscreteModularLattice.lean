/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import Mathlib.NumberTheory.Modular
import Mathlib.NumberTheory.Zsqrtd.GaussianInt
import Mathlib.Tactic

/-!
# Genuine integer lattice samples under the modular Möbius action

The boundary sampling set is an explicitly discrete grid of Gaussian integer
coordinates with positive integer imaginary height: (m, h) represents
m + i(h+1), with m in Z and h in N. It is embedded in the UPPER HALF PLANE
so the existing exact SL(2,Z) Möbius action has no denominator poles.

Act on the grid point FIRST using the actual group action. The resulting set
need not be the ORIGINAL integer grid; it is an injectively transformed
labelled set in the continuous upper half-plane. In particular, the action
of SL(2,Z) on a complex modulus is NOT pointwise a Gaussian-lattice
permutation. This is neither the arithmetic Möbius mu(n) nor an AdS5 map.
-/

set_option autoImplicit false
noncomputable section
open scoped MatrixGroups UpperHalfPlane

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMDiscreteModularLattice

/-- Actual discrete two-integer-coordinate Gaussian-lattice sampling grid.
The second coordinate is a natural number to keep the height positive. -/
abbrev LatticeSite := ℤ × ℕ

/-- Embedding of an INTEGER lattice site, not a continuous source label. -/
def latticePoint (site : LatticeSite) : UpperHalfPlane :=
  ⟨⟨(site.1 : ℝ), (site.2 : ℝ) + 1⟩, by
    change 0 < (site.2 : ℝ) + 1
    positivity⟩

@[simp] theorem latticePoint_re (site : LatticeSite) :
    (latticePoint site).re = (site.1 : ℝ) := rfl

@[simp] theorem latticePoint_im (site : LatticeSite) :
    (latticePoint site).im = (site.2 : ℝ) + 1 := rfl

/-- Exact injectivity of the discrete grid into the continuous upper half-plane. -/
theorem latticePoint_injective : Function.Injective latticePoint := by
  intro p q hpq
  have hr := congrArg UpperHalfPlane.re hpq
  have hi := congrArg UpperHalfPlane.im hpq
  change (p.1 : ℝ) = (q.1 : ℝ) at hr
  change (p.2 : ℝ) + 1 = (q.2 : ℝ) + 1 at hi
  have hr' : p.1 = q.1 := by exact_mod_cast hr
  have hi' : p.2 = q.2 := by
    have hh : (p.2 : ℝ) = (q.2 : ℝ) := by linarith
    exact_mod_cast hh
  exact Prod.ext hr' hi'

/-- Discrete Gaussian integer coordinates underlying each point.
The label stays integral even after the conformal image is no longer integral. -/
def latticeGaussian (site : LatticeSite) : GaussianInt :=
  ⟨site.1, (site.2 : ℤ) + 1⟩

/-- The upper-half-plane grid is literally a Gaussian-integer lattice sample. -/
theorem latticePoint_gaussian (site : LatticeSite) :
    (latticePoint site : ℂ) = (latticeGaussian site : ℂ) := by
  apply Complex.ext
  · simp [latticePoint, latticeGaussian, GaussianInt.toComplex_def₂]
  · simp [latticePoint, latticeGaussian, GaussianInt.toComplex_def₂]

/-- Actual fractional-linear modular Möbius action on EACH discrete site. -/
def transformedLatticePoint (g : SL(2, ℤ)) (site : LatticeSite) :
    UpperHalfPlane := g • latticePoint site

/-- The modular action is exactly (a*z+b)/(c*z+d), not an arithmetic mu. -/
theorem transformedLatticePoint_fractional (g : SL(2, ℤ)) (site : LatticeSite) :
    (transformedLatticePoint g site : ℂ) =
      (((g 0 0 : ℤ) : ℂ) * (latticePoint site : ℂ) + ((g 0 1 : ℤ) : ℂ)) /
        (((g 1 0 : ℤ) : ℂ) * (latticePoint site : ℂ) + ((g 1 1 : ℤ) : ℂ)) := by
  simpa [transformedLatticePoint] using
    (UpperHalfPlane.coe_specialLinearGroup_apply g (latticePoint site))

/-- No finite lattice labels are collided by a genuine modular transformation. -/
theorem transformedLatticePoint_injective (g : SL(2, ℤ)) :
    Function.Injective (transformedLatticePoint g) := by
  intro p q h
  have hh := congrArg (fun z : UpperHalfPlane => g⁻¹ • z) h
  have hpoints : latticePoint p = latticePoint q := by
    simpa [transformedLatticePoint] using hh
  exact latticePoint_injective hpoints

/-- The exact group law acts on the sampled lattice positions. -/
theorem latticeAction_comp (g h : SL(2, ℤ)) (site : LatticeSite) :
    transformedLatticePoint (g * h) site =
      g • transformedLatticePoint h site := by
  exact mul_smul g h (latticePoint site)

@[simp] theorem latticeAction_identity (site : LatticeSite) :
    transformedLatticePoint (1 : SL(2, ℤ)) site = latticePoint site := by
  simp [transformedLatticePoint]

/-- A source label n retains its exact integer n and floor(n/2), so a
residue quotient can never serve as the spatial label. -/
def sourceLatticeSite (n : ℕ) : LatticeSite := ((n : ℤ), n / 2)

/-- The full source integer is recoverable even when parity and residue alias. -/
theorem sourceLatticeSite_injective : Function.Injective sourceLatticeSite := by
  intro m n h
  have hh := congrArg Prod.fst h
  change (m : ℤ) = (n : ℤ) at hh
  exact_mod_cast hh

/-- Original integer-labelled source samples are distinct AFTER any g. -/
theorem transformed_source_injective (g : SL(2, ℤ)) :
    Function.Injective (fun n : ℕ => transformedLatticePoint g (sourceLatticeSite n)) :=
  (transformedLatticePoint_injective g).comp sourceLatticeSite_injective

/-- Modular S acts by genuine fractional-linear inversion. It generally
moves Gaussian grid points OFF the original Gaussian grid. -/
theorem modular_S_on_source (n : ℕ) :
    transformedLatticePoint ModularGroup.S (sourceLatticeSite n) =
      UpperHalfPlane.mk (-(latticePoint (sourceLatticeSite n) : ℂ))⁻¹
        (UpperHalfPlane.im_inv_neg_coe_pos _) := by
  exact UpperHalfPlane.modular_S_smul _

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMDiscreteModularLattice
