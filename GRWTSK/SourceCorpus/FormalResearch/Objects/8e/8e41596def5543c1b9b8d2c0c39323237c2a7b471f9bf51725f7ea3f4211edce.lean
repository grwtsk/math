module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.ShellCutoffMatrix
public import Surface.Core.TypeII.BilinearPairing
import Mathlib.Tactic

/-!
# Conductor-three block hyperbolic Carleson estimate

This module states the coefficient-specific square-function estimate for one
dyadic product shell and one canonical factor block.

For the fixed conductor-three Vaughan coefficient vectors

  `a_N(m) = χ₃(m) Λ(m)`,

  `b_N(k) = χ₃(k) ∑_{d ∣ k, d ≤ V_N} μ(d)`,

and every relevant shell factor block `B`, the desired estimate is

  `∑ D, |∑ m ∑ k, a_N(m) 1_{mk ∈ D} b_N(k)|²`

  `  ≤ Cε N^(2ε) (∑ m, |a_N(m)|²) (∑ k, |b_N(k)|²)`.

The constant is chosen after `ε`, but before `N`, the product shell `q`,
the factor block `B`, and the interval `D`.

This file only states the proposition and its finite quantities. It does not
construct an inhabitant, assert GRH, or package the estimate into a geometric
certificate.
-/

public section

namespace Surface.Core.ConductorThreeHyperbolicCarleson

noncomputable section

open scoped BigOperators

open Surface.Core.TypeII
open Surface.Core.ConductorThreeVaughanBlocks

/-! ## Finite coefficient energies -/

/-- Squared finite `ℓ²` energy of a complex-valued coefficient vector. -/
@[expose, surface_novel]
def finiteL2Energy
    {ι : Type*}
    [Fintype ι]
    (f : ι → ℂ) : ℝ :=
  ∑ i : ι, ‖f i‖ ^ 2

/-- Squared `ℓ²` energy of the left Vaughan vector on one factor block. -/
@[expose, surface_novel]
def conductorThreeBlockLeftEnergy
    {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) : ℝ :=
  finiteL2Energy (shellBlockLeftCoefficient B)

/-- Squared `ℓ²` energy of the right Vaughan vector on one factor block. -/
@[expose, surface_novel]
def conductorThreeBlockRightEnergy
    {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) : ℝ :=
  finiteL2Energy (shellBlockRightCoefficient B)

/-! ## Dyadic hyperbolic correlations -/

/--
The conductor-three complex-bilinear correlation associated with one dyadic
interval in the product variable.
-/
@[expose, surface_novel]
def conductorThreeBlockIntervalCorrelation
    {N q : ℕ}
    (B : TypeIIShellFactorBlock N q)
    (D : TypeIIProductDyadicInterval N q) : ℂ :=
  bilinearMatrixPairing
    (shellBlockLeftCoefficient B)
    (typeIIShellIntervalMatrix B D)
    (shellBlockRightCoefficient B)

/-- Total squared dyadic correlation mass for one shell factor block. -/
@[expose, surface_novel]
def conductorThreeBlockHyperbolicSquareMass
    {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) : ℝ :=
  ∑ interval ∈ typeIIProductDyadicIntervals N q,
    ‖conductorThreeBlockIntervalCorrelation B interval‖ ^ 2

/-! ## Uniform Carleson predicate -/

/--
A fixed constant `C` proves the conductor-three block hyperbolic Carleson
estimate at exponent `ε`.

The quantifier order is essential: `C` may depend on `ε`, but not on `N`,
the product shell `q`, the factor block `B`, or a dyadic interval.  The block
itself carries an effective pair in the fixed-master shell, so no separate
shell-nonemptiness hypothesis is required.
-/
@[expose, surface_novel]
def IsConductorThreeBlockHyperbolicCarlesonConstant
    (ε C : ℝ) : Prop :=
  0 ≤ C ∧
    ∀ (N q : ℕ),
      2 ≤ N →
      ∀ B : TypeIIShellFactorBlock N q,
        conductorThreeBlockHyperbolicSquareMass B ≤
          C *
            Real.rpow (N : ℝ) (2 * ε) *
            conductorThreeBlockLeftEnergy B *
            conductorThreeBlockRightEnergy B

/--
Uniform conductor-three block hyperbolic Carleson estimate.

This is deliberately an uninhabited proposition rather than a structure
carrying an estimate as a field.
-/
@[expose, surface_novel]
def ConductorThreeBlockHyperbolicCarleson : Prop :=
  ∀ ε : ℝ,
    0 < ε →
      ∃ C : ℝ,
        IsConductorThreeBlockHyperbolicCarlesonConstant ε C

/-! ## Expanded statement -/

/--
Definitional expansion of the public Carleson predicate. This theorem exposes
the interface; it does not inhabit the analytic estimate.
-/
@[surface_novel]
theorem conductorThreeBlockHyperbolicCarleson_iff :
    ConductorThreeBlockHyperbolicCarleson ↔
      ∀ ε : ℝ,
        0 < ε →
          ∃ C : ℝ,
            0 ≤ C ∧
              ∀ (N q : ℕ),
                2 ≤ N →
                ∀ B : TypeIIShellFactorBlock N q,
                  (∑ interval ∈ typeIIProductDyadicIntervals N q,
                      ‖bilinearMatrixPairing
                          (shellBlockLeftCoefficient B)
                          (typeIIShellIntervalMatrix B interval)
                          (shellBlockRightCoefficient B)‖ ^ 2) ≤
                    C *
                      Real.rpow (N : ℝ) (2 * ε) *
                      (∑ m : B.Left,
                        ‖shellBlockLeftCoefficient B m‖ ^ 2) *
                      (∑ k : B.Right,
                        ‖shellBlockRightCoefficient B k‖ ^ 2) := by
  rfl

end

end Surface.Core.ConductorThreeHyperbolicCarleson
