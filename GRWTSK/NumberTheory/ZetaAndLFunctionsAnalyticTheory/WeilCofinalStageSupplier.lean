/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

Source base: grwtsk/math@7251ef4ee3c85728c91152c61962c9766398d31c.
Canonical workflow source: grwtsk/noeaaeue@
9ea79b6f00df34677107adac1b4074770387a145.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCofinalFlexibleHead

/-!
# Alternative source suppliers for the cofinal zeta stages

The cofinal target consumes one exact proposition `StageLower j` at every natural
stage.  Existing sources legitimately reach that target in different ways:

* a specialized source calculation may prove `StageLower j` directly;
* the canonical head assembly may provide a source-paid finite certificate at
  `stageHighIndex j` and then return it to `StageLower j`.

These are alternatives, not joint premises.  `StageSupplier j` records the
actual branch used at stage `j`, preserving the common middle object
`StageLower j`.  It does not turn a codec, coverage weight, reversible diffuser,
finite passing prefix, or positive transport kernel into an arithmetic sign.

`RadiusTwoPaidMiddle` packages the existing mode-64 radius-two route without
hiding any premise: the accepted finite head, every middle residual row, the
complete remote allowance, and the physical shifted-core payment all remain
explicit.  The resulting supplier can occupy stage one while canonical
certificates occupy every other stage.

Primary argument.  Each supplier is eliminated only through its stated source
return.  Pointwise elimination yields all `StageLower` propositions, and the
existing cofinal theorem returns them to the unchanged literal odd zeta source.
The direct and canonical branches therefore share the exact target but not their
unproved inputs.

Hostile boundary.  A direct supplier at one or finitely many stages leaves every
other stage open; the canonical constructor still requires an actual
`HasStageHeadCertificate`.  The radius-two paid-middle package does not construct
its own payment, does not cover primitive nonprincipal character sectors, and
does not formalize the completed-zero bridge.  No RH or Dirichlet-GRH theorem is
asserted.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralCofinal.CofinalStageSupplier

open OddLiteralWindow
open OddResidualSourceComparison OddResidualMajorant OddSineForm
open OddRemoteAllowanceMatrix
open OddHighComplement (shiftedOddCoreEnergy)
open OddRootProjection OddShiftEnergy

/-- One source-valid alternative for the exact stage target.

The `direct` constructor carries the target itself.  The `canonical` constructor
carries the existing source-paid certificate proposition and no stronger claim. -/
inductive StageSupplier (j : ℕ) : Type
  | direct (h : StageLower j)
  | canonical (h : CofinalHeadAssembly.HasStageHeadCertificate j)

/-- Eliminate either legitimate supplier through its exact return theorem. -/
theorem stageLower_of_supplier {j : ℕ} (supplier : StageSupplier j) :
    StageLower j := by
  cases supplier with
  | direct h => exact h
  | canonical h => exact CofinalHeadAssembly.stageLower_of_hasCertificate h

/-- A supplier at every stage gives the entire cofinal lower family. -/
theorem all_stageLower_of_suppliers
    (suppliers : ∀ j : ℕ, StageSupplier j) :
    ∀ j : ℕ, StageLower j :=
  fun j => stageLower_of_supplier (suppliers j)

/-- Return a complete heterogeneous supplier family to the unchanged literal
odd zeta source.  The completed-zero/root bridge remains separate. -/
theorem unshifted_nonnegative_of_suppliers
    (suppliers : ∀ j : ℕ, StageSupplier j)
    {T : ℝ} {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hfm : Measurable f) (hfo : Function.Odd f)
    (hfs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (henergy :
      IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    0 ≤ shiftedOddWeilEnergy T 0 f :=
  nonnegative_of_stageLower (all_stageLower_of_suppliers suppliers)
    hf hfm hfo hfs henergy

/-- Build a heterogeneous family from a declared specialized-stage predicate.
The specialized and canonical routes are alternatives at each stage. -/
noncomputable def partitionedSuppliers
    (specialized : ℕ → Prop)
    (hspecialized : ∀ j, specialized j → StageLower j)
    (hcanonical : ∀ j, ¬ specialized j →
      CofinalHeadAssembly.HasStageHeadCertificate j) :
    ∀ j : ℕ, StageSupplier j := by
  classical
  intro j
  by_cases hj : specialized j
  · exact .direct (hspecialized j hj)
  · exact .canonical (hcanonical j hj)

/-- A partitioned family still discharges every stage separately; no finite
specialized prefix is promoted to a universal family. -/
theorem all_stageLower_of_partitioned_suppliers
    (specialized : ℕ → Prop)
    (hspecialized : ∀ j, specialized j → StageLower j)
    (hcanonical : ∀ j, ¬ specialized j →
      CofinalHeadAssembly.HasStageHeadCertificate j) :
    ∀ j : ℕ, StageLower j :=
  all_stageLower_of_suppliers
    (partitionedSuppliers specialized hspecialized hcanonical)

/-- Exact data required by the existing paid-middle construction of the
mode-64 radius-two high floor.  No field asserts the resulting high floor or
`StageLower 1`; those are derived by the existing source theorem. -/
structure RadiusTwoPaidMiddle where
  M : ℕ
  L : ℕ
  J : ℕ
  hM : 344064 ≤ M
  hL : M ≤ L
  hJ : L ≤ J
  s : ℝ
  hs : 0 < s
  trial : (Fin 344064 → ℝ) → ℕ → ℝ
  hmatch : ∀ u (i : Fin 344064), trial u (i.val + 1) = u i
  hpaid : ∀ u : Fin 344064 → ℝ, (∀ i, i.val < 64 → u i = 0) →
    ((∑ n ∈ Finset.range (L - 344064),
      (literalAugmentedRow M 2 (trial u) 0 (-3 / 10) (344065 + n)) ^ 2) +
      completeRemoteAllowance M L J 2 (trial u) 0 s) / (1 / 5) ≤
    shiftedOddCoreEnergy 2 (-3 / 10)
      (finiteSine 2 (fun i : Fin M => trial u (i.val + 1)))

/-- Return the explicit paid-middle data through the existing radius-two source
chain.  The accepted finite head remains a separate premise. -/
theorem RadiusTwoPaidMiddle.stageLower
    (middle : RadiusTwoPaidMiddle)
    (p : RadiusTwoCertificatePacket.Data)
    (ha : RadiusTwoCertificatePacket.Accepted p) :
    StageLower 1 :=
  RadiusTwoCertificatePacket.stageLower_one_of_paidMiddle
    p ha middle.hM middle.hL middle.hJ middle.s middle.hs
    middle.trial middle.hmatch middle.hpaid

/-- Use the direct radius-two high-floor route at stage one and canonical
source-paid certificates at every other stage. -/
noncomputable def radiusTwoHighFloorAndCanonicalRest
    (p : RadiusTwoCertificatePacket.Data)
    (ha : RadiusTwoCertificatePacket.Accepted p)
    (hfloor : HighFloor 2 (-1 / 2) (1 / 5) 64)
    (hrest : ∀ j : ℕ, j ≠ 1 →
      CofinalHeadAssembly.HasStageHeadCertificate j) :
    ∀ j : ℕ, StageSupplier j :=
  partitionedSuppliers (fun j => j = 1)
    (fun j hj => by
      subst j
      exact RadiusTwoCertificatePacket.stageLower_one p ha hfloor)
    (fun j hj => hrest j hj)

/-- The explicit radius-two high floor plus canonical rest supplies every
cofinal zeta stage. -/
theorem all_stageLower_of_radiusTwo_highFloor_and_canonical_rest
    (p : RadiusTwoCertificatePacket.Data)
    (ha : RadiusTwoCertificatePacket.Accepted p)
    (hfloor : HighFloor 2 (-1 / 2) (1 / 5) 64)
    (hrest : ∀ j : ℕ, j ≠ 1 →
      CofinalHeadAssembly.HasStageHeadCertificate j) :
    ∀ j : ℕ, StageLower j :=
  all_stageLower_of_suppliers
    (radiusTwoHighFloorAndCanonicalRest p ha hfloor hrest)

/-- Return the explicit radius-two high-floor supplier and canonical remainder
to the unchanged literal odd zeta source. -/
theorem unshifted_nonnegative_of_radiusTwo_highFloor_and_canonical_rest
    (p : RadiusTwoCertificatePacket.Data)
    (ha : RadiusTwoCertificatePacket.Accepted p)
    (hfloor : HighFloor 2 (-1 / 2) (1 / 5) 64)
    (hrest : ∀ j : ℕ, j ≠ 1 →
      CofinalHeadAssembly.HasStageHeadCertificate j)
    {T : ℝ} {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hfm : Measurable f) (hfo : Function.Odd f)
    (hfs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (henergy :
      IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    0 ≤ shiftedOddWeilEnergy T 0 f :=
  unshifted_nonnegative_of_suppliers
    (radiusTwoHighFloorAndCanonicalRest p ha hfloor hrest)
    hf hfm hfo hfs henergy

/-- Use the fully paid radius-two middle route at stage one and canonical
source-paid certificates at every other stage. -/
noncomputable def radiusTwoPaidMiddleAndCanonicalRest
    (p : RadiusTwoCertificatePacket.Data)
    (ha : RadiusTwoCertificatePacket.Accepted p)
    (middle : RadiusTwoPaidMiddle)
    (hrest : ∀ j : ℕ, j ≠ 1 →
      CofinalHeadAssembly.HasStageHeadCertificate j) :
    ∀ j : ℕ, StageSupplier j :=
  partitionedSuppliers (fun j => j = 1)
    (fun j hj => by
      subst j
      exact RadiusTwoPaidMiddle.stageLower middle p ha)
    (fun j hj => hrest j hj)

/-- The explicit paid-middle radius-two packet plus canonical rest supplies
every cofinal zeta stage. -/
theorem all_stageLower_of_radiusTwo_paidMiddle_and_canonical_rest
    (p : RadiusTwoCertificatePacket.Data)
    (ha : RadiusTwoCertificatePacket.Accepted p)
    (middle : RadiusTwoPaidMiddle)
    (hrest : ∀ j : ℕ, j ≠ 1 →
      CofinalHeadAssembly.HasStageHeadCertificate j) :
    ∀ j : ℕ, StageLower j :=
  all_stageLower_of_suppliers
    (radiusTwoPaidMiddleAndCanonicalRest p ha middle hrest)

/-- Return the paid-middle radius-two supplier and canonical remainder to the
unchanged literal odd zeta source. -/
theorem unshifted_nonnegative_of_radiusTwo_paidMiddle_and_canonical_rest
    (p : RadiusTwoCertificatePacket.Data)
    (ha : RadiusTwoCertificatePacket.Accepted p)
    (middle : RadiusTwoPaidMiddle)
    (hrest : ∀ j : ℕ, j ≠ 1 →
      CofinalHeadAssembly.HasStageHeadCertificate j)
    {T : ℝ} {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hfm : Measurable f) (hfo : Function.Odd f)
    (hfs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (henergy :
      IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    0 ≤ shiftedOddWeilEnergy T 0 f :=
  unshifted_nonnegative_of_suppliers
    (radiusTwoPaidMiddleAndCanonicalRest p ha middle hrest)
    hf hfm hfo hfs henergy

end GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralCofinal.CofinalStageSupplier
